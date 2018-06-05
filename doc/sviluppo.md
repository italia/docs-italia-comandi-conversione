## Questo progetto duplica Pandoc

Questo progetto contiene una copia dell'eseguibile `pandoc`, così che gli utenti di Docs Italia che installano questo progetto si ritrovino anche la giusta versione di pandoc installata, sia essa un fork o no. Il codice è molto breve quindi se upstream dovesse cambiare basterebbe poco ad aggiornare la nostra copia.

## Funzionalità opzionali

### Test dell'ambiente di conversione

Questo repository contiene anche dei documenti di esempio già convertiti. 

Per essere certi che gli script di conversione funzionino come ci si
aspetta, è possibile eseguire `$ . update-all.sh`. Il comando
convertirà nuovamente tutti i documenti presenti (l'operazione
potrebbe richiedere un po' di tempo).

L'operazione non dovrebbe produrre alcun output e dopo l'esecuzione il 
comando `git status` non dovrebbe mostrare alcun cambiamento.

Se riscontri delle differenze c'è qualcosa che non va: puoi
segnalarcelo aprendo una issue o una pull request. La tua copia del
repo potrebbe contenere documenti su cui stai ancora lavorando, quindi
fai attenzione a fare commit solo di ciò che è pubblicabile.

I documenti sono tradotti includendo i collegamenti automatici alla
normativa. Se non hai configurato i collegamenti automatici
riscontrerai sicuramente delle differenze nel risultato.

