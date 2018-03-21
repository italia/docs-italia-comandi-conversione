#!/usr/bin/env stack
-- stack --resolver lts-10.3 script --package turtle --package text --package filepath --package directory
{-# LANGUAGE OverloadedStrings #-}

import Turtle hiding (splitDirectories, replaceExtensions, stdout, stderr, fork)
import Data.List (intersperse)
import Data.Text (pack, unpack)
import System.FilePath.Posix
import System.Directory (createDirectoryIfMissing, withCurrentDirectory, copyFile)

parser :: Parser (Text, Text)
parser = (,) <$> optText "to" 't' "destination format"
             <*> optText "input" 'i' "file to translate"

offset = "../../../"

filters = concat $ intersperse " " $ map addOpt files
  where files = [ "add-headers.hs"
                , "merge-code.hs"
                , "remove-divs.hs"
                , "remove-quotes.hs"
                , "flatten.hs"
                , "loosen-lists.hs"
                ]
        addOpt f = "--filter " <> unpack offset <> "pandoc-filters/filters/" <> f

opts = pack $ " --wrap none --extract-media media " <> filters


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

fork = offset <> "fork"

-- | build the pandoc command
makeCommand :: Text -> Text -> Text
makeCommand it ft = fork <> " " <> (x inFile) <> " " <> opts <> " -o " <> (x outFile)
  where outFile = pack $ inToOut f
        inFile = pack $ inputName i
        i = unpack it
        f = unpack ft
        x f = "\"" <> f <> "\""

main = do
  (f, i) <- options "translate DOCX file" parser
  createDirectoryIfMissing True (fileToFolder (unpack i))
  copyFile (unpack i) (inToCopy (unpack i))
  withCurrentDirectory (fileToFolder (unpack i)) (
      shell (makeCommand i f) empty
    )



