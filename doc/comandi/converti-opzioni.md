
## Opzioni di `converti`

Elenchiamo subito le opzioni. Dopo l'elenco trovate una spiegazione
sul come usarle

### `collegamento-normativa`

Quando attivate questa opzione, `converti` prova a trasformare tutti i
riferimenti a leggi in collegamenti ipertestuali a Normattiva. Lo
svantaggio è che il processo potrebbe introdurre errori di sintassi
rST

### `celle-complesse`

Se il vostro documento include celle di tabelle con molto testo ed una
formattazione specifica, questo potrebbe causare errori di sintassi
rST. Questo è dovuto al fatto che il contenuto di una cella viene
portato a capo. Per evitare questo problema, `converti` evita di
spezzare le righe quando selezionate l'opzione `celle-complesse`. Così
facendo potete ottenere un documento senza errori di sintassi, ma con
righe molto lunghe

### `preserva-citazioni`

Molti utenti di Microsoft Word indentano il testo quando vogliono
formattare una citazione. Di conseguenza, pandoc interpreta il testo
indentato come citazione. Spesso non è quello che vogliamo, quindi
`converti` rimuove tutte le citazioni dai documenti. Se volete
preservare le citazioni potete farlo usando questa opzione

### `dividi-sezioni`

Selezionando questa opzione chiedete a `converti` di spezzare il file
`.rst` convertito in base ai capitoli, che verranno raccolti in una
cartella `index/` e elencati in un file `index.rst`. Questo processo
potrebbe causare errori di sintassi rST

## Come usare le opzioni

Se siete arrivati a questa pagina dal convertitore web, potete
selezionare queste opzioni usando la checkbox corrispondente
nell'interfaccia web del convertitore.

Se state usando `converti` da riga di comando, queste opzioni possono
essere indicate lanciando `converti --dividi-sezioni documento.odt`,
per esempio.

Se state sviluppando un servizio basato su `converti`, un'altra
possibilità é quella di indicare le opzioni in un file JSON. Per
esempio così:

```bash
$ cat opzioni.json
{
  dividi-sezioni: true
  celle-complesse: true
}
$ converti documento.odt --opzioni-json opzioni.json
```

Il valore di default di tutte le opzioni è `false`
