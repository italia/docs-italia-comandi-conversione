
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


