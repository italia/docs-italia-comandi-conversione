{-# LANGUAGE OverloadedStrings #-}

import Turtle hiding (splitDirectories,
                      replaceExtensions,
                      stdout,
                      stderr,
                      FilePath(..)
                     )
import Data.Text (pack, unpack, intercalate)
import System.FilePath.Posix
import System.Directory
import Data.Maybe (isJust)

maybeHead [] = Nothing
maybeHead l = Just (head l)

-- default
def d Nothing = d
def d (Just something) = something

headDefault d = def d . maybeHead

parser :: Parser (Text)
parser = argText "doc" "document to convert"
        --   <*> optText "to" 't' "destination format"

filters = intercalate " " $ map addFilter files
  where files = [ "filtro-didascalia",
                  "filtro-quotes" ] :: [Text]

addFilter :: Text -> Text
addFilter f = "--filter " <> f

-- options to use every time we write an RST
writeOpts :: Text
writeOpts = "--wrap none " <> addFilter "filtro-stile-liste" <> " --standalone"

opts :: Text
opts = writeOpts <> " --extract-media . " <> filters <> "  -f docx+styles"

-- | convert the input file to the output folder
--
-- >>> fileToFolder "somedir/otherdir/file.ext"
-- "risultato-conversione/otherdir/file"
-- >>> fileToFolder "file.ext"
-- "risultato-conversione/file"
fileToFolder i = joinPath ["risultato-conversione", parent, basename]
  where basename = takeBaseName i
        parent = headDefault "loose" $ drop 1 $ reverse $ splitDirectories i

-- | move the input file to the destination folder
--
-- >>> inputName "somedir/otherdir/file.ext"
-- "originale.ext"
inputName :: FilePath -> FilePath
inputName i = addExtension "originale" (takeExtension i)
-- | move the input file to the destination folder
--
-- >>> inToCopy "somedir/otherdir/file.ext"
-- "output/otherdir/file/input.ext"
inToCopy :: FilePath -> FilePath
inToCopy i = joinPath [fileToFolder i, inputName i]
-- | convert the input file to the output file
--
-- >>> inToOut "newExt"
-- "document.newExt"
inToOut :: FilePath -> FilePath
inToOut = addExtension "document"

-- paths
--
linker = "xmLeges-Linker-1.13a.exe"
doc = "documento.rst" :: FilePath
-- the following are for troubleshooting
docNative = "document.native" :: FilePath
docUnlinked = "documento-senza-collegamenti.rst" :: FilePath

-- commands
--
version = "pandoc" -- change to switch the executable name everywhere
-- the following fun could become second order if needed
inputNameText :: Text -> Text
inputNameText = pack . inputName . unpack
-- | translate applying most filters. we try to work in Text
makeDocument :: Text -> Text
makeDocument d = version <> " input.docx " <> opts <> " -o " <> d
toRST = makeDocument $ pack doc :: Text
toNative = makeDocument $ pack docNative :: Text
makeSphinx = "pandoc-to-sphinx " <> pack doc
linkNormattiva = version <> " " <> pack docUnlinked <> " -t html | " <> pack linker <> " | pandoc -f html -o " <> pack doc <> " " <> writeOpts

main = do
  (docArg) <- options "translate DOCX file" parser
  convertDocsItalia (unpack docArg)

-- this function is a good high-lever description of the logic
convertDocsItalia :: System.FilePath.Posix.FilePath -> IO ()
convertDocsItalia d = do
  createDirectoryIfMissing True (fileToFolder d)
  copyFile d (inToCopy d)
  void $ withCurrentDirectory (fileToFolder d) (do
    mys toRST
    --mys toNative
    maybeLinker <- findExecutable linker
    when (isJust maybeLinker) (do
      renameFile doc docUnlinked
      void $ mys linkNormattiva
      )
    mys makeSphinx
    )
  where mys c = shell c empty -- for readability


