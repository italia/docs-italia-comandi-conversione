{-# LANGUAGE OverloadedStrings #-}

import Turtle hiding (splitDirectories, replaceExtensions, stdout, stderr)
import Data.List (intersperse)
import Data.Text (pack, unpack)
import System.FilePath.Posix
import System.Directory

parser :: Parser (Text)
parser = argText "doc" "document to convert"
        --   <*> optText "to" 't' "destination format"


offset = "../../../" :: String

filters = concat $ intersperse " " $ map addFilter files
  where files = [ "add-headers.hs"
                , "figure.hs" -- before divs are removed
                , "remove-divs.hs"
                , "remove-quotes.hs"
                ]

addFilter f = "--filter " <> offset <> "pandoc-filters/filters/" <> f

-- options to use every time we write an RST
writeOpts = "--wrap none " <> addFilter "loosen-lists.hs" <> " --standalone"

opts = writeOpts <> " --extract-media . " <> filters


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
inputName i = addExtension "input" (takeExtension i)

-- | move the input file to the destination folder
--
-- >>> inToCopy "somedir/otherdir/file.ext"
-- "output/otherdir/file/input.ext"
inToCopy i = joinPath [fileToFolder i, inputName i]

-- | convert the input file to the output file
--
-- >>> inToOut "newExt"
-- "document.newExt"
inToOut = addExtension "document"

version = "pandoc"
--version = offset <> "fork" -- in order to use a local fork

-- | translate applying most filters
makeDocument it = do
  shell (command doc) empty
  shell (command docNative) empty
  where command d = pack $ version <> " " <> (x inFile) <> " " <> opts <> " -o " <> d
        inFile = inputName i
        i = unpack it
        x f = "\"" <> f <> "\""

linker = offset <> "xmLeges-Linker-1.13a.exe"
doc = "document.rst" :: String
docNative = "document.native" :: String -- for troubleshooting
doc2 = "document-2.rst" :: String

linkNormattiva = do
  t <- doesFileExist linker
  when t (do
    shell (pack command) empty
    renameFile doc2 doc
    )
  where command = version <> " " <> doc <> " -t html | " <> linker <> " | pandoc -f html -o " <> doc2 <> " " <> writeOpts


makeSphinx = do
  shell (pack command) empty
  shell "test -e media && cp -r media index" empty -- for Sphinx
    where command = version <> " " <> doc <> " --wrap none -o index.rst " <> addFilter "to-sphinx.hs"

main = do
  (d) <- options "translate DOCX file" parser
  createDirectoryIfMissing True (fileToFolder (unpack d))
  copyFile (unpack d) (inToCopy (unpack d))
  withCurrentDirectory (fileToFolder (unpack d)) (do
      makeDocument d
      linkNormattiva
      makeSphinx
    )



