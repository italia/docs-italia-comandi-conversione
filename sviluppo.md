
## Il codice

Il codice di ciascun comando è contenuto in `src`. In genere si tratta
di comandi _self-contained_, pronti per essere estratti e distribuiti
singolarmente. Abbiamo deciso di mantenerli tutti in uno stesso
repository per semplificarne la gestione e l'installazione da parte
dei nostri utenti.

## Gestione del changelog e formato dei commit

Aggiorniamo il changelog prima di una nuova distribuzione. Per
agevolare questo passaggio è utile:

- nella prima riga dei commit fare riferimento all'issue
  corrispondente, così gli utenti potranno trovare nel changelog il
  numero di release dove la loro issue è risolta
- nella prima riga del commit specificare se si tratta di una `nuova
  interfaccia` o di un `cambio interfaccia` (non backwards-compatible)

## Distribuzione binaria

Dalla versione 0.2.1.1 distribuiamo i binari dei comandi, per
Ubuntu. Il processo di rilascio per adesso consiste semplicemente in:

- aggiornamento del changelog sulla base di `git log <tag>..HEAD --oneline`
- scelta di un nuovo numero di versione in base alla package
  versioning policy di haskell ed in base ai cambiamenti di
  interfaccia
- aggiornamento del file `.cabal` col nuovo numero di versione
- aggiornamento del testo di `--version` nel codice di ogni comando
- `stack build && . run-doctests.sh`
- `git commit -am "nuova release"`
- `git tag v...`
- installazione in locale e verifica degli effetti sul [repo dei test
  di
  regressione](https://github.com/danse/docs-italia-test-conversione),
  preparazione di un branch di aggiornamendo del repo se è il caso
- `git push --tags`
- `cd .stack-work/install/x86_64-linux/<resolver>/<compiler>/bin/`
- ls | while read command; do zip ${command}.zip $command; done
- un archivio che contenga tutti i comandi sarebbe più comodo ma
  troppo voluminoso per Github
- nuova release su Github, selezionando il tag e caricando gli archivi
- le regole di ansible del convertitore web cercheranno gli archivi
  nel campo _assets_ e non nella descrizione (dove è scritto "Attach
  binaries", non sopra)

## Doctests

`converti` contiene doctests che possono essere eseguiti così:

    $ stack exec doctest src/converti.hs
    $ stack exec doctest src/pandoc-to-sphinx.hs

potrebbe essere necessario installare `doctest` precedentemente, non è
nelle dipendenze. se continueremo a mantenere questi doctest potremo
[includerli nel file
cabal](https://github.com/sol/doctest#cabal-integration)

## Altre note

#### Questo progetto duplica l'eseguibile `pandoc`

Questo progetto contiene una copia dell'eseguibile `pandoc`, così che
gli utenti di Docs Italia che installano questo progetto si ritrovino
anche la giusta versione di pandoc installata, sia essa un fork o
no. Il codice è molto breve quindi se upstream dovesse cambiare
basterebbe poco ad aggiornare la nostra copia. Finora è sempre stato
sufficiente aggiornare la dipendenza dalla libreria di pandoc, senza
dover toccare `src/pandoc.hs`.

Per avere più informazioni sulla gestione del nostro fork vedi [le
note sul fork](doc/fork-italiano.md).

#### Formato Sphinx e formato Docs Italia

Docs Italia è costruito estendendo rST e
[Sphinx](https://rest-sphinx-memo.readthedocs.io/en/latest/ReST.html)
e la logica di conversione segue questo criterio. Nel corso dello
sviluppo e dei test d'uso abbiamo sviluppato diversi comandi e
potremmo definire le loro responsabilità come segue:

- formato rST, definito da docutils, prodotto con `pandoc`
- formato Sphinx, definito da sphinx, prodotto con `pandoc-to-sphinx`
- formato Docs Italia, definito da tema e convenzioni, prodotto con `converti`

Quindi ciò che è specifico di Docs Italia dovrebbe andare in
`converti`. Nelle ultime fasi del progetto, ho incluso in
`pandoc-to-sphinx` alcune caratteristiche specifiche di Docs Italia,
come l'uso di `highlights` per il sottotitolo.

#### Il futuro di `pandoc-to-sphinx`

Nell'Aprile 2018 ho [presentato un prototipo di `pandoc-to-sphinx`
alla comunità
pandoc](https://groups.google.com/forum/#!topic/pandoc-discuss/5W-l10MzeG8)
e si è discusso di aggiungere `sphinx` ai formati supportati da
pandoc. L'interfaccia potrebbe essere simile a quella usata adesso per
produrre slideshows, che sono formati da diversi files come una
documentazione per Sphinx. Il vantaggio principale che vedo
nell'utilizzare un writer pandoc è che si può riutilizzare la logica
del writer RST.

Al momento credo che se continueremo ad estendere `pandoc-to-sphinx`,
sarà meglio prima convertirlo in un writer per pandoc, ma la cosa va
valutata. Il formato che vogliamo produrre per Docs Italia potrebbe
differire troppo dallo standard Sphinx, per esempio per ottenere i
migliori risultati col tema a disposizione, o per semplificare la
compilazione di documentazioni definendo un [set di
convenzioni](https://docs.google.com/document/d/1KxqDqT-ydveMc2_eQbDVSt-73Toc-auUPvOcNbUDLwg)
(documento con accessibilità limitata).

Un writer dedicato a Docs Italia non verrebbe accettato upstream,
quindi nel caso il formato differisca sarebbe forse meglio continuare
a mantenere un comando esterno come è ora `pandoc-to-sphinx`. Il
problema di riutilizzare logica presente in `Text.Pandoc.Writer.RST`
comunque rimarrebbe aperto

#### La label `esempi di formattazione`

Ho assegnato [questa
label](https://github.com/italia/docs-italia-comandi-conversione/labels/templates%20di%20conversione)
alle issues che si possono riscontrare su documenti contenuti nel
nostro repo con gli [esempi di
formattazione](https://github.com/italia/docs-italia-esempiformattazione-docs)
(a proposito del nome, gli _esempi di formattazione_ sono anche utili
come _templates di conversione_, è un termine usato precedentemente
per intendere un concetto simile).

In generale gli errori nei templates di conversione hanno per noi una
priorità maggiore di errori trovati in documenti formattati in maniera
arbitraria. Se un tipo di formattazione non è convertito
correttamente, significa che non possiamo consigliare agli utenti un
modo di esprimere quella specifica semantica in quello specifico
formato.

Alcuni formati o alcune formattazioni potrebbero essere poco
frequenti, ma è probabile che un giorno vorremo investire alcuni
sprint nel migliorare la conversione da alcuni formati specifici: in
quel caso è una buona idea partire dagli esempi di formattazione.
