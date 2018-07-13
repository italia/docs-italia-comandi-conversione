
## Opzioni di `converti`

Di seguito è possibile trovare l'elenco delle opzioni di 'converti' e una breve descrizione

### Tutte le opzioni di 'converti' sono  suscettibili di errori di sintassi rST, pertanto i risultati andranno verificati. 

### `link-normattiva`

Questa opzione, trasforma tutti i riferimenti a leggi e normative in collegamenti ipertestuali al sito http://www.normattiva.it/

### `celle-complesse`

Questa opzione agisce sul contenuto delle celle, di default il contenuto di una cella viene portato a capo e spesso riporta errore nella sintassi rST. 
Attivando l'opzione celle-complesse il processo di conversione evita di mandare a capo il contenuto delle celle riportando tutto il contenuto della cella sulla stessa riga.

### `preserva-citazioni`

Molti utenti di Microsoft Word indentano il testo quando vogliono formattare una citazione. Pandoc interpreta il testo indentato come citazione mentre 'converti' rimuove tutte le citazioni dai documenti. 
Per preservare le citazioni è possibile usare l'opzione 'preserva-citazioni'

### `dividi-sezioni`

Questa opzione divide i capitoli in file .rst, li raccoglie in una cartella index/ e li elenca nel file index.rst.

## Come usare le opzioni

Se siete giunti a questa pagina dal convertitore web, è possibile selezionare queste opzioni usando la checkbox corrispondente, nell'interfaccia web del convertitore.

Se state usando `converti` da riga di comando, queste opzioni possono essere indicate lanciando `converti --dividi-sezioni documento.odt`

Se invece state sviluppando un servizio basato su `converti`, è possibile indicare le opzioni in un file JSON. 
in questo modo:

```bash
$ cat opzioni.json
{
  dividi-sezioni: true,
  celle-complesse: true
}
$ converti documento.odt --opzioni-json opzioni.json
```

Il valore di default di tutte le opzioni è `false`
