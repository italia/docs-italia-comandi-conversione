Passo 5
=======

.. _header-added-by-pandoc-2:

header added by pandoc
----------------------

DATI DI RIEPILOGO
~~~~~~~~~~~~~~~~~

In questa sezione è possibile verificare le informazioni inserite e
scaricare il file *XML* da firmare digitalmente e da trasmettere
attraverso una delle modalità previste dal Sistema d’Interscambio.

Si raccomanda di verificare la correttezza formale della fattura
prodotta prima di firmarla digitalmente e di inviarla al sistema
d’interscambio.

A tal fine, cliccando su “\ **Controlla”** è possibile accertare che la
fattura non contenga errori.

|image12|

Trattamento delle fatture elettroniche inviate
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Consap provvede al riscontro delle fatture ricevute, alla loro verifica
rispetto ai buoni validati e alla loro liquidazione.

A seguito della verifica effettuata da Consap, l’esercente riceve dalla
Piattaforma di Interscambio appositi messaggi di notifica dell’esito
della verifica delle fatture inviate: se l’esito è negativo, la relativa
notifica contiene anche le motivazioni del rigetto; in caso positivo, le
fatture sono mandate al pagamento con bonifico sull’IBAN indicato dal
beneficiario. La liquidazione avviene entro 30 giorni dalla presa in
carico della fattura. A pagamento effettuato verrà inviata una mail
automatica di notifica di avvenuto accredito. Per consentire tale
utilità si ricorda di inserire l’indirizzo e-mail nella sezione
“Contatti” all’interno della fattura elettronica.

L’esercente ha inoltre la possibilità di verificare, sull’applicazione
Carta del Docente, i buoni liquidati.

Attraverso l’applicazione web raggiungibile dal sito
`https://cartadocente.consap.it <https://cartadocente.consap.it/>`__
sarà possibile consultare lo stato di avanzamento delle fatture inviate
così distinto:

-  Accettate: fatture correttamente importate nel sistema, già liquidate
   o prossime alla liquidazione.
-  In elaborazione: fatture in fase di controllo.
-  Rifiutate: fatture scartate a causa di uno o più errori bloccanti. In
   questo caso sarà possibile consultare l’elenco degli errori
   riscontrati. Tali fatture dovranno essere corrette e riemesse.

Assistenza
~~~~~~~~~~

Per le problematiche amministrative connesse alla fatturazione, è
disponibile un servizio di assistenza via mail all’indirizzo
`cartadeldocente.assistenza@consap.it <mailto:cartadeldocente.assistenza@consap.it>`__

Per problematiche connesse all’utilizzo dei voucher, alla validazione, o
ad aspetti di natura tecnica, contattare il numero verde 080-926 7603
raggiungibile da lunedì a venerdì dalle 14 alle 18

Appendice 1 - Codici dei Regimi fiscali
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

+------+---------------------------------------------------------------+
| **Co | **Descrizione**                                               |
| dice |                                                               |
| **   |                                                               |
+======+===============================================================+
| **RF | Ordinario                                                     |
| 01** |                                                               |
+------+---------------------------------------------------------------+
| **RF | Contribuenti minimi (art.1, c.96-117, L. 244/07)              |
| 02** |                                                               |
+------+---------------------------------------------------------------+
| **RF | Nuove iniziative produttive (art.13, L. 388/00)               |
| 03** |                                                               |
+------+---------------------------------------------------------------+
| **RF | Agricoltura e attività connesse e pesca (artt.34 e 34-bis,    |
| 04** | DPR 633/72)                                                   |
+------+---------------------------------------------------------------+
| **RF | Vendita sali e tabacchi (art.74, c.1, DPR. 633/72)            |
| 05** |                                                               |
+------+---------------------------------------------------------------+
| **RF | Commercio fiammiferi (art.74, c.1, DPR 633/72)                |
| 06** |                                                               |
+------+---------------------------------------------------------------+
| **RF | Editoria (art.74, c.1, DPR 633/72)                            |
| 07** |                                                               |
+------+---------------------------------------------------------------+
| **RF | Gestione servizi telefonia pubblica (art.74, c.1, DPR 633/72) |
| 08** |                                                               |
+------+---------------------------------------------------------------+
| **RF | Rivendita documenti di trasporto pubblico e di sosta (art.74, |
| 09** | c.1, DPR 633/72)                                              |
+------+---------------------------------------------------------------+
| **RF | Intrattenimenti, giochi e altre attività di cui alla tariffa  |
| 10** | allegata al DPR 640/72 (art.74, c.6, DPR 633/72)              |
+------+---------------------------------------------------------------+
| **RF | Agenzie viaggi e turismo (art.74-ter, DPR 633/72)             |
| 11** |                                                               |
+------+---------------------------------------------------------------+
| **RF | Agriturismo (art.5, c.2, L. 413/91)                           |
| 12** |                                                               |
+------+---------------------------------------------------------------+
| **RF | Vendite a domicilio (art.25-bis, c.6, DPR 600/73)             |
| 13** |                                                               |
+------+---------------------------------------------------------------+
| **RF | Rivendita beni usati, oggetti d’arte, d’antiquariato o da     |
| 14** | collezione (art.36, DL 41/95)                                 |
+------+---------------------------------------------------------------+
| **RF | Agenzie di vendite all’asta di oggetti d’arte, antiquariato o |
| 15** | da collezione (art.40-bis, DL 41/95)                          |
+------+---------------------------------------------------------------+
| **RF | IVA per cassa P.A. (art.6, c.5, DPR 633/72)                   |
| 16** |                                                               |
+------+---------------------------------------------------------------+
| **RF | IVA per cassa (art. 32-bis, DL 83/2012)                       |
| 17** |                                                               |
+------+---------------------------------------------------------------+
| **RF | Altro                                                         |
| 18** |                                                               |
+------+---------------------------------------------------------------+
| **RF | Regime forfettario (art.1, c.54-89, L. 190/2014)              |
| 19** |                                                               |
+------+---------------------------------------------------------------+

**Appendice 2 - Esempio di fattura elettronica (formato .xml) compilata
per l’iniziativa CARTADELDOCENTE**

Si riporta nel seguito un esempio di fattura elettronica in formato XML
conforme allo standard di fatturazione elettronica e alle linee guida
specifiche fornite per l’iniziativa CartaDelDocente.

<ns2:FatturaElettronica versione='FPA12'
`xmlns:ns2='http://ivaservizi.agenziaentrate.gov.it/docs/xsd/fatture/v1.2'> <http://ivaservizi.agenziaentrate.gov.it/docs/xsd/fatture/v1.2%27>`__

<FatturaElettronicaHeader>

<DatiTrasmissione>

<IdTrasmittente>

<IdPaese>IT</IdPaese>

<IdCodice>ABCDEF00A11B123C</IdCodice>

</IdTrasmittente>

<ProgressivoInvio>0</ProgressivoInvio>

<FormatoTrasmissione>FPA12</FormatoTrasmissione>

<CodiceDestinatario>CY0MHE</CodiceDestinatario>

</DatiTrasmissione>

<CedentePrestatore>

<DatiAnagrafici>

<IdFiscaleIVA>

<IdPaese>IT</IdPaese>

<IdCodice>100000000</IdCodice>

</IdFiscaleIVA>

<CodiceFiscale>1000000000</CodiceFiscale>

<Anagrafica>

<Denominazione>Libreria Mario RossiDenominazione>

</Anagrafica>

<RegimeFiscale>RF01</RegimeFiscale>

</DatiAnagrafici>

<Sede>

<Indirizzo>Via Esempio</Indirizzo>

<NumeroCivico>1</NumeroCivico>

<CAP>00100</CAP>

<Comune>Roma</Comune>

<Provincia>RM</Provincia>

<Nazione>IT</Nazione>

</Sede>

<Contatti>

<Telefono>123456789</Telefono>

<Email>esempio@esempio.it</Email> <mailto:esempio@esempio.it>_\_

</Contatti>

</CedentePrestatore>

<CessionarioCommittente>

<Sede>

<Nazione>IT</Nazione>

<Indirizzo>Via del Collegio Romano</Indirizzo>

<NumeroCivico>27</NumeroCivico>

<CAP>00186</CAP>

<Comune>Roma</Comune>

<Provincia>RM</Provincia>

</Sede>

<DatiAnagrafici>

<CodiceFiscale>97904380587</CodiceFiscale>

<Anagrafica>

<Denominazione>Ministero dei Beni e delle Attività Culturali e del
Turismo</Denominazione>

</Anagrafica>

</DatiAnagrafici>

</CessionarioCommittente>

</FatturaElettronicaHeader>

<FatturaElettronicaBody>

<DatiBeniServizi>

<DettaglioLinee>

<CodiceArticolo>

<CodiceValore>hul09Tk</CodiceValore>

<CodiceTipo>CARTADELDOCENTE</CodiceTipo>

</CodiceArticolo>

<PrezzoTotale>10.00</PrezzoTotale>

<Descrizione>Pagamento Buono</Descrizione>

<Quantita>1.00</Quantita>

<PrezzoUnitario>10.00</PrezzoUnitario>

<AliquotaIVA>0.00</AliquotaIVA>

<Natura>N2</Natura>

<NumeroLinea>1</NumeroLinea>

</DettaglioLinee>

<DatiRiepilogo>

<AliquotaIVA>0.00</AliquotaIVA>

<ImponibileImporto>10.00</ImponibileImporto>

<Natura>N2</Natura>

<Imposta>0.00</Imposta>

<RiferimentoNormativo>Art. 2 DPR 633/72</RiferimentoNormativo>

</DatiRiepilogo>

</DatiBeniServizi>

<DatiGenerali>

<DatiGeneraliDocumento>

<TipoDocumento>TD01</TipoDocumento>

<Numero>1</Numero>

<Data>2017-01-10</Data>

<ImportoTotaleDocumento>10.00</ImportoTotaleDocumento>

<Divisa>EUR</Divisa>

</DatiGeneraliDocumento>

</DatiGenerali>

<DatiPagamento>

<DettaglioPagamento>

<Beneficiario>Mario Rossi</Beneficiario>

<ModalitaPagamento>MP05</ModalitaPagamento>

<ImportoPagamento>10.00</ImportoPagamento>

<IBAN>IT0000000000000000</IBAN>

</DettaglioPagamento>

<CondizioniPagamento>TP02</CondizioniPagamento>

</DatiPagamento>

</FatturaElettronicaBody>

</ns2:FatturaElettronica>

Appendice 3: regole tecniche di dettaglio per la compilazione della fattura
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

La valorizzazione degli elementi del tracciato xml deve rispettare i
requisiti formali e di obbligatorietà previsti dalle regole di
fatturazione elettronica e deve tener conto delle ulteriori indicazioni
riportate nella tabella seguente:

+----+---+-----------------------------------------------------+----+---+
|    |   | **ID e Nome Tag XML**                               | ** | * |
|    |   |                                                     | De | * |
|    |   |                                                     | sc | N |
|    |   |                                                     | ri | O |
|    |   |                                                     | zi | T |
|    |   |                                                     | on | E |
|    |   |                                                     | e  | * |
|    |   |                                                     | fu | * |
|    |   |                                                     | nz |   |
|    |   |                                                     | io |   |
|    |   |                                                     | na |   |
|    |   |                                                     | le |   |
|    |   |                                                     | ** |   |
+====+===+=====================================================+====+===+
| ** |   |                                                     |    |   |
| 1  |   |                                                     |    |   |
| <F |   |                                                     |    |   |
| at |   |                                                     |    |   |
| tu |   |                                                     |    |   |
| ra |   |                                                     |    |   |
| El |   |                                                     |    |   |
| et |   |                                                     |    |   |
| tr |   |                                                     |    |   |
| on |   |                                                     |    |   |
| ic |   |                                                     |    |   |
| aH |   |                                                     |    |   |
| ea |   |                                                     |    |   |
| de |   |                                                     |    |   |
| r> |   |                                                     |    |   |
| ** |   |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | blocco sempre obbligatorio contenente informazioni  |    |   |
|    | * | che identificano univocamente il soggetto che       |    |   |
|    | 1 | trasmette, il documento trasmesso, il               |    |   |
|    | . |                                                     |    |   |
|    | 1 | formato in cui è stato trasmesso il documento, il   |    |   |
|    | < | soggetto destinatario                               |    |   |
|    | D |                                                     |    |   |
|    | a |                                                     |    |   |
|    | t |                                                     |    |   |
|    | i |                                                     |    |   |
|    | T |                                                     |    |   |
|    | r |                                                     |    |   |
|    | a |                                                     |    |   |
|    | s |                                                     |    |   |
|    | m |                                                     |    |   |
|    | i |                                                     |    |   |
|    | s |                                                     |    |   |
|    | s |                                                     |    |   |
|    | i |                                                     |    |   |
|    | o |                                                     |    |   |
|    | n |                                                     |    |   |
|    | e |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | è l’identificativo univoco del soggetto             |    |   |
|    | * | trasmittente; per i soggetti residenti in Italia,   |    |   |
|    | 1 | siano essi persone fisiche o giuridiche,            |    |   |
|    | . | corrisponde al codice fiscale preceduto da **IT**;  |    |   |
|    | 1 | per i soggetti non residenti corrisponde al numero  |    |   |
|    | . | identificativo IVA (dove i primi due caratteri      |    |   |
|    | 1 | rappresentano il paese secondo lo standard ISO      |    |   |
|    | < | 3166-1 alpha-2 code, ed i restanti, fino ad un      |    |   |
|    | I |                                                     |    |   |
|    | d | massimo di 28, il codice vero e proprio)            |    |   |
|    | T |                                                     |    |   |
|    | r |                                                     |    |   |
|    | a |                                                     |    |   |
|    | s |                                                     |    |   |
|    | m |                                                     |    |   |
|    | i |                                                     |    |   |
|    | t |                                                     |    |   |
|    | t |                                                     |    |   |
|    | e |                                                     |    |   |
|    | n |                                                     |    |   |
|    | t |                                                     |    |   |
|    | e |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | codice della nazione espresso secondo lo standard   | [* |   |
|    | * | ISO 3166-1 alpha-2 code                             | *I |   |
|    | 1 |                                                     | T* |   |
|    | . |                                                     | *] |   |
|    | 1 |                                                     | ,  |   |
|    | . |                                                     | [* |   |
|    | 1 |                                                     | *E |   |
|    | . |                                                     | S* |   |
|    | 1 |                                                     | *] |   |
|    | < |                                                     | ,  |   |
|    | I |                                                     | [* |   |
|    | d |                                                     | *D |   |
|    | P |                                                     | K* |   |
|    | a |                                                     | *] |   |
|    | e |                                                     | ,[ |   |
|    | s |                                                     | ** |   |
|    | e |                                                     | …* |   |
|    | > |                                                     | *] |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | codice identificativo fiscale                       | fo |   |
|    | * |                                                     | rm |   |
|    | 1 |                                                     | at |   |
|    | . |                                                     | o  |   |
|    | 1 |                                                     | al |   |
|    | . |                                                     | fa |   |
|    | 1 |                                                     | nu |   |
|    | . |                                                     | me |   |
|    | 2 |                                                     | ri |   |
|    | < |                                                     | co |   |
|    | I |                                                     |    |   |
|    | d |                                                     |    |   |
|    | C |                                                     |    |   |
|    | o |                                                     |    |   |
|    | d |                                                     |    |   |
|    | i |                                                     |    |   |
|    | c |                                                     |    |   |
|    | e |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | progressivo univoco, attribuito dal soggetto che    | fo |   |
|    | * | trasmette, relativo ad ogni singolo documento       | rm |   |
|    | 1 | fattura                                             | at |   |
|    | . |                                                     | o  |   |
|    | 1 |                                                     | al |   |
|    | . |                                                     | fa |   |
|    | 2 |                                                     | nu |   |
|    | < |                                                     | me |   |
|    | P |                                                     | ri |   |
|    | r |                                                     | co |   |
|    | o |                                                     |    |   |
|    | g |                                                     |    |   |
|    | r |                                                     |    |   |
|    | e |                                                     |    |   |
|    | s |                                                     |    |   |
|    | s |                                                     |    |   |
|    | i |                                                     |    |   |
|    | v |                                                     |    |   |
|    | o |                                                     |    |   |
|    | I |                                                     |    |   |
|    | n |                                                     |    |   |
|    | v |                                                     |    |   |
|    | i |                                                     |    |   |
|    | o |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | contiene il codice identificativo del               | va |   |
|    | * | formato/versione con cui è stato trasmesso il       | lo |   |
|    | 1 | documento fattura                                   | ri |   |
|    | . |                                                     | am |   |
|    | 1 |                                                     | me |   |
|    | . |                                                     | ss |   |
|    | 3 |                                                     | i: |   |
|    | * |                                                     | [* |   |
|    | * |                                                     | *F |   |
|    |   |                                                     | PA |   |
|    | * |                                                     | 12 |   |
|    | * |                                                     | ** |   |
|    | < |                                                     | ]  |   |
|    | F |                                                     |    |   |
|    | o |                                                     |    |   |
|    | r |                                                     |    |   |
|    | m |                                                     |    |   |
|    | a |                                                     |    |   |
|    | t |                                                     |    |   |
|    | o |                                                     |    |   |
|    | T |                                                     |    |   |
|    | r |                                                     |    |   |
|    | a |                                                     |    |   |
|    | s |                                                     |    |   |
|    | m |                                                     |    |   |
|    | i |                                                     |    |   |
|    | s |                                                     |    |   |
|    | s |                                                     |    |   |
|    | i |                                                     |    |   |
|    | o |                                                     |    |   |
|    | n |                                                     |    |   |
|    | e |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | codice dell'ufficio dell’amministrazione dello      | co |   |
|    | * | stato destinatario della                            | di |   |
|    | 1 |                                                     | ce |   |
|    | . | fattura, definito dall'amministrazione di           | IP |   |
|    | 1 | appartenenza come riportato nella rubrica “Indice   | A  |   |
|    | . | PA”.                                                | da |   |
|    | 4 |                                                     | in |   |
|    | < |                                                     | di |   |
|    | C |                                                     | ca |   |
|    | o |                                                     | re |   |
|    | d |                                                     | :  |   |
|    | i |                                                     | ** |   |
|    | c |                                                     | QG |   |
|    | e |                                                     | GT |   |
|    | D |                                                     | 71 |   |
|    | e |                                                     | ** |   |
|    | s |                                                     |    |   |
|    | t |                                                     |    |   |
|    | i |                                                     |    |   |
|    | n |                                                     |    |   |
|    | a |                                                     |    |   |
|    | t |                                                     |    |   |
|    | a |                                                     |    |   |
|    | r |                                                     |    |   |
|    | i |                                                     |    |   |
|    | o |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | blocco sempre obbligatorio contenente dati relativi |    |   |
|    | * | al cedente / prestatore                             |    |   |
|    | 1 |                                                     |    |   |
|    | . |                                                     |    |   |
|    | 2 |                                                     |    |   |
|    | < |                                                     |    |   |
|    | C |                                                     |    |   |
|    | e |                                                     |    |   |
|    | d |                                                     |    |   |
|    | e |                                                     |    |   |
|    | n |                                                     |    |   |
|    | t |                                                     |    |   |
|    | e |                                                     |    |   |
|    | P |                                                     |    |   |
|    | r |                                                     |    |   |
|    | e |                                                     |    |   |
|    | s |                                                     |    |   |
|    | t |                                                     |    |   |
|    | a |                                                     |    |   |
|    | t |                                                     |    |   |
|    | o |                                                     |    |   |
|    | r |                                                     |    |   |
|    | e |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | blocco sempre obbligatorio contenente i dati        |    |   |
|    | * | anagrafici, professionali e fiscali del cedente /   |    |   |
|    | 1 | prestatore                                          |    |   |
|    | . |                                                     |    |   |
|    | 2 |                                                     |    |   |
|    | . |                                                     |    |   |
|    | 1 |                                                     |    |   |
|    | < |                                                     |    |   |
|    | D |                                                     |    |   |
|    | a |                                                     |    |   |
|    | t |                                                     |    |   |
|    | i |                                                     |    |   |
|    | A |                                                     |    |   |
|    | n |                                                     |    |   |
|    | a |                                                     |    |   |
|    | g |                                                     |    |   |
|    | r |                                                     |    |   |
|    | a |                                                     |    |   |
|    | f |                                                     |    |   |
|    | i |                                                     |    |   |
|    | c |                                                     |    |   |
|    | i |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | numero di identificazione fiscale ai fini IVA; i    |    |   |
|    | * | primi due caratteri rappresentano il paese (        |    |   |
|    | 1 | **IT**, **DE**, **ES** …..) ed i restanti (fino ad  |    |   |
|    | . | un massimo di 28) il codice vero e proprio che, per |    |   |
|    | 2 | i residenti in Italia, corrisponde al               |    |   |
|    | . |                                                     |    |   |
|    | 1 | numero di partita IVA.                              |    |   |
|    | . |                                                     |    |   |
|    | 1 |                                                     |    |   |
|    | < |                                                     |    |   |
|    | I |                                                     |    |   |
|    | d |                                                     |    |   |
|    | F |                                                     |    |   |
|    | i |                                                     |    |   |
|    | s |                                                     |    |   |
|    | c |                                                     |    |   |
|    | a |                                                     |    |   |
|    | l |                                                     |    |   |
|    | e |                                                     |    |   |
|    | I |                                                     |    |   |
|    | V |                                                     |    |   |
|    | A |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | codice della nazione espresso secondo lo standard   | [* |   |
|    | * | ISO 3166-1 alpha-2 code                             | *I |   |
|    | 1 |                                                     | T* |   |
|    | . |                                                     | *] |   |
|    | 2 |                                                     | ,  |   |
|    | . |                                                     | [* |   |
|    | 1 |                                                     | *E |   |
|    | . |                                                     | S* |   |
|    | 1 |                                                     | *] |   |
|    | . |                                                     | ,  |   |
|    | 1 |                                                     | [* |   |
|    | < |                                                     | *D |   |
|    | I |                                                     | K* |   |
|    | d |                                                     | *] |   |
|    | P |                                                     | ,[ |   |
|    | a |                                                     | ** |   |
|    | e |                                                     | …* |   |
|    | s |                                                     | *] |   |
|    | e |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | codice identificativo fiscale                       | fo |   |
|    | * |                                                     | rm |   |
|    | 1 |                                                     | at |   |
|    | . |                                                     | o  |   |
|    | 2 |                                                     | al |   |
|    | . |                                                     | fa |   |
|    | 1 |                                                     | nu |   |
|    | . |                                                     | me |   |
|    | 1 |                                                     | ri |   |
|    | . |                                                     | co |   |
|    | 2 |                                                     |    |   |
|    | < |                                                     |    |   |
|    | I |                                                     |    |   |
|    | d |                                                     |    |   |
|    | C |                                                     |    |   |
|    | o |                                                     |    |   |
|    | d |                                                     |    |   |
|    | i |                                                     |    |   |
|    | c |                                                     |    |   |
|    | e |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | numero di Codice Fiscale                            | fo |   |
|    | * |                                                     | rm |   |
|    | 1 |                                                     | at |   |
|    | . |                                                     | o  |   |
|    | 2 |                                                     | al |   |
|    | . |                                                     | fa |   |
|    | 1 |                                                     | nu |   |
|    | . |                                                     | me |   |
|    | 2 |                                                     | ri |   |
|    | < |                                                     | co |   |
|    | C |                                                     |    |   |
|    | o |                                                     |    |   |
|    | d |                                                     |    |   |
|    | i |                                                     |    |   |
|    | c |                                                     |    |   |
|    | e |                                                     |    |   |
|    | F |                                                     |    |   |
|    | i |                                                     |    |   |
|    | s |                                                     |    |   |
|    | c |                                                     |    |   |
|    | a |                                                     |    |   |
|    | l |                                                     |    |   |
|    | e |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | dati anagrafici identificativi del cedente /        |    |   |
|    | * | prestatore                                          |    |   |
|    | 1 |                                                     |    |   |
|    | . |                                                     |    |   |
|    | 2 |                                                     |    |   |
|    | . |                                                     |    |   |
|    | 1 |                                                     |    |   |
|    | . |                                                     |    |   |
|    | 3 |                                                     |    |   |
|    | < |                                                     |    |   |
|    | A |                                                     |    |   |
|    | n |                                                     |    |   |
|    | a |                                                     |    |   |
|    | g |                                                     |    |   |
|    | r |                                                     |    |   |
|    | a |                                                     |    |   |
|    | f |                                                     |    |   |
|    | i |                                                     |    |   |
|    | c |                                                     |    |   |
|    | a |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | ditta, denominazione o ragione sociale (ditta,      | fo |   |
|    | * | impresa, società, ente), da valorizzare in          | rm |   |
|    | 1 | alternativa ai campi **1.2.1.3.2** e **1.2.1.3.3**  | at |   |
|    | . |                                                     | o  |   |
|    | 2 |                                                     | al |   |
|    | . |                                                     | fa |   |
|    | 1 |                                                     | nu |   |
|    | . |                                                     | me |   |
|    | 3 |                                                     | ri |   |
|    | . |                                                     | co |   |
|    | 1 |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
|    |   |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
|    | < |                                                     |    |   |
|    | D |                                                     |    |   |
|    | e |                                                     |    |   |
|    | n |                                                     |    |   |
|    | o |                                                     |    |   |
|    | m |                                                     |    |   |
|    | i |                                                     |    |   |
|    | n |                                                     |    |   |
|    | a |                                                     |    |   |
|    | z |                                                     |    |   |
|    | i |                                                     |    |   |
|    | o |                                                     |    |   |
|    | n |                                                     |    |   |
|    | e |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | nome della persona fisica. Da valorizzare insieme   | fo |   |
|    | * | al campo **1.2.1.3.3** ed in alternativa al campo   | rm |   |
|    | 1 | **1.2.1.3.1**                                       | at |   |
|    | . |                                                     | o  |   |
|    | 2 |                                                     | al |   |
|    | . |                                                     | fa |   |
|    | 1 |                                                     | nu |   |
|    | . |                                                     | me |   |
|    | 3 |                                                     | ri |   |
|    | . |                                                     | co |   |
|    | 2 |                                                     |    |   |
|    | < |                                                     |    |   |
|    | N |                                                     |    |   |
|    | o |                                                     |    |   |
|    | m |                                                     |    |   |
|    | e |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | cognome della persona fisica. Da valorizzare        | fo |   |
|    | * | insieme al campo **1.2.1.3.2**                      | rm |   |
|    | 1 |                                                     | at |   |
|    | . | ed in alternativa al campo **1.2.1.3.1**            | o  |   |
|    | 2 |                                                     | al |   |
|    | . |                                                     | fa |   |
|    | 1 |                                                     | nu |   |
|    | . |                                                     | me |   |
|    | 3 |                                                     | ri |   |
|    | . |                                                     | co |   |
|    | 3 |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
|    |   |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
|    | < |                                                     |    |   |
|    | C |                                                     |    |   |
|    | o |                                                     |    |   |
|    | g |                                                     |    |   |
|    | n |                                                     |    |   |
|    | o |                                                     |    |   |
|    | m |                                                     |    |   |
|    | e |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+
|    | * | numero del Codice EORI (Economic Operator           | fo |   |
|    | * | Registration and                                    | rm |   |
|    | 1 |                                                     | at |   |
|    | . | Identification) in base al Regolamento (CE) n. 312  | o  |   |
|    | 2 | del 16 aprile 2009. In vigore dal 1 luglio 2009     | al |   |
|    | . |                                                     | fa |   |
|    | 1 |                                                     | nu |   |
|    | . |                                                     | me |   |
|    | 3 |                                                     | ri |   |
|    | . |                                                     | co |   |
|    | 5 |                                                     |    |   |
|    | < |                                                     |    |   |
|    | C |                                                     |    |   |
|    | o |                                                     |    |   |
|    | d |                                                     |    |   |
|    | E |                                                     |    |   |
|    | O |                                                     |    |   |
|    | R |                                                     |    |   |
|    | I |                                                     |    |   |
|    | > |                                                     |    |   |
|    | * |                                                     |    |   |
|    | * |                                                     |    |   |
+----+---+-----------------------------------------------------+----+---+

+---+-----+-----------------------------------------+-------------------+---+
|   |     | **ID e Nome Tag XML**                   | **Descrizione     | * |
|   |     |                                         | funzionale**      | * |
|   |     |                                         |                   | N |
|   |     |                                         |                   | O |
|   |     |                                         |                   | T |
|   |     |                                         |                   | E |
|   |     |                                         |                   | * |
|   |     |                                         |                   | * |
+===+=====+=========================================+===================+===+
|   | **1 | regime fiscale                          | valori ammessi:   |   |
|   | .2. |                                         |                   |   |
|   | 1.8 |                                         | **vedi tabella    |   |
|   | <Re |                                         | dei Codici dei    |   |
|   | gim |                                         | regimi fiscali    |   |
|   | eFi |                                         | riportata in      |   |
|   | sca |                                         | Appendice 1**     |   |
|   | le> |                                         |                   |   |
|   | **  |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | blocco sempre obbligatorio contenente i |                   |   |
|   | .2. | dati della sede del cedente /           |                   |   |
|   | 2   | prestatore                              |                   |   |
|   | <Se |                                         |                   |   |
|   | de> |                                         |                   |   |
|   | **  |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | indirizzo della sede del cedente o      | formato           |   |
|   | .2. | prestatore (nome della via, piazza      | alfanumerico      |   |
|   | 2.1 | etc.)                                   |                   |   |
|   | <In |                                         |                   |   |
|   | dir |                                         |                   |   |
|   | izz |                                         |                   |   |
|   | o>* |                                         |                   |   |
|   | *   |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | numero civico riferito all'indirizzo    | formato           |   |
|   | .2. | (non indicare se già presente nel campo | alfanumerico      |   |
|   | 2.2 | indirizzo)                              |                   |   |
|   | <Nu |                                         |                   |   |
|   | mer |                                         |                   |   |
|   | oCi |                                         |                   |   |
|   | vic |                                         |                   |   |
|   | o>* |                                         |                   |   |
|   | *   |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | Codice Avviamento Postale               | formato numerico  |   |
|   | .2. |                                         |                   |   |
|   | 2.3 |                                         |                   |   |
|   | <CA |                                         |                   |   |
|   | P>* |                                         |                   |   |
|   | *   |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | comune relativo alla sede del cedente / | formato           |   |
|   | .2. | prestatore                              | alfanumerico      |   |
|   | 2.4 |                                         |                   |   |
|   | <Co |                                         |                   |   |
|   | mun |                                         |                   |   |
|   | e>* |                                         |                   |   |
|   | *   |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | sigla della provincia di appartenenza   | [**RM**],         |   |
|   | .2. | del comune indicato nel campo           | [**MI**], [**…**] |   |
|   | 2.5 |                                         |                   |   |
|   | <Pr | **1.2.2.4**                             |                   |   |
|   | ovi |                                         |                   |   |
|   | nci |                                         |                   |   |
|   | a>* |                                         |                   |   |
|   | *   |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | codice della nazione espresso secondo   | [**IT**],         |   |
|   | .2. | lo standard ISO 3166-1 alpha-2 code     | [**ES**],         |   |
|   | 2.6 |                                         | [**DK**],[**…**]  |   |
|   | <Na |                                         |                   |   |
|   | zio |                                         |                   |   |
|   | ne> |                                         |                   |   |
|   | **  |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | dati relativi ai contatti del cedente / |                   |   |
|   | .2. | prestatore                              |                   |   |
|   | 5   |                                         |                   |   |
|   | <Co |                                         |                   |   |
|   | nta |                                         |                   |   |
|   | tti |                                         |                   |   |
|   | >** |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | contatto telefonico fisso o mobile      | Necessariamente   |   |
|   | .2. |                                         | da valorizzare    |   |
|   | 5.1 |                                         | per               |   |
|   | <Te |                                         |                   |   |
|   | lef |                                         | essere            |   |
|   | ono |                                         | eventualmente     |   |
|   | >** |                                         | contattati per    |   |
|   |     |                                         | chiarimenti       |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | indirizzo di posta elettronica          | Necessariamente   |   |
|   | .2. |                                         | da valorizzare    |   |
|   | 5.3 |                                         | per essere        |   |
|   | <Em |                                         | eventualmente     |   |
|   | ail |                                         | contattati per    |   |
|   | >** |                                         |                   |   |
|   |     |                                         | chiarimenti       |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | codice identificativo del cedente /     | Necessariamente   |   |
|   | .2. | prestatore ai fini                      | da valorizzare    |   |
|   | 6** | amministrativo-contabili                | riportando        |   |
|   |     |                                         | fedelmente il     |   |
|   | **< |                                         | Codice esercente  |   |
|   | Rif |                                         | assegnato         |   |
|   | eri |                                         | all’esercente     |   |
|   | men |                                         | dall’applicazione |   |
|   | toA |                                         |                   |   |
|   | mmi |                                         | CARTADELDOCENTE3  |   |
|   | nis |                                         |                   |   |
|   | tra |                                         |                   |   |
|   | zio |                                         |                   |   |
|   | n   |                                         |                   |   |
|   | e>* |                                         |                   |   |
|   | *   |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | blocco sempre obbligatorio contenente   | **Dati relativi   |   |
|   | .4* | dati relativi al cessionario /          | al Ministero**    |   |
|   | *   | committente                             |                   |   |
|   |     |                                         | **dell’Istruzione |   |
|   | **< |                                         | ,                 |   |
|   | Ces |                                         | dell’Università e |   |
|   | sio |                                         | della Ricerca**   |   |
|   | nar |                                         |                   |   |
|   | ioC |                                         |                   |   |
|   | omm |                                         |                   |   |
|   | itt |                                         |                   |   |
|   | ent |                                         |                   |   |
|   | e>* |                                         |                   |   |
|   | *   |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | blocco contenente i dati fiscali e      |                   |   |
|   | .4. | anagrafici del cessionario/committente  |                   |   |
|   | 1   |                                         |                   |   |
|   | <Da |                                         |                   |   |
|   | tiA |                                         |                   |   |
|   | nag |                                         |                   |   |
|   | raf |                                         |                   |   |
|   | ici |                                         |                   |   |
|   | >** |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | numero di Codice Fiscale                | valore da         |   |
|   | .4. |                                         | indicare:         |   |
|   | 1.2 |                                         | **80185250588**   |   |
|   | <Co |                                         |                   |   |
|   | dic |                                         |                   |   |
|   | eFi |                                         |                   |   |
|   | sca |                                         |                   |   |
|   | le> |                                         |                   |   |
|   | **  |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | dati anagrafici identificativi del      |                   |   |
|   | .4. | cessionario/committente                 |                   |   |
|   | 1.3 |                                         |                   |   |
|   | <An |                                         |                   |   |
|   | agr |                                         |                   |   |
|   | afi |                                         |                   |   |
|   | ca> |                                         |                   |   |
|   | **  |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | ditta, denominazione o ragione sociale  | Ministero         |   |
|   | .4. | (ditta, impresa, società, ente), da     | dell’Istruzione,  |   |
|   | 1.3 | valorizzare in alternativa ai campi     | dell’Università e |   |
|   | .1* | **1.4.1.3.2** e **1.4.1.3.3**           | della Ricerca     |   |
|   | *   |                                         |                   |   |
|   |     |                                         |                   |   |
|   | **< |                                         |                   |   |
|   | Den |                                         |                   |   |
|   | omi |                                         |                   |   |
|   | naz |                                         |                   |   |
|   | ion |                                         |                   |   |
|   | e>* |                                         |                   |   |
|   | *   |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | blocco sempre obbligatorio contenente i |                   |   |
|   | .4. | dati della sede del cessionario /       |                   |   |
|   | 2   | committente (nel caso di                |                   |   |
|   | <Se | somministrazione di servizi quali       |                   |   |
|   | de> | energia elettrica, gas … , i dati       |                   |   |
|   | **  | possono fare riferimento all'ubicazione |                   |   |
|   |     | dell'utenza, ex DM 370/2000)            |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | indirizzo della sede del cessionario /  | Viale Trastevere  |   |
|   | .4. | committente (nome della via, piazza     |                   |   |
|   | 2.1 | etc.)                                   |                   |   |
|   | <In |                                         |                   |   |
|   | dir |                                         |                   |   |
|   | izz |                                         |                   |   |
|   | o>* |                                         |                   |   |
|   | *   |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | numero civico riferito all'indirizzo    | 17/a              |   |
|   | .4. | (non indicare se già presente nel campo |                   |   |
|   | 2.2 | indirizzo)                              |                   |   |
|   | <Nu |                                         |                   |   |
|   | mer |                                         |                   |   |
|   | oCi |                                         |                   |   |
|   | vic |                                         |                   |   |
|   | o>* |                                         |                   |   |
|   | *   |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+
|   | **1 | Codice Avviamento Postale               | 00153             |   |
|   | .4. |                                         |                   |   |
|   | 2.3 |                                         |                   |   |
|   | <CA |                                         |                   |   |
|   | P>* |                                         |                   |   |
|   | *   |                                         |                   |   |
+---+-----+-----------------------------------------+-------------------+---+

3 Riportare fedelmente tale codice, per il quale sono significativi e
distinti i caratteri maiuscoli da quelli minuscoli (codice *case
sensitive*)

+---+--------------------+-------------------------------+-----------+---+
|   |                    | **ID e Nome Tag XML**         | **Descriz | * |
|   |                    |                               | ione      | * |
|   |                    |                               | funzional | N |
|   |                    |                               | e**       | O |
|   |                    |                               |           | T |
|   |                    |                               |           | E |
|   |                    |                               |           | * |
|   |                    |                               |           | * |
+===+====================+===============================+===========+===+
|   | **1.4.2.4          | comune relativo alla stabile  | ROMA      |   |
|   | <Comune>**         | organizzazione in Italia      |           |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **1.4.2.5          | sigla della provincia di      | RM        |   |
|   | <Provincia>**      | appartenenza del comune       |           |   |
|   |                    | indicato nel campo            |           |   |
|   |                    |                               |           |   |
|   |                    | **1.4.2.4**                   |           |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **1.4.2.6          | codice della nazione espresso | IT        |   |
|   | <Nazione>**        | secondo lo standard ISO       |           |   |
|   |                    | 3166-1 alpha-2 code           |           |   |
+---+--------------------+-------------------------------+-----------+---+
| * | il blocco ha       |                               |           |   |
| * | molteplicità pari  |                               |           |   |
| 2 | a 1 nel caso di    |                               |           |   |
| < | fattura singola;   |                               |           |   |
| F | nel caso di lotto  |                               |           |   |
| a | di fatture, si     |                               |           |   |
| t | ripete per ogni    |                               |           |   |
| t | fattura componente |                               |           |   |
| u | il lotto stesso    |                               |           |   |
| r |                    |                               |           |   |
| a |                    |                               |           |   |
| E |                    |                               |           |   |
| l |                    |                               |           |   |
| e |                    |                               |           |   |
| t |                    |                               |           |   |
| t |                    |                               |           |   |
| r |                    |                               |           |   |
| o |                    |                               |           |   |
| n |                    |                               |           |   |
| i |                    |                               |           |   |
| c |                    |                               |           |   |
| a |                    |                               |           |   |
| B |                    |                               |           |   |
| o |                    |                               |           |   |
| d |                    |                               |           |   |
| y |                    |                               |           |   |
| > |                    |                               |           |   |
| * |                    |                               |           |   |
| * |                    |                               |           |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.1              | blocco sempre obbligatorio    |           |   |
|   | <DatiGenerali>**   | contenente i dati generali    |           |   |
|   |                    | del documento principale ed i |           |   |
|   |                    | dati dei documenti correlati  |           |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.1.1**          | blocco sempre obbligatorio    |           |   |
|   |                    | contenente i dati generali    |           |   |
|   | **<DatiGeneraliDoc | del documento principale      |           |   |
|   | umento>**          |                               |           |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.1.1.1**        | tipologia di documento        | valore    |   |
|   |                    |                               | ammesso:  |   |
|   | **<TipoDocumento>* |                               | TD01      |   |
|   | *                  |                               |           |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.1.1.2          | codice (espresso secondo lo   | valore    |   |
|   | <Divisa>**         | standard ISO 4217             | ammesso:  |   |
|   |                    | alpha-3:2001) della valuta    | EUR       |   |
|   |                    | utilizzata per l'indicazione  |           |   |
|   |                    | degli importi                 |           |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.1.1.3 <Data>** | data del documento (secondo   | formato   |   |
|   |                    | il formato ISO 8601:2004)     | ISO       |   |
|   |                    |                               | 8601:2004 |   |
|   |                    |                               | ,         |   |
|   |                    |                               | con la    |   |
|   |                    |                               | precision |   |
|   |                    |                               | e         |   |
|   |                    |                               | seguente: |   |
|   |                    |                               | **YYYY-MM |   |
|   |                    |                               | -DD**     |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.1.1.4          | numero progressivo del        | formato   |   |
|   | <Numero>**         | documento                     | alfanumer |   |
|   |                    |                               | ico       |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.1.1.6          | blocco dati relativi al bollo |           |   |
|   | <DatiBollo>**      |                               |           |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.1.1.6.1**      | bollo assolto ai sensi del    | valore    |   |
|   |                    | decreto MEF 17 giugno 2014    | ammesso   |   |
|   | **<BolloVirtuale>* | (art. 6)                      |           |   |
|   | *                  |                               | **[NO]**  |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.1.1.9**        | importo totale del documento  | formato   |   |
|   |                    | al netto dell'eventuale       | numerico; |   |
|   | **<ImportoTotaleDo | sconto e comprensivo di       | i         |   |
|   | cument             | imposta a debito del          | decimali  |   |
|   | o>**               | cessionario / committente     | vanno     |   |
|   |                    |                               | separati  |   |
|   |                    |                               | dall'inte |   |
|   |                    |                               | ro        |   |
|   |                    |                               | con il    |   |
|   |                    |                               | carattere |   |
|   |                    |                               | '.'       |   |
|   |                    |                               | (punto)   |   |
|   |                    |                               |           |   |
|   |                    |                               | valore    |   |
|   |                    |                               | ammesso:  |   |
|   |                    |                               | valore    |   |
|   |                    |                               | del campo |   |
|   |                    |                               |           |   |
|   |                    |                               | 2.2.2.5   |   |
|   |                    |                               | Imponibil |   |
|   |                    |                               | eImporto  |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.2              | blocco sempre obbligatorio    |           |   |
|   | <DatiBeniServizi>* | contenente natura, qualità e  |           |   |
|   | *                  | quantità dei beni / servizi   |           |   |
|   |                    | formanti oggetto              |           |   |
|   |                    | dell'operazione               |           |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.2.1            | blocco sempre obbligatorio    |           |   |
|   | <DettaglioLinee>** | contenente le linee di        |           |   |
|   |                    | dettaglio del documento (i    |           |   |
|   |                    | campi del blocco si ripetono  |           |   |
|   |                    | per ogni riga di dettaglio)   |           |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.2.1.1          | numero della riga di          | formato   |   |
|   | <NumeroLinea>**    | dettaglio del documento       | numerico  |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.2.1.3          | eventuale codifica            |           |   |
|   | <CodiceArticolo>** | dell'articolo (la             |           |   |
|   |                    | molteplicità N del blocco     |           |   |
|   |                    | consente di gestire la        |           |   |
|   |                    | presenza di più codifiche)    |           |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.2.1.3.1**      | indica la tipologia di codice | valore    |   |
|   |                    | articolo (TARIC, CPV, EAN,    | ammesso:  |   |
|   | **<CodiceTipo>**   | SSC, ...)                     | CARTADELD |   |
|   |                    |                               | OCENTE    |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.2.1.3.2**      | indica il valore del codice   | Valore    |   |
|   |                    | articolo corrispondente alla  | obbligato |   |
|   | **<CodiceValore>** | tipologia riportata nel campo | rio       |   |
|   |                    | 2.2.1.3.1.                    | da        |   |
|   |                    |                               | indicare: |   |
|   |                    |                               | codice    |   |
|   |                    |                               | identific |   |
|   |                    |                               | ativo     |   |
|   |                    |                               | buono4    |   |
+---+--------------------+-------------------------------+-----------+---+
|   | **2.2.1.4          | natura e qualità dell'oggetto | valore    |   |
|   | <Descrizione>**    | della cessione/prestazione;   | ammesso:  |   |
|   |                    | può fare anche riferimento ad | PAGAMENTO |   |
|   |                    | un precedente documento       | BUONO     |   |
|   |                    | emesso a titolo di            |           |   |
|   |                    | 'anticipo/acconto' , nel qual |           |   |
|   |                    | caso il valore del campo      |           |   |
|   |                    | **2.2.1.9** e **2.2.1.11**    |           |   |
|   |                    | sarà negativo                 |           |   |
+---+--------------------+-------------------------------+-----------+---+

4 Riportare fedelmente tale codice, per il quale sono significativi e
distinti i caratteri maiuscoli da quelli minuscoli (codice *case
sensitive*)

+---+-----+-------------------------------+----------------------------+---+
|   |     | **ID e Nome Tag XML**         | **Descrizione funzionale** | * |
|   |     |                               |                            | * |
|   |     |                               |                            | N |
|   |     |                               |                            | O |
|   |     |                               |                            | T |
|   |     |                               |                            | E |
|   |     |                               |                            | * |
|   |     |                               |                            | * |
+===+=====+===============================+============================+===+
|   | **2 | prezzo unitario del           | formato numerico; i        |   |
|   | .2. | bene/servizio; nel caso di    | decimali vanno separati    |   |
|   | 1.9 | beni ceduti a titolo di       | dall'intero con il         |   |
|   | <Pr | sconto, premio o abbuono,     | carattere '.' (punto) –    |   |
|   | ezz | l'importo indicato            | valore da indicare:        |   |
|   | oUn | rappresenta il "valore        | importo                    |   |
|   | ita | normale"                      |                            |   |
|   | rio |                               | del buono                  |   |
|   | >** |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | importo totale del            | formato numerico; i        |   |
|   | .2. | bene/servizio (che tiene      | decimali vanno separati    |   |
|   | 1.1 | conto di eventuali sconti /   | dall'intero con il         |   |
|   | 1   | maggiorazioni) IVA esclusa    | carattere '.' (punto) –    |   |
|   | <Pr |                               | valore da indicare:        |   |
|   | ezz |                               | importo                    |   |
|   | oTo |                               |                            |   |
|   | tal |                               | del buono                  |   |
|   | e>* |                               |                            |   |
|   | *   |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | aliquota (%) IVA applicata al | formato numerico; i        |   |
|   | .2. | bene/servizio                 | decimali vanno separati    |   |
|   | 1.1 |                               | dall'intero con il         |   |
|   | 2   |                               | carattere '.' (punto) –    |   |
|   | <Al |                               | valore da indicare 0.00    |   |
|   | iqu |                               |                            |   |
|   | ota |                               |                            |   |
|   | IVA |                               |                            |   |
|   | >** |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | natura dell'operazione se non | valore ammesso: N2         |   |
|   | .2. | rientra tra quelle imponibili |                            |   |
|   | 1.1 | (il campo                     |                            |   |
|   | 4   |                               |                            |   |
|   | <Na | **2.2.1.12** deve essere      |                            |   |
|   | tur | valorizzato a zero)           |                            |   |
|   | a>* |                               |                            |   |
|   | *   |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | blocco sempre obbligatorio    |                            |   |
|   | .2. | contenente i dati di          |                            |   |
|   | 2   | riepilogo per ogni aliquota   |                            |   |
|   | <Da | IVA o natura                  |                            |   |
|   | tiR |                               |                            |   |
|   | iep |                               |                            |   |
|   | ilo |                               |                            |   |
|   | go> |                               |                            |   |
|   | **  |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | aliquota (%) IVA              | formato numerico; i        |   |
|   | .2. |                               | decimali vanno separati    |   |
|   | 2.1 |                               | dall'intero con il         |   |
|   | <Al |                               | carattere '.' (punto) –    |   |
|   | iqu |                               | valore da indicare 0.00    |   |
|   | ota |                               |                            |   |
|   | IVA |                               |                            |   |
|   | >** |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | natura delle operazioni       | valore ammesso: N2         |   |
|   | .2. | qualora non rientrino tra     |                            |   |
|   | 2.2 | quelle 'imponibili' o nei     |                            |   |
|   | <Na | casi di inversione contabile  |                            |   |
|   | tur |                               |                            |   |
|   | a>* |                               |                            |   |
|   | *   |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | questo valore rappresenta:    | formato numerico; i        |   |
|   | .2. |                               | decimali vanno separati    |   |
|   | 2.5 | **base imponibile**, per le   | dall'intero con il         |   |
|   | **  | operazioni soggette ad IVA;   | carattere '.' (punto) –    |   |
|   |     |                               | valore da indicare: somma  |   |
|   | **< | **importo**, per le           | degli importi dei buoni    |   |
|   | Imp | operazioni che non rientrano  |                            |   |
|   | oni | tra quelle 'imponibili'       |                            |   |
|   | bil | (campo                        |                            |   |
|   | eIm |                               |                            |   |
|   | por | **2.2.2.2** valorizzato)      |                            |   |
|   | to> |                               |                            |   |
|   | **  |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | imposta risultante            | formato numerico; i        |   |
|   | .2. | dall'applicazione             | decimali vanno separati    |   |
|   | 2.6 | dell'aliquota IVA             | dall'intero con il         |   |
|   | <Im | all'imponibile                | carattere '.' (punto) –    |   |
|   | pos |                               | valore da indicare 0.00    |   |
|   | ta> |                               |                            |   |
|   | **  |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | norma di riferimento          | valore ammesso: ART. 2 DPR |   |
|   | .2. | (obbligatoria nei casi in cui | 633/72                     |   |
|   | 2.8 | il campo **2.2.2.2** è        |                            |   |
|   | **  | valorizzato)                  |                            |   |
|   |     |                               |                            |   |
|   | **< |                               |                            |   |
|   | Rif |                               |                            |   |
|   | eri |                               |                            |   |
|   | men |                               |                            |   |
|   | toN |                               |                            |   |
|   | orm |                               |                            |   |
|   | ati |                               |                            |   |
|   | vo> |                               |                            |   |
|   | **  |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | dati relativi al pagamento    |                            |   |
|   | .4  |                               |                            |   |
|   | <Da |                               |                            |   |
|   | tiP |                               |                            |   |
|   | aga |                               |                            |   |
|   | men |                               |                            |   |
|   | to> |                               |                            |   |
|   | **  |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | condizioni di pagamento       | Valore ammesso:            |   |
|   | .4. |                               |                            |   |
|   | 1** |                               | [**TP02**]: pagamento      |   |
|   |     |                               | completo                   |   |
|   | **< |                               |                            |   |
|   | Con |                               |                            |   |
|   | diz |                               |                            |   |
|   | ion |                               |                            |   |
|   | iPa |                               |                            |   |
|   | gam |                               |                            |   |
|   | ent |                               |                            |   |
|   | o>* |                               |                            |   |
|   | *   |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | dati di dettaglio del         |                            |   |
|   | .4. | pagamento                     |                            |   |
|   | 2** |                               |                            |   |
|   |     |                               |                            |   |
|   | **< |                               |                            |   |
|   | Det |                               |                            |   |
|   | tag |                               |                            |   |
|   | lio |                               |                            |   |
|   | Pag |                               |                            |   |
|   | ame |                               |                            |   |
|   | nto |                               |                            |   |
|   | >** |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | modalità di pagamento         | Valore ammesso:            |   |
|   | .4. |                               | [**MP05**]: bonifico       |   |
|   | 2.2 |                               |                            |   |
|   | **  |                               |                            |   |
|   |     |                               |                            |   |
|   | **< |                               |                            |   |
|   | Mod |                               |                            |   |
|   | ali |                               |                            |   |
|   | taP |                               |                            |   |
|   | aga |                               |                            |   |
|   | men |                               |                            |   |
|   | to> |                               |                            |   |
|   | **  |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | importo relativo al pagamento | formato numerico; i        |   |
|   | .4. |                               | decimali vanno separati    |   |
|   | 2.6 |                               | dall'intero con il         |   |
|   | **  |                               | carattere '.' (punto)      |   |
|   |     |                               |                            |   |
|   | **< |                               | valore da indicare: lo     |   |
|   | Imp |                               | stesso valore del          |   |
|   | ort |                               |                            |   |
|   | oPa |                               | campo 2.1.1.9              |   |
|   | gam |                               | ImportoTotaleDocumento     |   |
|   | ent |                               |                            |   |
|   | o>* |                               |                            |   |
|   | *   |                               |                            |   |
+---+-----+-------------------------------+----------------------------+---+
|   | **2 | International Bank Account    | Valore da indicare: IBAN   |   |
|   | .4. | Number (coordinata bancaria   | del conto sul quale sarà   |   |
|   | 2.1 | internazionale                | effettuato il bonifico     |   |
|   | 3   |                               |                            |   |
|   | <IB | che consente di identificare, |                            |   |
|   | AN> | in maniera standard, il conto |                            |   |
|   | **  | corrente del beneficiario )   |                            |   |
+---+-----+-------------------------------+----------------------------+---+

.. |image12| image:: media/media/image13.png
   :width: 5.14997in
   :height: 1.42708in