Modalità di autenticazione
==========================

Per consumare il web service di verifica del voucher, ogni esercente
dovrà essere dotato di un **certificato di autenticazione** da
installare nel proprio client del servizio e da utilizzare nella
chiamata SOAP per effettuare l’autenticazione in modalità SSL con
certificato client.

Tale certificato X509 sarà generabile e scaricabile in formato .cer
direttamente tramite l’applicazione web dedicata agli esercenti, in area
autenticata. In particolare il processo di generazione del certificato
prevede due step:

1. Il primo step di richiesta del certificato; a seguito di questa
   operazione il sistema prende in carico la richiesta.
2. Il secondo step di verifica esito della richiesta; questa operazione
   controlla se è pronto il certificato emesso da CA dedicata ed
   eventualmente lo rende disponibile per il download.

Durante il primo step sarà necessario caricare un file .der
rappresentante la richiesta di certificato alla CA dedicata al progetto.
Tale csr deve presentare le seguenti caratteristiche:

-  Algoritmo generazione chiavi: RSA
-  Lunghezza chiavi: 2048 bit

Una volta scaricato il certificato X509 va installato, insieme alla
corrispondente chiave privata, nel client utilizzato per il servizio di
verifica voucher. Pertanto l’evento di download del certificato non può
rappresentare la definitiva attivazione dell’esercente. E’ stato
previsto uno step di attivazione, di tipo “Check” con i seguenti valori
di input:

-  tipo operazione = 1
-  codice voucher = 11aa22bb

Questa operazione equivale ad una transazione di attivazione, il cui
unico effetto è quello di portare l’esercente nello stato attivo. Da
questo momento in poi i beneficiari potranno generare voucher reali per
tale esercente.

Endpoint del servizio

Il servizio risponde ai seguenti endpoint
`https://wstest.18app.italia.it/VerificaVoucherWEB/VerificaVoucher <https://wstest.18app.italia.it/VerificaVoucherWEB/VerificaVoucher>`__
(ambiente di prova)
`https://ws.18app.italia.it/VerificaVoucherWEB/VerificaVoucher <https://ws.18app.italia.it/VerificaVoucherWEB/VerificaVoucher>`__
(ambiente reale)

APPLICAZIONE 18APP ALLEGATO

LINEE GUIDA PER ESERCENTI PAG. 12 DI 26