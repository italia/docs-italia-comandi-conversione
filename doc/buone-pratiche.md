
L'invocazione di `converti` esegue i seguenti passaggi:

- conversione [pandoc](pandoc.org) con una selezione di [opzioni](http://pandoc.org/MANUAL.html#options) e [filtri](http://pandoc.org/filters.html)
- collegamento a Normattiva con [xmLegesLinker](http://www.ittig.cnr.it/lab/xmleges/xmlegeslinker/)
- divisione delle sezioni con [pandoc-to-sphinx](comandi/pandoc-to-sphinx.md)

Fra questi passi solo la conversione è necessaria per la pubblicazione
in Docs Italia, mentre i restanti sono agevolazioni che, nel caso non
usiate `convert-docs-italia`, potete decidere autonomamente di
adottare o meno.

In generale un compito di conversione potrebbe richiedere opzioni
specifiche o lo sviluppo e l'uso di filtri ad-hoc. Se da un lato fare
riferimento a `converti` ci permette di convergere, l'esperienza con
l'uso diretto di pandoc e degli altri comandi aiuta a districarsi nei
casi più complessi

### Opzioni

Pandoc viene eseguito con le seguenti opzioni:

- `--wrap none` in modo da evitare errori di sintassi dovuti a tabelle con contenuti complessi come per esempio codice con linee molto lunghe
- `--extract-media .` in modo che le immagini contenute nel documento vengano salvate nella cartella `media`.
- `--standalone` serve per mostrare anche i metadati come autore, titolo, etcetera

### Filtri

Le funzionalità dei vari filtri sono brevemente descritte [nel loro
repository](https://github.com/italia/pandoc-filters/blob/master/filters/guida.md). Attualmente `converti` applica i seguenti filtri:

- `filtro-didascalia`
- `filtro-quotes`
- `filtro-stile-liste`

### collegamento a Normattiva con `xmlLegesLinker`

Questo strumento permette di inserire automaticamente i collegamenti a
[Normattiva](normattiva.it), modificando un file in formato HTML. Per
applicare il linker a documenti di altro formato (come `.rst` o
`.docx`) potete usare pandoc così:

    $ pandoc document.rst -t html | xmLeges-Linker-1.13a.exe | pandoc -f html -o linked-document.rst

Partendo da un file `document.rst` il comando sopra produrrà un file
`linked-document.rst` contenente i riferimenti a Normattiva
