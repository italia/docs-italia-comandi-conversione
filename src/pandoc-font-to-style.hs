{-# LANGUAGE PatternGuards, OverloadedStrings #-}
module Main where

import Text.Pandoc
import Text.Pandoc.JSON
import Text.Pandoc.Error (handleError)
import Text.Pandoc.Walk (walk, query)
import Text.Pandoc.Options (ReaderOptions(..))
import System.Environment (getArgs)
import Data.Text (Text(..), unlines, pack)
import qualified Data.Text.IO as T
import qualified Data.Map as M
import Data.Monoid ((<>))
import Control.Applicative ((<$>))
import Data.Maybe (maybeToList)
import Data.Either (fromRight)
import Options.Applicative
import Control.Monad (when, unless)

fontValue :: (String, [String], [(String, String)]) -> Maybe String
fontValue (id, classes, attrs) = M.lookup "font" $ M.fromList attrs

listFonts :: Pandoc -> [Text]
listFonts = summariseFonts . query extractSpanFonts
  where summariseFonts :: [Text] -> [Text]
        summariseFonts = map formatFont . M.toList . count
        count :: [Text] -> M.Map Text Int
        count = foldr (flip (M.insertWith (+)) 1) M.empty
        formatFont :: (Text, Int) -> Text
        formatFont (f, o) = "\"" <> f <> "\", " <> (pack $ show o) <> " occurrences"
        extractSpanFonts :: Inline -> [Text]
        extractSpanFonts (Span a _) = map pack <$> maybeToList $ fontValue a
        extractSpanFonts _          = []
  
toString :: [Inline] -> String
toString = query convertSpaces
  where convertSpaces (Str s) = s
        convertSpaces Space = " "
        convertSpaces SoftBreak = "\n"
        convertSpaces _ = ""

fontMatches :: Attr -> [String] -> Bool
fontMatches attrs fonts = case fontValue attrs of
  Just found -> found `elem` fonts
  Nothing    -> False

blocks :: [String] -> Block -> Block
blocks fonts (Para [Span a i])
  | fontMatches a fonts && notEmpty = CodeBlock a s
  where s = toString i
        notEmpty = s /= "" -- empty code blocks not admitted in RST
blocks _ b = b

inlines :: [String] -> Inline -> Inline
inlines fonts (Span a i)
 | fontMatches a fonts = Code a (toString i)
inlines _ i = i

interact' :: (Pandoc -> Text) -> IO ()
interact' f = T.getContents >>=
              handleError . readJSON def >>=
              T.putStr . f

list = interact' (Data.Text.unlines . listFonts)

asCode [] = pure ()
asCode fonts = interact' (writeJSON def . walkFonts)
  where walkFonts = walk (inlines fonts) . walk (blocks fonts)

data Options = Version | Options {
  listOption :: Bool,
  asCodeOption :: [String]
  }

docFontToStyle :: Options -> IO ()
docFontToStyle Version = putStrLn "comandi conversione 0.6"
docFontToStyle (Options userList userAsCode) = do
  when (userList) list
  unless (null userAsCode) (asCode userAsCode)

options :: Parser Options
options = flag' Version (long "version") <|>
          (Options
           <$> flag False True (long "list"
                                <> help "list fonts in the document"
                                <> showDefault)
           <*> many (strOption (long "as-code"
                                <> help "font to format as code"
                                <> metavar "\"FONT NAME\"")))

main = execParser (info options fullDesc) >>= docFontToStyle
