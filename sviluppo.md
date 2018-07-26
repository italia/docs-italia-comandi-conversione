
## Il codice

Il codice di ciascun comando è contenuto in `src`. In genere si tratta
di comandi _self-contained_, pronti per essere estratti e distribuiti
singolarmente. Abbiamo deciso di mantenerli tutti in uno stesso
repository per semplificarne la gestione e l'installazione da parte
dei nostri utenti.

## Altre note

#### Questo progetto duplica Pandoc

Questo progetto contiene una copia dell'eseguibile `pandoc`, così che
gli utenti di Docs Italia che installano questo progetto si ritrovino
anche la giusta versione di pandoc installata, sia essa un fork o
no. Il codice è molto breve quindi se upstream dovesse cambiare
basterebbe poco ad aggiornare la nostra copia.

Per avere più informazioni sulla gestione del nostro fork vedi [le
note sul fork](doc/fork-italiano.md).

#### Formato Sphinx e formato Docs Italia

Docs Italia è costruito estendendo rST e Sphinx e la logica di
conversione segue questo criterio. Nel corso dello sviluppo e dei test
d'uso abbiamo sviluppato diversi comandi e potremmo definire le loro
responsabilità come segue:

- formato rST, definito da docutils, prodotto con `pandoc`
- formato Sphinx, definito da sphinx, prodotto con `pandoc-to-sphinx`
- formato Docs Italia, definito da tema e convenzioni, prodotto con `converti`

Quindi ciò che è specifico di Docs Italia dovrebbe andare in `converti`

#### Doctests

`converti` contiene doctests che possono essere eseguiti così:

    $ stack exec doctest src/converti.hs
    $ stack exec doctest src/pandoc-to-sphinx.hs

potrebbe essere necessario installare `doctest` precedentemente, non è
nelle dipendenze. se continueremo a mantenere questi doctest potremo
[includerli nel file
cabal](https://github.com/sol/doctest#cabal-integration)

#### Gestione del changelog e formato dei commit

Aggiorniamo il changelog prima di una nuova distribuzione. Per
agevolare questo passaggio è utile:

- nella prima riga dei commit fare riferimento all'issue
  corrispondente, così gli utenti potranno trovare nel changelog il
  numero di release dove la loro issue è risolta
- nella prima riga del commit specificare se si tratta di una nuova
  interfaccia o di un cambiamento di interfaccia (non
  backwards-compatible)

#### Distribuzione binaria

Dalla versione 0.2.1.1 distribuiamo i binari dei comandi, per
Ubuntu. Il processo di rilascio per adesso consiste semplicemente in:

- aggiornamento del changelog sulla base di `git log <tag>..HEAD --oneline`
- scelta di un nuovo numero di versione in base alla package
  versioning policy di haskell ed in base ai cambiamenti di
  interfaccia
- aggiornamento del change log e del file `.cabal` col nuovo numero di versione
- aggiornamento del testo di `--version` nel codice di ogni comando
- `stack build`
- `git commit -am "new release"`
- `git tag v...`
- `git push --tags`
- `cd .stack-work/install/x86_64-linux/<resolver>/<compiler>/bin/`
- ls | while read command; do zip ${command}.zip $command; done
- un archivio che contenga tutti i comandi sarebbe più comodo ma
  troppo voluminoso per Github
- nuova release su Github, selezionando il tag e caricando gli archivi
- le regole di ansible del convertitore web cercheranno gli archivi
  nel campo _assets_ e non nella descrizione (dove è scritto "Attach
  binaries", non sopra)

#### La label `esempi di formattazione`

Ho assegnato [questa
label](https://github.com/italia/docs-italia-comandi-conversione/labels/esempi%20di%20formattazione)
alle issues che si possono riscontrare su documenti contenuti nel
nostro repo con gli [esempi di
formattazione](https://github.com/italia/docs-italia-esempiformattazione-docs).

In generale gli errori negli esempi di formattazione hanno per noi una
priorità maggiore di errori trovati in documenti formattati in maniera
arbitraria. Se un tipo di formattazione non è convertito
correttamente, significa che non possiamo fornire all'utente un modo
di esprimere quella specifica semantica in quello specifico formato.

Alcuni formati o alcune formattazioni potrebbero essere poco
frequenti, ma è probabile che un giorno vorremo investire alcuni
sprint nel migliorare la conversione da alcuni formati specifici: in
quel caso è una buona idea partire dagli esempi di formattazione.
