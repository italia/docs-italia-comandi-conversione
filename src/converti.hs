{-# LANGUAGE OverloadedStrings #-}

import Turtle hiding (splitDirectories,
                      replaceExtensions,
                      stdout,
                      stderr,
                      FilePath(..),
                      options,
                      option,
                      switch,
                      die
                     )
import Data.Text (pack, unpack, intercalate)
import System.FilePath.Posix
import System.Directory
import Data.Maybe (isJust)
import Options.Applicative
import Data.Aeson hiding (Options)
import System.Exit

import qualified Data.ByteString.Lazy as B

data UserOptions = UserOptions {
  documentoCommandOption :: Maybe String,
  collegamentoNormativaCommandOption :: Maybe Bool,
  celleComplesseCommandOption :: Maybe Bool,
  preservaCitazioniCommandOption :: Maybe Bool,
  dividiSezioniCommandOption :: Maybe Bool
  }

instance FromJSON UserOptions where
  parseJSON = withObject "UserOptions" $ \ v -> UserOptions
    <$> v .:? "documento"
    <*> v .:? "collegamento-normativa"
    <*> v .:? "celle-complesse"
    <*> v .:? "preserva-citazioni"
    <*> v .:? "dividi-sezioni"

data Options = Options {
  documentoOption :: String,
  collegamentoNormativaOption :: Bool,
  celleComplesseOption :: Bool,
  preservaCitazioniOption :: Bool,
  dividiSezioniOption :: Bool
  }

applyDefaults :: UserOptions -> Options
applyDefaults o = Options {
  documentoOption = def "documento.docx" $ documentoCommandOption o,
  collegamentoNormativaOption = def False $ collegamentoNormativaCommandOption o,
  celleComplesseOption = def False $ celleComplesseCommandOption o,
  preservaCitazioniOption = def False $ preservaCitazioniCommandOption o,
  dividiSezioniOption = def False $ dividiSezioniCommandOption o
  }

data CommandLineOptions = DirectOptions UserOptions | JsonOptions String

options = commandLineOptions <|> jsonOptions

jsonOptions :: Parser CommandLineOptions
jsonOptions = JsonOptions <$> option str (
  long "opzioni-json"
  <> help "permette di indicare un file JSON da cui leggere le opzioni di converti")

commandLineOptions :: Parser CommandLineOptions
commandLineOptions = DirectOptions <$> (UserOptions
          <$> optional (argument str (metavar "documento.ext"))
          <*> optional (switch (long "collegamento-normativa"
                               <> help "sostituisce i riferimenti alle leggi con links a Normattiva"
                               <> showDefault))
          <*> optional (switch (long "celle-complesse"
                               <> help "evita errori nelle celle di tabella complesse scrivendo righe molto lunghe"
                               <> showDefault))
          <*> optional (switch (long "preserva-citazioni"
                               <> help "evita di rimuovere le citazioni"
                               <> showDefault))
          <*> optional (switch (long "dividi-sezioni"
                               <> help "produce un file .rst per ogni capitolo"
                               <> showDefault)))

main = do
  opts <- execParser (info options fullDesc)
  userOptions <- case opts of
    DirectOptions o -> pure o
    JsonOptions json -> do
      b <- B.readFile json
      case (decode b) of
        Nothing -> die "Error parsing the JSON option file"
        Just o -> return o
  converti (applyDefaults userOptions)

maybeHead [] = Nothing
maybeHead l = Just (head l)

-- default
def :: a -> Maybe a -> a
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
makeSphinx = "pandoc -t json " <> pack doc <> " | pandoc-to-sphinx"
linkNormattiva = version <> " " <> pack docUnlinked <> " -t html | " <> pack linker <> " | pandoc -f html -o " <> pack doc <> " " <> writeOpts

checkExecutables = do
  maybeExecutables <- sequence $ map findExecutable allFilters'
  maybeNotify (dropWhile isJust maybeExecutables)
    where allFilters' = map unpack allFilters

maybeNotify []       = pure ()
maybeNotify missing  = print (errore $ head missing)
  where errore c = "`converti` si basa sui filtri di Docs Italia che non sono disponibili sul tuo sistema. Puoi installarli seguendo le istruzioni che trovi su https://github.com/italia/docs-italia-pandoc-filters"
  -- where errore c = "`converti` si basa sul comando " <> c <> " che non è disponibile sul tuo sistema. Puoi installarlo seguendo le istruzioni che trovi su https://github.com/italia/docs-italia-pandoc-filters"

-- this function is a good high-level description of the logic
converti :: Options -> IO ()
converti opts = do
  checkExecutables
  createDirectoryIfMissing True (fileToFolder d)
  copyFile d (inToCopy d)
  void $ withCurrentDirectory (fileToFolder d) (do
    mys (toRST d)
    --mys toNative
    maybeLinker <- findExecutable linker
    when (isJust maybeLinker) (do
      renameFile doc docUnlinked
      void $ mys linkNormattiva
      )
    mys makeSphinx
    )
  where d = documentoOption opts
        mys c = shell c empty -- for readability


