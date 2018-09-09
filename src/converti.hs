{-# LANGUAGE OverloadedStrings #-}

import Turtle hiding (splitDirectories,
                      replaceExtensions,
                      stdout,
                      stderr,
                      FilePath(..),
                      options,
                      option,
                      switch,
                      die,
                      header
                     )
import Data.Text (pack, unpack, intercalate)
import qualified Data.Text.IO as TIO
import System.FilePath.Posix
import System.Directory
import System.Directory.Internal.Prelude (isAlreadyExistsError)
import Control.Exception
import Data.Maybe (isJust)
import Options.Applicative
import Data.Aeson hiding (Options)
import System.Exit
import qualified Text.PrettyPrint.ANSI.Leijen as P

import qualified Data.ByteString.Lazy as B

-- throughout this file we work in Text and convert to other types
-- when needed. Only the path manipulation functions work with
-- String, that get converted to Text right after

data UserOptions = UserOptions {
  collegamentoNormattivaCommandOption :: Maybe Bool,
  livelloSingoloCommandOption :: Maybe Bool,
  celleComplesseCommandOption :: Maybe Bool,
  preservaCitazioniCommandOption :: Maybe Bool,
  mostraComandiCommandOption :: Maybe Bool,
  sovrascriviCommandOption :: Maybe Bool
  }

instance FromJSON UserOptions where
  parseJSON = withObject "UserOptions" $ \ v -> UserOptions
    <$> v .:? "collegamento-normattiva"
    <*> v .:? "livello-singolo"
    <*> v .:? "celle-complesse"
    <*> v .:? "preserva-citazioni"
    <*> v .:? "mostra-comandi"
    <*> v .:? "sovrascrivi"

data Options = Options {
  collegamentoNormattivaOption :: Bool,
  livelloSingoloOption :: Bool,
  celleComplesseOption :: Bool,
  preservaCitazioniOption :: Bool,
  mostraComandiOption :: Bool,
  sovrascriviOption :: Bool
  }

applyDefaults :: UserOptions -> Options
applyDefaults o = Options {
  collegamentoNormattivaOption = def False $ collegamentoNormattivaCommandOption o,
  livelloSingoloOption = def False $ livelloSingoloCommandOption o,
  celleComplesseOption = def False $ celleComplesseCommandOption o,
  preservaCitazioniOption = def False $ preservaCitazioniCommandOption o,
  mostraComandiOption = def False $ mostraComandiCommandOption o,
  sovrascriviOption = def False $ sovrascriviCommandOption o
  }

data CommandLineOptions = DirectOptions String UserOptions |
                          JsonOptions String String |
                          Version

options = commandLineOptions <|> jsonOptions <|> version

version :: Parser CommandLineOptions
version = flag' Version (
  long "version"
  <> help "mostra la versione dei comandi di conversione")

jsonOptions :: Parser CommandLineOptions
jsonOptions = JsonOptions
                     <$> argument str (metavar "documento.ext")
                     <*> option str (long "opzioni-json"
                                     <> short 'j'
                                     <> help "permette di indicare un file JSON da cui leggere le opzioni di converti")
                     
commandLineOptions :: Parser CommandLineOptions
commandLineOptions = DirectOptions
                     <$> argument str (metavar "documento.ext")
                     <*> (UserOptions
                          <$> optional (switch (long "collegamento-normattiva"
                                                <> short 'n'
                                                <> help "sostituisce i riferimenti alle leggi con links a Normattiva"
                                                <> showDefault))
                          <*> optional (switch (long "livello-singolo"
                                                <> short 's'
                                                <> help "produce una struttura di files divisi solo per sezioni di primo livello"
                                                <> showDefault))
                          <*> optional (switch (long "celle-complesse"
                                                <> help "evita errori nelle celle di tabella complesse scrivendo righe molto lunghe"
                                                <> showDefault))
                          <*> optional (switch (long "preserva-citazioni"
                                                <> help "evita di rimuovere le citazioni"
                                                <> showDefault))
                          <*> optional (switch (long "mostra-comandi"
                                                <> short 'v'
                                                <> help "mostra i comandi invocati da converti (verbose)"
                                                <> showDefault))
                          <*> optional (switch (long "sovrascrivi"
                                                <> short 'f'
                                                <> help "forza la sovrascrittura della cartella risultato"
                                                <> showDefault)))

convertiProgDesc =  "converte il documento in formato rST." P.<$>
                    "Nel caso più semplice, potete convertire un documento lanciando:" P.<$>
                    "" P.<$>
                    "    $ converti documento.ext" P.<$>
                    "" P.<$>
                    "La documentazione più dettagliata si trova al seguente indirizzo:" P.<$>
                    "https://github.com/italia/docs-italia-comandi-conversione/blob/master/doc/comandi/converti.md"

main = do
  opts <- execParser (info (options <**> helper) (
                          fullDesc <>
                          progDescDoc (Just convertiProgDesc) <>
                          header "converti - comando semplificato per la conversione di formato"))
  (document, userOptions) <- case opts of
    DirectOptions d o -> pure (d, o)
    JsonOptions d json -> do
      b <- B.readFile json
      case (decode b) of
        Nothing -> die "Errore nel parsing del file JSON con le opzioni"
        Just o -> pure (d, o)
    Version -> do
      putStrLn "comandi conversione 0.7"
      exitSuccess
  converti document (applyDefaults userOptions)

-- this function is a good high-level description of the logic
converti :: String -> Options -> IO ()
converti document opts = do
  checkExecutables
  clearResultDirectory (sovrascriviOption opts) (fileToFolder document)
  copyFile document (inToCopy document)
  void $ withCurrentDirectory (fileToFolder document) (do
    mys (pandocFilters opts ori par)
    maybeLinker <- findExecutable (unpack linker)
    when (collegamentoNormattivaOption opts && isJust maybeLinker) (do
      void $ mys (linkNormattiva opts par tem)
      renameFile (unpack tem) (unpack par)
      )
    mys (pandocToSphinx opts par)
    when (not $ mostraComandiOption opts) (removeFile $ unpack par)
    )
  where mys c = do
          when (mostraComandiOption opts) $ sequence_ $ fmap echo $ textToLines c
          shell c empty -- for readability
        ori = (pack . originalWithExtension) document :: Text
        par = "partial.json" :: Text -- partially converted lossless format
        tem = "temporary.json" :: Text -- won't stay in the result

clearResultDirectory overwrite dir = do
  e <- doesPathExist dir
  when e askRemoval
  -- `createDirectoryIfMissing` creates also the parents
  createDirectoryIfMissing True dir
  where
      askRemoval = do
        if overwrite
          then remove
          else (do
            putStrLn (dir <> " esiste già. Premi invio per uscire da `converti`, o scrivi \"s\" per sovrascrivere la cartella ed i suoi contenuti:")
            line <- getLine
            if (null line)
              then exitSuccess
              else remove)
      remove = removeDirectoryRecursive dir

pandocFilters o from to = spaced ([pandoc,
                                   from,
                                   parseOpts o from, writeOpts o,
                                   "-o",
                                   to])

pandocToSphinx :: Options -> Text -> Text
pandocToSphinx o from = spaced (["cat",
                                from,
                                "|", "pandoc-to-sphinx",
                                "--level", "1"] <>
                               secondLevel <>
                               wrap)
  where wrap = if (celleComplesseOption o) then ["--wrap-none"] else []
        secondLevel = if (livelloSingoloOption o)
                      then []
                      else ["--second-level", "2"]

linkNormattiva o from to = spaced [pandoc, from, "-t html",
                           "|", linker, "|",
                           pandoc, "-f html", "-o", to, writeOpts o]

writeOpts :: Options -> Text
writeOpts o = makeOpts (wrap <> ["--standalone"]) writeRSTFilters
  where wrap = if (celleComplesseOption o) then ["--wrap none"] else []

parseOpts :: Options -> Text -> Text
parseOpts o d = makeOpts opts filters
  where opts = ["--extract-media ."] <> formatOptions
        filters = (parseFilters (not $ preservaCitazioniOption o))
        formatOptions = case takeExtension (unpack d) of
          ".docx" -> ["-f docx+styles"]
          _ ->  []

parseFilters q = [ "filtro-google-docs",
                   "filtro-references",
                   "filtro-didascalia",
                   "filtro-rimuovi-div",    -- per `-f docx+styles`
                   "filtro-merge-codes"] <> -- per `-f docx+styles`
                 quotes :: [Text]
  where quotes = if q then ["filtro-quotes"] else []

writeRSTFilters = ["filtro-stile-liste" ] :: [Text]
allFilters = parseFilters True <> writeRSTFilters

checkExecutables = do
  maybeExecutables <- sequence $ map (findExecutable . unpack) allExes
  sequence $ map maybeNotify $ zip maybeExecutables allExes
    where allExes = linker:allFilters :: [Text]

maybeNotify :: (Maybe FilePath, Text) -> IO ()
maybeNotify (Nothing, c) = TIO.putStrLn (errore c)
  where errore c = "`converti` si basa sul comando " <> c <> " che non è disponibile sul tuo sistema. Puoi installarlo seguendo le istruzioni che trovi su https://github.com/italia/docs-italia-pandoc-filters"
maybeNotify _  = pure ()

maybeHead [] = Nothing
maybeHead l = Just (head l)

-- default
def :: a -> Maybe a -> a
def d Nothing = d
def d (Just something) = something

headDefault d = def d . maybeHead

makeOpts opts filters = spaced (opts <> map addFilter filters)

addFilter :: Text -> Text
addFilter f = "--filter " <> f

-- | convert the input file to the output folder
--
-- >>> fileToFolder "somedir/otherdir/file.ext"
-- "risultati-conversione/otherdir/file"
-- >>> fileToFolder "file.ext"
-- "risultati-conversione/file"
fileToFolder i = case maybeParent of
  Nothing -> joinPath [res, baseName]
  Just parent -> joinPath [res, parent, baseName]
  where res = "risultati-conversione"
        baseName = takeBaseName i
        maybeParent = maybeHead $ drop 1 $ reverse $ splitDirectories i

-- | use the extension from the input doc to make its new name
--
-- >>> originalWithExtension "somedir/otherdir/file.ext"
-- "originale.ext"
originalWithExtension :: FilePath -> FilePath
originalWithExtension i = addExtension "originale" (takeExtension i)

-- | move the input file to the destination folder
--
-- >>> inToCopy "somedir/otherdir/file.ext"
-- "risultati-conversione/otherdir/file/originale.ext"
inToCopy :: FilePath -> FilePath
inToCopy i = joinPath [fileToFolder i, originalWithExtension i]

-- | convert the input file to the output file
--
-- >>> inToOut "newExt"
-- "document.newExt"
inToOut :: FilePath -> FilePath
inToOut = addExtension "document"

-- | useful for creating commands
--
-- >>> :set -XOverloadedStrings
-- >>> spaced ["command", "--option", "argument"]
-- "command --option argument"
spaced :: [Text] -> Text
spaced = intercalate " "

-- paths
--
linker = "xmLeges-Linker-1.13a.exe" :: Text
-- change to switch the executable name everywhere, useful to quickly
-- test forks or different versions
pandoc = "pandoc" :: Text


