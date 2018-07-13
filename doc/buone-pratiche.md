
## Consigli di conversione con pandoc

Qui raccogliamo idee e suggerimenti per la conversione, derivati
dall'esperienza di conversione di Alberto Torin, Pablo Persico e
Giuseppe Palestra, principalmente.

Sulla base di questa esperienza abbiamo sviluppato il comando
`converti` ed il [convertitore
web](https://docs-italia-staging.teamdigitale.it/converti/).

L'invocazione di `converti` esegue i seguenti passaggi:

- conversione [pandoc](pandoc.org) con una selezione di [opzioni](http://pandoc.org/MANUAL.html#options) e [filtri](http://pandoc.org/filters.html)
- collegamento a Normattiva con [xmLegesLinker](http://www.ittig.cnr.it/lab/xmleges/xmlegeslinker/)
- divisione delle sezioni con [pandoc-to-sphinx](comandi/pandoc-to-sphinx.md)

Fra questi passi solo la conversione è necessaria per la pubblicazione
in Docs Italia, mentre i restanti sono agevolazioni che, nel caso non
usiate `converti`, potete decidere autonomamente di
adottare o meno.

In generale un compito di conversione potrebbe richiedere opzioni
specifiche o lo sviluppo e l'uso di filtri ad-hoc. Se da un lato fare
riferimento a `converti` ci permette di convergere, l'esperienza con
l'uso diretto di pandoc e degli altri comandi aiuta a districarsi nei
casi più complessi

### Opzioni pandoc

Pandoc viene eseguito con le seguenti opzioni:

- `--wrap none` in modo da evitare errori di sintassi dovuti a tabelle
  con contenuti complessi come per esempio codice con linee molto
  lunghe. Questa opzione corrisponde all'opzione `--celle-complesse`
  di `converti`
- `--extract-media .` in modo che le immagini contenute nel documento
  vengano salvate nella cartella `media`.
- `--standalone` serve per mostrare anche i metadati come autore,
  titolo, etcetera
- `-f docx+styles` per tradurre le didascalie col `filtro-didascalia`

### Filtri

Le funzionalità dei vari filtri sono brevemente descritte [nel loro
repository](https://github.com/italia/docs-italia-pandoc-filters/tree/master/filters). Attualmente
`converti` applica i seguenti filtri:

- `filtro-didascalia`
- `filtro-quotes` (non viene applicato da `converti` se viene usata
  l'opzione `--preserva-citazioni`)
- `filtro-rimuovi-div`
- `filtro-stile-liste`

### Collegamento a Normattiva con `xmlLegesLinker`

Questo passaggio viene applicato da `converti` quando usate l'opzione
`--collegamento-normativa`.

`xmlLegesLinker` permette di inserire automaticamente i collegamenti a
[Normattiva](http://www.normattiva.it/), modificando un file in
formato HTML. Per applicare il linker a documenti di altro formato
(come `.rst` o `.docx`) potete usare pandoc così:

    $ pandoc document.rst -t html | xmLeges-Linker-1.13a.exe | pandoc -f html -o linked-document.rst

Partendo da un file `document.rst` il comando sopra produrrà un file
`linked-document.rst` contenente i riferimenti a Normattiva

### Divisione in sezioni

Questa viene effettuata quando specificate l'opzione
`--dividi-sezioni`. L'effetto è quello di applicare `pandoc-to-sphinx`
al documento convertito. Per maggiori dettagli rimandiamo alla
documentazione di [`pandoc-to-sphinx`](comandi/pandoc-to-sphinx.md)
