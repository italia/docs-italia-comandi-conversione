
## Opzioni di `converti`

Elenchiamo subito le opzioni. Dopo l'elenco trovate una spiegazione
sul come usarle.

### `livello-singolo`

Normalmente `converti` prova a dividere il file in base a sezioni di
primo livello e sezioni di secondo livello. Settando questa opzione si
ottiene una struttura di files divisa solo in base alle sezioni di
primo livello

### `collegamento-normattiva`

Con questa opzione `converti` trasforma tutti i riferimenti a leggi e
normative in collegamenti ipertestuali al [sito di
Normattiva](http://www.normattiva.it/). Lo svantaggio è che il
processo può introdurre errori di sintassi RST. Abbiamo inoltre
riscontrato che l'uso di questa opzione [danneggia i riferimenti
interni al
documento](https://github.com/italia/docs-italia-comandi-conversione/issues/108).

### `celle-complesse`

Questa opzione agisce sul contenuto delle celle delle tabelle. Come
opzione predefinita, un contenuto di una cella troppo lungo viene
mandato a capo, creando spesso degli errori nella sintassi RST.

Attivando l'opzione `celle-complesse`, il processo di conversione
evita di mandare a capo il contenuto delle celle mantenendolo tutto
sulla stessa riga.

In questo modo, è possibile evitare gli errori di sintassi, ma in
compenso le righe del testo e delle tabelle possono diventare molto
lunghe, quindi difficili per la navigazione.

### `preserva-citazioni`

Molti utenti di Microsoft Word indentano il testo quando vogliono
formattare una citazione. Di conseguenza, pandoc interpreta il testo
indentato come citazione. Spesso non è quello che vogliamo, quindi
`converti` rimuove tutte le citazioni dai documenti. Se volete
preservare le citazioni potete farlo usando questa opzione.

### `mostra-comandi`

Mostra i comandi principali eseguiti da _converti_. Può servire per
investigare eventuali errori o per capire come viene usato _pandoc_ o
gli altri comandi.

## Come usare le opzioni

Se siete arrivati a questa pagina dal convertitore web, potete
selezionare queste opzioni usando la checkbox corrispondente
nell'interfaccia web del convertitore.

Se state usando `converti` da riga di comando, queste opzioni possono
essere applicate lanciando `converti --dividi-sezioni documento.odt`,
per esempio.

Se invece state sviluppando un servizio basato su converti, potete
indicare le opzioni in un file JSON in questo modo:

```bash
$ cat opzioni.json
{
  dividi-sezioni: true,
  celle-complesse: true
}
$ converti documento.odt --opzioni-json opzioni.json
```

Il valore di default di tutte le opzioni è `false`.
