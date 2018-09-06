{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
module Main where

import Text.Pandoc
import Text.Pandoc.JSON()
import Text.Pandoc.Options()
import Text.Pandoc.Pretty()
import Data.Text()
import Data.String (IsString(..))
import Text.Pandoc.Walk (query, walk)
import Text.Pandoc.Class (runIOorExplode)
import Text.Pandoc.Shared (stringify)
import qualified Data.Text.IO as T
import Data.Monoid ((<>))
import Options.Applicative
import Control.Monad (join)
import Data.Either (fromRight)
import Data.List (intercalate)
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
import Data.String.Here hiding (template, i)

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

-- the core logic goes through @splitWrite@ -> @split@ -> etcetera
main :: IO ExitCode
main = do
    opts <- execParser (info options fullDesc)
    case opts of
      Version -> do
        putStrLn "comandi conversione 0.6"
        exitSuccess
      (Options wrapNone maybeLevel1 maybeLevel2) -> do
        checkLevels maybeLevel1 maybeLevel2
        T.getContents >>= splitWrite wrapNone maybeLevel1 maybeLevel2 . parseDoc
  where checkLevels (Just l1) (Just l2) =
          when (l1 >= l2) (die "the second level is not higher than the first")
        checkLevels _ _ = pure ()
        parseDoc = fromRight (Pandoc nullMeta []) . readJSON def

data ToWrite = ToWrite { fileNameToWrite :: String, blocksToWrite :: [Block] }

-- split the sections and write the different parts. This contains the
-- custom logic for writing the different parts of a multi-level
-- document, while the common logic related to splitting a file into
-- sections is provided by @split@
splitWrite :: Bool -> Maybe Int -> Maybe Int -> Pandoc -> IO [()]
splitWrite wrapNone l1 l2 (Pandoc meta blocks)= do
  (root:firstSplit) <- split False l1 (ToWrite "index.rst" blocks)
  -- `index.rst` is written regardless of what happens next. its table
  -- of contents points at the first split files which can contain
  -- other tables of contents or not
  writeRoot root
  if isNothing l2
    then (mapM (writeBlocks opts) firstSplit)
    else (do
         secondSplit <- mapM (split True l2) firstSplit
         -- create an empty folder for every section formerly split,
         -- in order to host the future files
         mapM createEmpty (map (dropExtension . fileNameToWrite) firstSplit)
         mapM (writeBlocks opts) (join secondSplit))
  where writeRoot (ToWrite _ []) = pure ()
        writeRoot (ToWrite path blocks') =
          writeDoc opts path (Pandoc meta (title:subtitle:blocks'))
        title = titleBlock meta
        subtitle = subtitleBlock meta
        opts = if wrapNone
               then def { writerWrapText = WrapNone,
                          writerTemplate = Just template }
               else def { writerTemplate = Just template }

-- @split@ takes a list of potentially writable contents grouped by
-- file name and turns it into another list, where some contents get
-- replaced by files with a table of contents that point to other
-- files. The main logic for splitting is given by @breakSections@
split :: Bool -> Maybe Int -> ToWrite -> IO [ToWrite]
split second maybeLevel (ToWrite parent blocks) = do
  paths <- sequence (map (sectionPath prefix) sections)
  pure (ToWrite parent (makeToc paths intro):(zipWith ToWrite paths sections))
    where (intro, sectionsToUpdate) = breakSections level blocks
          level = defaultMaybe (autoLevel blocks) maybeLevel
          makeToc :: [String] -> [Block] -> [Block]
          makeToc paths intro' = intro' <> [tocTree second 3 paths]
          prefix = if second then (dropExtension parent) <> "/" else ""
          sectionPath :: String -> [Block] -> IO String
          sectionPath p [] = pure (p <> "empty-section")
          sectionPath p s = availablePath $ (p <> getPath s)
          sections = if second
                     then map (walk updateImage) sectionsToUpdate
                     else sectionsToUpdate
          updateImage :: Inline -> Inline
          updateImage (Image att ima (target, title)) =
            Image att ima ("../" <> target, title)
          updateImage inl = inl

-- given an header level and a collection of blocks return the blocks
-- before the first header and the other blocks grouped by the header
-- they follow. This is based upon @breakIntro@ which can be tested
-- with simpler data structures
breakSections :: Int -> [Block] -> ([Block], [[Block]])
breakSections level blocks = breakIntro isStart blocks
  where -- if there is a RawBlock before an header, it's an anchor
        -- that has been added in order for references to point to it,
        -- so we want to break the section before the anchor
        isStart = testStart isRaw (isHeading level)
        isRaw (Para [RawInline _ _]) = True
        isRaw _ = False

createEmpty :: FilePath -> IO ()
createEmpty dir = do
  exists <- doesPathExist dir
  when exists (removeDirectoryRecursive dir)
  createDirectory dir

writeBlocks :: WriterOptions -> ToWrite -> IO ()
writeBlocks _ (ToWrite _ []) = pure ()
writeBlocks opts (ToWrite path blocks) = writeDoc opts path (Pandoc nullMeta blocks)

writeDoc :: WriterOptions -> FilePath -> Pandoc -> IO ()
writeDoc opts path doc = do
  contents <- runIOorExplode $ writeRST opts doc
  T.writeFile path contents

availablePath :: String -> IO String
availablePath path = do
  (available, c) <- untilM isAvailable increment (path, 1)
  pure $ fileName (available, c)
  where fileName (p, 1) = p
        fileName o = withNumber o
        withNumber (p, c) = addExtension (dropExtension p <> "-" <> show c) ".rst"
        isAvailable :: (String, Int) -> IO Bool
        isAvailable x = not <$> (doesFileExist $ fileName x)
        increment (p, c) = (p, c+1)

-- | like `until` but for monadic functions
-- >>> let p a = Just (a > 3)
-- >>> untilM p (+1) 0
-- Just 4
untilM :: Monad m => (a -> m Bool) -> (a -> a) -> a -> m a
untilM p f i = do
  r <- p i
  if r then pure i else untilM p f (f i)

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

-- | testable logic core for breakSections
-- >>> breakIntro testDemo "brh h rhb brhb"
-- ("b",["rh ","h ","rhb b","rhb"])
-- >>> breakIntro (const []) "bbrhb bla bla"
-- ("bbrhb bla bla",[])
-- >>> breakIntro testDemo "bh h hb bhb"
-- ("b",["h ","h ","hb b","hb"])
breakIntro :: Eq a => ([a] -> [a]) -> [a] -> ([a], [[a]])
breakIntro c l
  | null (c h) = (h, t)
  | otherwise  = ([], multiBroken)
  where multiBroken = multiPrefixBreak c [] l
        h = head multiBroken
        t = tail multiBroken

-- | Multiple version of prefixBreak
-- >>> multiPrefixBreak testDemo "" "brhbbb"
-- ["b","rhbbb"]
-- >>> multiPrefixBreak testDemo "" "brhbbhb"
-- ["b","rhbb","hb"]
-- >>> multiPrefixBreak testDemo "" "rh h rhb brhb"
-- ["rh ","h ","rhb b","rhb"]
-- >>> multiPrefixBreak testDemo "" "brh h rhb brhb"
-- ["b","rh ","h ","rhb b","rhb"]
multiPrefixBreak :: Eq a => ([a] -> [a]) -> [a] -> [a] -> [[a]]
multiPrefixBreak _ _ [] = []
multiPrefixBreak c p l@(h:t)
  | null (c l) = prep (p <> [h] <> t1) (multiPrefixBreak c tm t2)
  | otherwise  = prep (p <> l1) (multiPrefixBreak c lm l2)
   where (l1, lm, l2) = prefixBreak c l
         (t1, tm, t2) = prefixBreak c t
         -- prepend only if j1 is not empty
         prep :: [a] -> [[a]] -> [[a]]
         prep j1 j2 | null j1   = j2
                    | otherwise = j1 : j2

-- | break a list when a predicate would be true on the second section,
-- similar to `break` from the prelude
-- >>> prefixBreak testDemo "brhb bla bla"
-- ("b","rh","b bla bla")
prefixBreak :: Eq a => ([a] -> [a]) -> [a] -> ([a], [a], [a])
prefixBreak _ [] = ([], [], [])
prefixBreak c l@(h:t)
  | null match = (h:b1, b2, b3)
  | otherwise  = ([], match, stripList match l)
  where match = c l
        (b1, b2, b3) = prefixBreak c t

-- abstract way to test for a starting raw and header blocks in a
-- sequence. here we identify and return elements starting a
-- sequence. if no starter elements are identified, an empty list is
-- returned
testStart :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
testStart _     _     []        = []
testStart testR testH (b1:rest) = case rest of
  (b2:_) -> if testH b1
            then [b1]
            else if (testR b1 && testH b2)
                 then [b1, b2]
                 else []
  _      -> if testH b1 then [b1] else []

-- replicate the logic for breaking on a raw block and an header, in a
-- way that's simpler and more understandable for the doctests. we
-- want to move testing logic to a test module eventually
-- >>> testDemo "arhbc"
-- ""
-- >>> testDemo "rhbc"
-- "rh"
-- >>> testDemo "hbc"
-- "h"
testDemo = testStart (=='r') (=='h')

-- | strip a prefix from a list
-- >>> stripList "he" "heya"
-- "ya"
stripList :: Eq a => [a] -> [a] -> [a]
stripList [] l = l
stripList _ [] = []
stripList (h1:t1) (h2:t2)
  | h1 == h2 = stripList t1 t2
  | otherwise = t2

tocTree :: Bool -> Int -> [String] -> Block
tocTree _ _ [] = Null
tocTree second depth paths = rawDirective "toctree" (depthOpt:topOpts) paths
  where depthOpt = ("maxdepth", show depth)
        topOpts = if second
                  then []
                  else [("caption", "Indice dei contenuti"),
                        ("numbered", "")]

titleBlock :: Meta -> Block
titleBlock m =
  if l > 0
     then RawBlock "rst" $
          border </>
          titleText </>
          border </>
          ""
     else Null
   where titleText = stringify $ docTitle m
         l = length titleText
         border = replicate l '='

subtitleBlock :: Meta -> Block
subtitleBlock m = rawDirective "highlights" [] [stringify inlines]
  where inlines = case lookupMeta "subtitle" m of
          Just (MetaBlocks [Plain xs])  -> xs
          Just (MetaInlines xs)         -> xs
          _                             -> []

{-

.. type:: (argument currently omitted)
   :option-name-1: option-body-1
   :option-name-2: option-body-2

   content content content
   content content

http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#directives

-}
rawDirective :: String -> [(String, String)] -> [String] -> Block
rawDirective "" [] [] = Null
rawDirective type_ dirOptions content = RawBlock "rst" $
           ".. " <> type_ <> "::" </>
           mapCat renderOption dirOptions </>
           "" </>
           mapCat indent content </>
           ""
  where mapCat f = intercalate "\n" . map f -- map and concatenate the results
        indent s = "   " <> s
        renderOption (name,body) = indent (":" <> name <> ": " <> body)

(</>) :: (Semigroup a, Data.String.IsString a) => a -> a -> a
(</>) a b = a <> "\n" <> b

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
getPath _ = "unknown-section-start-structure.rst"

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
template :: String
template = [here|
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
