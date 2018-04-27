
## Come convertire documenti senza usare questi script

Questi script eseguono pandoc usando alcune opzioni da riga di comando ed alcuni filtri che possono essere applicati anche manualmente se preferite usare pandoc direttamente sulla vostra macchina.

### Opzioni

Pandoc viene eseguito con le seguenti opzioni:

- `--wrap none` in modo da evitare errori di sintassi dovuti a tabelle con contenuti complessi come per esempio codice con linee molto lunghe
- `--extract-media media` in modo che le immagini contenute nel documento vengano salvate nella cartella `media`.
- `--standalone` serve per mostrare anche i metadati come autore, titolo, etcetera

### Filtri

Le funzionalità dei vari filtri sono brevemente descritte [nel loro repository](https://github.com/italia/pandoc-filters/blob/master/filters/guida.md)

