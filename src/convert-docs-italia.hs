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

parser :: Parser (Text)
parser = argText "doc" "document to convert"
        --   <*> optText "to" 't' "destination format"


offset = "../../../"

filters = intercalate " " $ map addFilter files
  where files = [ "add-headers.hs"
                , "figure.hs" -- before divs are removed
                , "remove-divs.hs"
                , "remove-quotes.hs"
                ] :: [Text]

addFilter :: Text -> Text
addFilter f = "--filter " <> offset <> "pandoc-filters/filters/" <> f

-- options to use every time we write an RST
writeOpts :: Text
writeOpts = "--wrap none " <> addFilter "loosen-lists.hs" <> " --standalone"

opts :: Text
opts = writeOpts <> " --extract-media . " <> filters <> "  -f docx+styles"

-- | convert the input file to the output folder
--
-- >>> fileToFolder "somedir/otherdir/file.ext"
-- "output/otherdir/file"
fileToFolder i = joinPath ["output", firstParent i, takeBaseName i]
  where firstParent = head . drop 1 . reverse . splitDirectories
-- | move the input file to the destination folder
--
-- >>> inputName "somedir/otherdir/file.ext"
-- "input.ext"
inputName :: FilePath -> FilePath
inputName i = addExtension "input" (takeExtension i)
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
--version = offset <> "fork" -- in order to use a local fork
linker = unpack offset <> "xmLeges-Linker-1.13a.exe"
doc = "document.rst" :: FilePath
-- the following are for troubleshooting
docNative = "document.native" :: FilePath
docUnlinked = "document-unlinked.rst" :: FilePath

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
makeSphinx = version <> " " <> pack doc <> " --wrap none -o index.rst " <> addFilter "to-sphinx.hs"
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
    mys toNative
    t <- doesFileExist linker
    when t (do
      renameFile doc docUnlinked
      void $ mys linkNormattiva
      )
    mys makeSphinx
    mys "test -e media && cp -r media index" -- for Sphinx
    )
  where mys c = shell c empty -- for readability


