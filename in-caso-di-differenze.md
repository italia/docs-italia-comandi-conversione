
### Controlla la versione di pandoc

Per verificare che la tua versione di pandoc sia recente prova ad
eseguire questo comando:

    stack exec --resolver lts-10.10 -- pandoc --version

Questi documenti sono stati tradotti con la versione 2.1.4 di pandoc,
quindi una versione differente potrebbe provocare risultati
differenti. Se la tua versione è precedente prova ad aggiornarla, se è
successiva apri una issue su questo repo così che possiamo investigare
il problema.

Per aggiornare la versione di pandoc installata basta seguire di nuovo
le istruzioni di installazione con slack. Se hai già clonato il
repository tempo fa, prima di installare di nuovo assicurati che sia
aggiornato, per esempio eseguendo `git pull`.

### Più in dettaglio

La versione del resolver dovrebbe corrispondere a [quella usata da
pandoc](https://github.com/jgm/pandoc/blob/master/stack.yaml#L27) ed a
[quella usata da
convert](https://github.com/italia/pandoc-docs2rst/blob/master/convert.hs#L2)