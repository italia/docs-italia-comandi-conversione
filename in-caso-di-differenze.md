
Nel README, nella sezione dedicata al test finale, trovi informazioni
riguardo al modo in cui questi documenti sono stati convertiti.

### Fork italiano

Se i documenti sono stati convertiti col [fork italiano di
pandoc](https://github.com/italia/pandoc-docs2rst/blob/master/fork-italiano.md),
assicurati di aver installato pandoc a partire dal branch del fork.

### Controlla la versione di pandoc

Se i documenti sono stati convertiti con una versione ufficiale di
pandoc, una versione differente potrebbe provocare risultati
differenti.

Per verificare che la tua versione di pandoc sia recente prova ad
eseguire questo comando:

    stack exec --resolver lts-10.10 -- pandoc --version

Se la tua versione è precedente prova ad aggiornarla, se è successiva
apri una issue su questo repo così che possiamo investigare il
problema.

Per aggiornare la versione di pandoc installata basta seguire di nuovo
le istruzioni di installazione con slack. Se hai già clonato il
repository tempo fa, prima di installare di nuovo assicurati che sia
aggiornato, per esempio eseguendo `git pull`.

### Più in dettaglio

La versione del resolver dovrebbe corrispondere a [quella usata da
pandoc](https://github.com/jgm/pandoc/blob/master/stack.yaml#L27) ed a
[quella usata da
convert](https://github.com/italia/pandoc-docs2rst/blob/master/convert.hs#L2)
