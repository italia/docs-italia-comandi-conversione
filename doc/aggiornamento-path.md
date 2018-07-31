
#### In caso di _warning_

Se installando questi comandi vi imbattete in un warning simile al seguente

```
Warning: Installation path /home/opiccolo/.local/bin not found on the PATH environment variable
```

Significa che non avete eseguito uno dei passaggi dell'installazione
di Stack, e non potrete eseguire i comandi.

#### Cos'è il `$PATH`

È una variabile della riga di comando, per questo comincia con
`$`. Contiene una lista di cartelle dove vengono cercati i comandi. Da
`ls` a `pandoc` a `converti`, tutti i comandi che lanciate vengono
cercati in una di queste cartelle, e se non vengono trovati non
possono essere eseguiti dalll'interprete dei comandi.

#### Come aggiornare il `$PATH`

La documentazione di installazione di Stack contiene un paragrafo che
[spiega come aggiornare il
path](https://docs.haskellstack.org/en/stable/GUIDE/#downloading-and-installation). Se
questo non fosse abbastanza chiaro o non funzionasse sul vostro
sistema, potete aprire una issue per permetterci di approfondire il
caso

#### Verificare che il `$PATH` sia corretto

Se pensate di aver aggiornato il path correttamente, potete verificare
eseguendo:

    $ echo $PATH

Vi verrà mostrato un'elenco di cartelle. Tutti i comandi contenuti in
quelle cartelle sono utilizzabili direttamente dalla riga di comando

#### Introduzione alle variabili da riga di comando

Le variabili non sono niente di magico o complicato. Si tratta di un
modo semplice di gestire testi lunghi associandoli a parole chiave più
facili da usare e ricordare, per esempio:

```bash
$ benvenuto="ciao utente ti diamo il benvenuto nel mondo della riga di comando"
$ echo $benvenuto
ciao utente ti diamo il benvenuto nel mondo della riga di comando
$ echo $benvenuto | sed s/utente/Franco/
ciao Franco ti diamo il benvenuto nel mondo della riga di comando
```

#### Il comando `which`

Esiste un comando per trovare altri comandi! Si chiama `which` che in
inglese significa `quale`. Può essere utile per accertarsi del fatto
che stiamo eseguendo proprio quello che vogliamo eseguire. Ecco un
esempio d'uso:

```bash
$ which ls
/bin/ls
$ which pandoc
/home/francesco/.local/bin/pandoc
```
