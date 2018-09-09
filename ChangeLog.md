# Note sulle versioni di docs-italia-comandi-conversione

Leggi `sviluppo.md` per info sulla gestione del change log


## 0.7 -- Settembre 9, 2018

Questa release serve a riassumere il lavoro alla luce delle
segnalazioni e le priorità più recenti prima di un'interruzione nello
sviluppo. Non pianifichiamo di farne il deployment nel servizio web
visto che non sarebbe possibile testarla quanto la release precedente,
0.6.

Credo che i cambiamenti di interfaccia non richiedano nessun
aggiornamento della logica del convertitore web. Questa versione usa
però più filtri della precedente, e si basa sulla versione 0.2 di
`docs-italia-pandoc-filters`

#### cambio interfaccia:
- `converti` chiede o rimuove le cartelle se esistono già, closes #105
- aggiungo l'opzione `numbered` all'indice principale, closes #91
- adotto il filtro-google-docs, closes #80
- uso il `filtro-references` tenendone conto per la divisione in sezioni

#### nuove interfacce:
- opzioni brevi per `converti`, closes #60
- aggiungo l'opzione `mostra-comandi`, closes #62

#### correzioni:

- aggiorno il fork includendo una soluzione per il codice in ODT
- limito la lunghezza del nome dei files generati da identificatori lunghi
- avoid to write the subtitle directive in case of an empty subtitle meta
- applico il `filtro-merge-codes`, closes #93
- avoid copying `media/` to `index/`, closes #97
- rimuovo un errore insidioso nella logica di divisione in sezioni, closes #70
- aggiorno la logica del collegamento a normattiva, closes #70
- miglioro il report nel caso manchino alcuni eseguibili
- ripristino la conversione del titolo, closes #98
- indentazione della TOC con tre spazi come segnalato da @atorin
- aggiorno le immagini durande la divisione in sezioni, closes #95

## 0.6 -- Agosto 6

#### cambio interfaccia:
- le sezioni vengono sempre divise, closes #88
- rinomino risultati-conversione, closes #51
- divido usando due livelli di indici, closes #31

Dunque l'opzione `--dividi-sezioni` non esiste più, il documento verrà
sempre diviso. La cartella è rinominata quindi i risultati vanno
cercati con il nuovo nome, sostituendo `o` con `i`. La divisione in
due livelli non ha impatto su chi chiama il comando, è solo una
differenza nel risultato

#### nuova interfaccia:
- aggiungo l'opzione `--livello-singolo`
- aggiungo opzioni `--version`, closes #14

L'opzione `--livello-singolo` è documentata insieme alle altre che
riguardano anche il convertitore web

#### correzione errori e nuove features:

- scriviamo il sottotitolo in una direttiva `highlights`, closes #71
- miglioro la logica per i nomi dei files, closes #87, closes #86
- faccio il parse dal documento originale, closes #85
- aggiungo opzione --wrap-none a pandoc-to-sphinx, closes #39
- correggo la divisione in sezioni, closes #50
- fornisco un testo di help dettagliato, closes #64
- migliorie interne ai test, closes #65

## 0.5 -- Luglio 26

cambio interfaccia:
* il documento è un argomento necessario di `converti`, chiude #59
* `converti` divide in base al primo livello, chiude #26

## 0.4.1.2 -- Luglio 25

* correggo un errore in `--version`

## 0.4.1 -- Luglio 25

* aggiunta opzione `--version` a `converti`

## 0.4 -- Luglio 24

ho distribuito questa release in maniera erronea. Le funzionalità
seguenti si possono trovare in 0.4.2.1

nuova interfaccia:
 * aggiunta l'opzione `--level` a `pandoc-to-sphinx`, chiude #13

correzione errori:
 * adesso `converti` funziona coi formati accettati da pandoc , risolvendo #42

modifiche interne:
 * aggiornato il fork alla versione 2.2.2.174 ed altre dipendenze, chiude #48

## 0.3 -- Luglio 16

* `converti` fornisce nuove opzioni ed il comportamento di default è
  diverso. Per ottenere lo stesso risultato di prima vanno ora usate
  le opzioni --dividi-sezioni, --collegamento-normattiva,
  --celle-complesse. Il comportamento di default è ora più robusto
* Gli eseguibili non erano portabili, vedi issue #35. Questa versione
  usa un flag in `stack.yml` che risolve il problema

## 0.2.2 -- Giugno 25

* Il comando `converti` adesso applica correttamente
  `pandoc-to-sphinx`, quindi questa versione elimina un altro errore
  che produceva cartelle `index/` vuote come risultato di `converti`
* Prima distribuzione binaria per Ubuntu

## 0.2.1.1 -- Giugno 14, 2018

* Elimina un'altro errore applicando le opzioni di scrittura previste

## 0.2.1.0 -- Giugno 14, 2018

* Aggiunge il `filtro-rimuovi-div`

## 0.2.0.3 -- Giugno 13, 2018

* Elimina un errore adattando `converti` alla sua doc
* Modifiche interne

## 0.2.0.2 -- Giugno 13, 2018

* Risolve issue #15
* Modifiche interne

## 0.2 -- Giugno 7, 2018

* Presenta un pacchetto completamente ristrutturato grazie ai
  suggerimenti ed alle esperienze di Pablo Persico

## 0.1 -- Maggio 9, 2018

* Offre un modulo Haskell installabile ed usabile da Alberto Torin, a
  partire da quelli che prima erano semplici script Turtle
