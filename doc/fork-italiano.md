
#### Stato del fork italiano di pandoc

Il fork italiano di pandoc (`italia/master`) è attualmente basato su
pandoc 2.2.2.1 con l'aggiunta dei seguenti branch:

- `italia/4581`
- `italia/fonts-as-attributes`

#### Strategia di gestione del fork

Idealmente ci piacerebbe fare a meno di usare un nostro fork. In
pratica per servire meglio i nostri utenti ha senso essere autonomi
dalle decisioni del resto della comunità pandoc, mentre restiamo in
comunicazione con essa per ottenere una qualità migliore del software
nel lungo periodo.

È capitato di adottare alcune funzionalità in anteprima nel nostro
fork mentre il processo di revisione ed approvazione faceva il suo
corso, così che dopo alcuni mesi abbiamo potuto smettere di applicare
determinate patch al nostro fork ed abbiamo potuto fare affidamento
direttamente alla versione upstream.

##### Convergenza tramite i filtri

Un'altro processo che abbiamo seguito è stato quello di risolvere
alcuni problemi immediatamente tramite i filtri, anche per testarne
l'impatto sull'usabilità. Una volta che gli utenti si sono dimostrati
soddisfatti abbiamo fatto confluire la logica upstream

##### Versione del fork

È utile assegnare un nome di versione originale al nostro fork per
aiutare la diagnostica nei casi in cui coesistano diverse
installazioni di pandoc sullo stesso sistema. Non è possibile avere
lettere nella versione di un modulo Haskell. Finora ho seguito la
convenzione di settare `174`
([leet](https://en.wikipedia.org/wiki/Leet) per `ita`) come numero di
versione minore.

Quindi finchè adotteremo questa convenzione, i comandi di conversione
dipenderanno (nel file `.cabal`) da una versione di pandoc che finisce
con 174.

##### Aggiornamento del fork

- aggiorno `italia/master`, o partendo da jgm/master ed applicando i
  patch o facendo pull
- aggiorno il numero di versione aggiungendo `174`, vedi sopra
- aggiorno risultato dell'opzione `--version` di pandoc
- eseguo i test di pandoc
- `git push --force italia master`
- aggiorno le dipendenze in `docs-italia-comandi-conversione`
  - numero di versione nel file Cabal
  - location dell'archivio nel file stack. questa si ottiene visitando
    https://github.com/italia/pandoc, cliccando sull'hash del commit
    che ci interessa, _browse files_, _clone or download_, menu
    contestuale su _download zip_, _copy link location_ (su firefox)
  - può essere il caso di aggiornare il resolver o le extra-deps nel
    file stack, allineandolo al file stack di pandoc
  - può essere necessario aggiornare altre dipendenze
  - aggiorno il changelog dei comandi
  - `stack install` per verificare che tutto funzioni
- è probabilmente una buona occasione per aggiornare anche le dipendenze
  di `docs-italia-pandoc-filters`, per esempio se è cambiato il
  resolver
