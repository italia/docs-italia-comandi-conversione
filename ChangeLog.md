# Note sulle versioni di docs-italia-comandi-conversione

Leggi `sviluppo.md` per info sulla gestione del change log

## versione da assegnare -- data di rilascio da definire

* ...

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
