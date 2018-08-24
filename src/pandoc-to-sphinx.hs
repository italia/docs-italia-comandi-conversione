{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
module Main where

import Text.Pandoc
import Text.Pandoc.JSON
import Text.Pandoc.Options
import Text.Pandoc.Walk (query, walk)
import Text.Pandoc.Class (runIOorExplode)
import qualified Data.Text.IO as T
import Data.Text(Text(..))
import Data.Monoid ((<>))
import Options.Applicative
import Control.Monad (sequence_, join, void)
import Data.Either (fromRight)
import Data.List (intercalate, isPrefixOf)
import System.Directory (createDirectory,
                         removeDirectoryRecursive,
                         doesFileExist,
                         doesPathExist)
import Control.Applicative ((<$>))
import Control.Monad (when)
import System.FilePath.Posix (dropExtension, addExtension)
import Turtle (shell)
import System.Exit
import Data.Maybe (isNothing)
import Data.String.Here hiding (template)

data Options = Version | Options {
  wrapNoneOption :: Bool,
  levelOption :: Maybe Int,
  secondLevelOption :: Maybe Int
  }

options :: Parser Options
options = flag' Version (long "version") <|>
          (Options <$> flag False True (long "wrap-none")
                   <*> optional (option auto (long "level"))
                   <*> optional (option auto (long "second-level")))

main = do
    opts <- execParser (info options fullDesc)
    case opts of
      Version -> do
        putStrLn "comandi conversione 0.6"
        exitSuccess
      (Options wrapNone maybeLevel1 maybeLevel2) -> do
        checkLevels maybeLevel1 maybeLevel2
        T.getContents >>= splitWrite wrapNone maybeLevel1 maybeLevel2 . parseDoc
        shell "test -e media && cp -r media index" empty
  where checkLevels (Just l1) (Just l2) =
          when (l1 >= l2) (die "the second level is not higher than the first")
        checkLevels _ _ = pure ()
        parseDoc = fromRight (Pandoc nullMeta []) . readJSON def

data ToWrite = ToWrite { fileNameToWrite :: String, blocksToWrite :: [Block] }

splitWrite :: Bool -> Maybe Int -> Maybe Int -> Pandoc -> IO [()]
splitWrite wrapNone l1 l2 (Pandoc meta blocks)= do
  (root:firstSplit) <- split False l1 (ToWrite "index.rst" blocks)
  writeRoot root
  if isNothing l2
    then (mapM (writeBlocks opts) firstSplit)
    else (do
         secondSplit <- mapM (split True l2) firstSplit
         mapM createEmpty (map (dropExtension . fileNameToWrite) firstSplit)
         mapM (writeBlocks opts) (join secondSplit))
  where writeRoot (ToWrite _ []) = pure ()
        writeRoot (ToWrite path blocks) = writeDoc opts path (Pandoc meta blocks)
        opts = if wrapNone
               then def { writerWrapText = WrapNone,
                          writerTemplate = Just template }
               else def { writerTemplate = Just template }

split :: Bool -> Maybe Int -> ToWrite -> IO [ToWrite]
split nested maybeLevel (ToWrite parent blocks) = do
  paths <- sequence (map (sectionPath prefix) sections)
  pure (ToWrite parent (makeToc paths intro):(zipWith ToWrite paths sections))
    where (intro, sectionsToUpdate) = breakSections level blocks
          level = defaultMaybe (autoLevel blocks) maybeLevel
          makeToc :: [String] -> [Block] -> [Block]
          makeToc paths intro = intro <> [tocTree 3 paths]
          prefix = if nested then (dropExtension parent) <> "/" else ""
          sectionPath :: String -> [Block] -> IO String
          sectionPath p [] = pure (p <> "empty-section")
          sectionPath p s = availablePath $ (p <> getPath s)
          sections = if nested
                     then map (walk updateImage) sectionsToUpdate
                     else sectionsToUpdate
          updateImage :: Inline -> Inline
          updateImage (Image a i (target, title)) =
            Image a i ("../" <> target, title)
          updateImage i = i

createEmpty dir = do
  exists <- doesPathExist dir
  when exists (removeDirectoryRecursive dir)
  createDirectory dir

writeBlocks :: WriterOptions -> ToWrite -> IO ()
writeBlocks opts (ToWrite _ []) = pure ()
writeBlocks opts (ToWrite path blocks) = writeDoc opts path (Pandoc nullMeta blocks)

writeDoc :: WriterOptions -> FilePath -> Pandoc -> IO ()
writeDoc opts path doc = do
  text <- runIOorExplode $ writeRST opts doc
  T.writeFile path text

availablePath :: String -> IO String
availablePath path = do
  (available, c) <- untilM isAvailable increment (path, 1)
  pure $ render (available, c)
  where render (p, 1) = p
        render o = withNumber o
        withNumber (p, c) = addExtension (dropExtension p <> "-" <> show c) ".rst"
        isAvailable x = not <$> (doesFileExist $ render x)
        increment (p, c) = (p, c+1)

-- | like `until` but for monadic functions
-- >>> let p a = Just (a > 3)
-- >>> untilM p (+1) 0
-- Just 4
untilM :: Monad m => (a -> m Bool) -> (a -> a) -> a -> m a
untilM p f i = do
  r <- p i
  if r then pure i else untilM p f (f i)

-- everything before the first header is the intro
breakSections :: Int -> [Block] -> ([Block], [[Block]])
breakSections level blocks = breakIntro (isStart level) blocks
  where -- if there is a RawBlock before an header, it's an anchor
        -- that has been added in order for references to point to it,
        -- so we want to break the section before the anchor
        isStart lev (h:[]) = if isHeading lev h then [h] else []
        isStart lev (b:h:l) = if isRaw b && isHeading lev h then [b,h] else []
        isRaw (Para [RawInline _ _]) = True
        isRaw _ = False

headDefault :: a -> [a] -> a
headDefault d = defaultMaybe d . maybeHead

defaultMaybe :: a -> Maybe a -> a
defaultMaybe d Nothing = d
defaultMaybe _ (Just s) = s

maybeHead :: [a] -> Maybe a
maybeHead l
  | null l = Nothing
  | otherwise = Just (head l)

-- | if we have only one header 2 break by header 3 and so on
autoLevel :: [Block] -> Int
autoLevel body = headDefault 1 $ filter hasSeveral [1, 2, 3, 4, 5]
  where hasSeveral l = (length $ query (collectHeading l) body) > 1
        collectHeading l i = if isHeading l i then [i] else []

-- | see breakSections to get the purpose
-- >>> breakIntro testRHOrH "brh h rhb brhb"
-- ("b",["rh ","h ","rhb b","rhb"])
-- >>> breakIntro (const []) "bbrhb bla bla"
-- ("bbrhb bla bla",[])
breakIntro :: Eq a => ([a] -> [a]) -> [a] -> ([a], [[a]])
breakIntro c l
  | null (c h) = (h, t)
  | otherwise  = ([], multiBroken)
  where multiBroken = multiPrefixBreak c [] l
        h = head multiBroken
        t = tail multiBroken

-- | Multiple version of prefixBreak
-- >>> multiPrefixBreak testRHOrH "" "brhbbb"
-- ["b","rhbbb"]
-- >>> multiPrefixBreak testRHOrH "" "brhbbhb"
-- ["b","rhbb","hb"]
-- >>> multiPrefixBreak testRHOrH "" "rh h rhb brhb"
-- ["rh ","h ","rhb b","rhb"]
-- >>> multiPrefixBreak testRHOrH "" "brh h rhb brhb"
-- ["b","rh ","h ","rhb b","rhb"]
multiPrefixBreak :: Eq a => ([a] -> [a]) -> [a] -> [a] -> [[a]]
multiPrefixBreak c p [] = []
multiPrefixBreak c p l@(h:t)
  | null (c l) = prep (p <> [h] <> t1) (multiPrefixBreak c tm t2)
  | otherwise  = prep (p <> l1) (multiPrefixBreak c lm l2)
   where (l1, lm, l2) = prefixBreak c l
         (t1, tm, t2) = prefixBreak c t
         -- prepend only if l1 is not empty
         prep l1 l2 | null l1   = l2
                    | otherwise = l1 : l2

-- | break a list when a predicate would be true on the second section,
-- similar to `break` from the prelude
-- >>> prefixBreak testRHOrH "brhb bla bla"
-- ("b","rh","b bla bla")
prefixBreak :: Eq a => ([a] -> [a]) -> [a] -> ([a], [a], [a])
prefixBreak _ [] = ([], [], [])
prefixBreak c l@(h:t)
  | null match = (h:b1, b2, b3)
  | otherwise  = ([], match, stripList match l)
  where match = c l
        (b1, b2, b3) = prefixBreak c t

-- replicate the logic for breaking on a raw block and an header, in a
-- way that's simpler and more understandable for the doctests. we
-- want to move testing logic to a test module eventually
testRHOrH :: [Char] -> [Char]
testRHOrH ('r':'h':l) = "rh"
testRHOrH ('h':l) = "h"
testRHOrH _ = []

-- | strip a prefix from a list
-- >>> stripList "he" "heya"
-- "ya"
stripList :: Eq a => [a] -> [a] -> [a]
stripList [] l = l
stripList _ [] = []
stripList (h1:t1) (h2:t2)
  | h1 == h2 = stripList t1 t2
  | otherwise = t2

{-

.. toctree::
   :maxdepth: 2
   :caption: Indice dei contenuti

   che-cos-e-docs-italia.rst
   starter-kit.rst

-}
tocTree :: Int -> [String] -> Block
tocTree _ [] = Null
tocTree depth paths = RawBlock "rst" $
           ".. toctree::" <>
           "\n   :maxdepth: " <> show depth <>
           "\n   :caption: Indice dei contenuti" <>
           "\n"  <>
           concatMap (\x -> "\n   "<>x) paths

-- | get the path corresponding to some heading. use the identifier
-- if available, otherwise build a slug from the content
--
-- >>> getPath [Header 2 ("", [], []) [Str "section", Space, Str "accénted"], Null]
-- "section-acc\233nted.rst"
getPath :: [Block] -> String
getPath ((Header _ ("", _, _) i):_) = adapt (inlinesToText i) <> ".rst"
  where adapt = map replace . limit -- adapt for the file system
        limit = take 50 -- file names cannot be too long
        replace '/' = '-'
        replace o = o
getPath (Header _ (iden, _, _)  _:_) = iden <> ".rst"
getPath (Para [RawInline _ _]:r) = getPath r

isHeading :: Int -> Block -> Bool
isHeading a (Header b _ i) = a == b && (inlinesToText i /= "")
isHeading _ _ = False

-- | convert inlines to text. headers could contain any kind of
-- inlines, some of which cannot be converted to text for a file
-- name. we keep the text and drop the rest, removing also some inline
-- containers. other inline containers will be simply dropped.
--
-- >>> inlinesToText [Str "section", Space, Str "accénted"]
-- "section-acc\233nted"
-- >>> inlinesToText [Str "line", LineBreak, Str "break"]
-- "line-break"
-- >>> inlinesToText [Str "inline", Emph [Str "styled", Str "why?"]]
-- "inline-styled-why?"
-- >>> inlinesToText [Str "other", Note [], Str "inline"]
-- "other-inline"
inlinesToText :: [Inline] -> String
inlinesToText = intercalate "-" . concatMap inlineToText
  where inlineToText (Str s) = [s]
        inlineToText (Math _ s) = [s]
        inlineToText (Code _ s) = [s]
        inlineToText (Emph i) = c i
        inlineToText (Strong i) = c i
        inlineToText (Link _ i _) = c i
        inlineToText (Quoted _ i) = c i
        inlineToText (Cite _ i) = c i
        inlineToText (Image _ i _) = c i
        inlineToText (Span _ i) = c i
        inlineToText _ = []
        c = concatMap inlineToText

-- the template has been added in order to show the subtitle, see
-- https://github.com/jgm/pandoc/issues/4583 and
-- https://github.com/italia/docs-italia-comandi-conversione/issues/71
template = [here|
$if(title)$
$title$

$endif$
$if(subtitle)$
.. highlights ::

  $subtitle$

$endif$
$for(author)$
:Author: $author$
$endfor$
$if(date)$
:Date:   $date$
$endif$
$if(author)$

$else$
$if(date)$

$endif$
$endif$
$if(rawtex)$
.. role:: raw-latex(raw)
   :format: latex
..

$endif$
$for(include-before)$
$include-before$

$endfor$
$if(toc)$
.. contents::
   :depth: $toc-depth$
..

$endif$
$if(number-sections)$
.. section-numbering::

$endif$
$for(header-includes)$
$header-includes$

$endfor$
$body$
$for(include-after)$

$include-after$
$endfor$
|]
