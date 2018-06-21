
#### Stato del fork italiano di pandoc

Il fork italiano di pandoc (`italia/master`) è attualmente basato su
pandoc 2.2 con l'aggiunta dei seguenti branch:

- `italia/4581`
- `italia/fonts-as-attributes`

Commit e138e75c399bfe8b7e0ee49449ff4343907205a7

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
