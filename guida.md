
## Come convertire documenti senza usare questi script

Questi script eseguono pandoc usando alcune opzioni da riga di comando ed alcuni filtri che possono essere applicati anche manualmente se preferite usare pandoc direttamente sulla vostra macchina.

### Opzioni

Pandoc viene eseguito con le seguenti opzioni:

- `--wrap none` in modo da evitare errori di sintassi dovuti a tabelle con contenuti complessi come per esempio codice con linee molto lunghe
- `--extract-media .` in modo che le immagini contenute nel documento vengano salvate nella cartella `media`.
- `--standalone` serve per mostrare anche i metadati come autore, titolo, etcetera

### Filtri

Le funzionalità dei vari filtri sono brevemente descritte [nel loro repository](https://github.com/italia/pandoc-filters/blob/master/filters/guida.md)

### xmlLegesLinker

Questo strumento permette di inserire automaticamente i collegamenti a
[Normattiva](normattiva.it), modificando un file in formato HTML. Per
applicare il linker a documenti di altro formato (come `.rst` o
`.docx`) potete usare pandoc così:

    $ pandoc document.rst -t html | xmLeges-Linker-1.13a.exe | pandoc -f html -o linked-document.rst

Partendo da un file `document.rst` il comando sopra produrrà un file
`linked-document.rst` contenente i riferimenti a Normattiva
