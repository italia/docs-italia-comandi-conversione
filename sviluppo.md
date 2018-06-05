
`converti` contiene doctests che possono essere eseguiti così:

    $ stack exec doctest src/converti.hs

potrebbe essere necessario installare `doctest` precedentemente, non è
nelle dipendenze. se continueremo a mantenere questi doctest potremo
[includerli nel file
cabal](https://github.com/sol/doctest#cabal-integration)
