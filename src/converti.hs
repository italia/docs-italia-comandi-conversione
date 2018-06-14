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

-- for openXML parsing
parseOpenXMLFilters = [ "filtro-didascalia",
                        "filtro-rimuovi-div", -- per `-f docx+styles`
                        "filtro-quotes" ] :: [Text]
-- for rST writing
writeRSTFilters = ["filtro-stile-liste" ] :: [Text]
allFilters = parseOpenXMLFilters <> writeRSTFilters

makeOpts opts filters = intercalate " " (opts <> map addFilter filters)

addFilter :: Text -> Text
addFilter f = "--filter " <> f

writeOpts :: Text
writeOpts = makeOpts ["--wrap none", "--standalone"] writeRSTFilters

parseOpts :: Text
parseOpts = makeOpts ["--extract-media .", "-f docx+styles"] parseOpenXMLFilters

-- | convert the input file to the output folder
--
-- >>> fileToFolder "somedir/otherdir/file.ext"
-- "risultato-conversione/otherdir/file"
-- >>> fileToFolder "file.ext"
-- "risultato-conversione/file"
fileToFolder i = case maybeParent of
  Nothing -> joinPath [res, baseName]
  Just parent -> joinPath [res, parent, baseName]
  where res = "risultato-conversione"
        baseName = takeBaseName i
        maybeParent = maybeHead $ drop 1 $ reverse $ splitDirectories i

-- | move the input file to the destination folder
--
-- >>> inputName "somedir/otherdir/file.ext"
-- "originale.ext"
inputName :: FilePath -> FilePath
inputName i = addExtension "originale" (takeExtension i)
-- | move the input file to the destination folder
--
-- >>> inToCopy "somedir/otherdir/file.ext"
-- "risultato-conversione/otherdir/file/originale.ext"
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
convert :: String -> Text -> Text
convert i d = version <> " " <> inputName' i <> " " <> parseOpts <> " " <> writeOpts <> " -o " <> d
  where inputName' = pack . inputName
toRST i = convert i (pack doc :: Text)
toNative i = convert i (pack docNative :: Text)
makeSphinx = "pandoc-to-sphinx " <> pack doc
linkNormattiva = version <> " " <> pack docUnlinked <> " -t html | " <> pack linker <> " | pandoc -f html -o " <> pack doc <> " " <> writeOpts

main = do
  (docArg) <- options "translate DOCX file" parser
  convertDocsItalia (unpack docArg)

checkExecutables = do
  maybeExecutables <- sequence $ map findExecutable allFilters'
  maybeNotify (dropWhile isJust maybeExecutables)
    where allFilters' = map unpack allFilters

maybeNotify []       = pure ()
maybeNotify missing  = print (errore $ head missing)
  where errore c = "`converti` si basa sui filtri di Docs Italia che non sono disponibili sul tuo sistema. Puoi installarli seguendo le istruzioni che trovi su https://github.com/italia/docs-italia-pandoc-filters"
  -- where errore c = "`converti` si basa sul comando " <> c <> " che non è disponibile sul tuo sistema. Puoi installarlo seguendo le istruzioni che trovi su https://github.com/italia/docs-italia-pandoc-filters"

-- this function is a good high-level description of the logic
convertDocsItalia :: System.FilePath.Posix.FilePath -> IO ()
convertDocsItalia i = do
  checkExecutables
  createDirectoryIfMissing True (fileToFolder i)
  copyFile i (inToCopy i)
  void $ withCurrentDirectory (fileToFolder i) (do
    mys (toRST i)
    --mys toNative
    maybeLinker <- findExecutable linker
    when (isJust maybeLinker) (do
      renameFile doc docUnlinked
      void $ mys linkNormattiva
      )
    mys makeSphinx
    )
  where mys c = shell c empty -- for readability


