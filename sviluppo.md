
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

potrebbe essere necessario installare `doctest` precedentemente, non è
nelle dipendenze. se continueremo a mantenere questi doctest potremo
[includerli nel file
cabal](https://github.com/sol/doctest#cabal-integration)

#### Gestione del changelog

Ogni volta che si modifica il codice, consiglio di aggiungere una nota
sui cambiamenti effettuati nel change log. L'idea è tener traccia di
cambiamenti che servano per le release notes e per scegliere un nuovo
numero di versione

#### Distribuzione binaria

Dalla versione 0.2.1.1 distribuiamo i binari dei comandi, per
Ubuntu. Il processo di rilascio per adesso consiste semplicemente in:

- scelta di un nuovo numero di versione in base alla package versioning policy di haskell ed in base alle note accumulate nel change log
- aggiornamento del change log e del file `.cabal` col nuovo numero di versione
- `stack build`
- `git tag v...`
- `git push --tags`
- nuova release su Github, caricando i binari che trovate in `.stack-work/install/<platform>/<resolver>/<compiler>/bin`


