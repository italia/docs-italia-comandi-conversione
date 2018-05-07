Metriche e strumenti
--------------------

Nel presente capitolo si illustrano in sintesi le metriche che sono state analizzate dal Tavolo di lavoro. Per ciascuna metrica si riportano proprietà, possibili contesti d’uso, vantaggi e criticità. Non si ha pretesa di esprimere valutazioni definitive, né di ordinare le metriche analizzate in una scala di merito. L’obiettivo del capitolo è invece presentare un ventaglio di possibili soluzioni alle esigenze delle P.A., tra cui le amministrazioni stesse possano scegliere, di volta in volta, sulla base delle proprie caratteristiche, delle iniziative in corso, delle risorse e competenze a disposizione.

Si precisa che le metriche che verranno di seguito presentate non sono necessariamente alternative tra loro ed esaustive. Benché presentino aree di sovrapposizione, è senz’altro possibile utilizzarne più di una in maniera complementare, sfruttando opportunamente le loro caratteristiche, per ottenere il risultato voluto, che non sarà solo legato alla quantificazione dei corrispettivi per il fornitore, ma anche alla definizione efficace di livelli di servizio. Nel capitolo 6 si forniranno esempi in tal senso.

Importanza delle metriche di prodotto
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Come detto, il Tavolo di lavoro ha focalizzato l’analisi sulle metriche del software inteso come prodotto. Si ritiene opportuno ribadire e approfondire qui di seguito la motivazione di questa scelta.

Riprendendo quanto osservato nel §1.3, nelle usuali forniture di sviluppo e manutenzione di prodotti software delle P.A. si riscontrano le seguenti modalità di remunerazione del fornitore:

-  a corpo;
-  a tempo e spesa;
-  a misura.

La prima modalità è applicabile ai casi in cui l’oggetto della fornitura è definito nel dettaglio già in fase di negoziazione e non si prevedono variazioni significative dello stesso. Si tratta di circostanze piuttosto rare nei contratti delle P.A.

La seconda modalità deriva storicamente dai contratti per fornitura di risorse umane (body rental). In generale è semplice da utilizzare e risulta particolarmente flessibile in contesti di incertezza e di veloce evoluzione dei requisiti. Tuttavia, applicarla a progetti di sviluppo software significa non incentivare il fornitore a rendere efficiente i suoi processi (paradossalmente, con questa modalità di remunerazione il fornitore viene pagato di più se è meno produttivo).

La terza modalità (a misura) rappresenta una buona mediazione tra le precedenti, in quanto consente flessibilità a fronte di incompleta definizione dell’oggetto della fornitura, ma lega il pagamento alla misura di ciò che viene rilasciato dal fornitore, mitigando perciò il rischio di extra-costi e motivando il fornitore verso l’efficienza. Tuttavia, perché questa modalità sia applicabile, occorre non solo disporre di metriche di prodotto, ma anche saperle adoperare correttamente. Come osservato al §1.4, in numerosi contratti pubblici si riscontrano pagamenti a misura che, declinati in maniera incompleta e/o gestiti incongruamente, si trasformano poi di fatto in pagamenti a tempo e spesa.

In conclusione, approfondire le metriche di prodotto e fare chiarezza sul loro uso vuol dire senz’altro fornire alle P.A. strumenti utili per il contenimento dei costi e il successo delle iniziative pubbliche. L’obiettivo finale, come già detto, è mettere in grado le P.A. di acquisire software pagandolo in base al valore (misurabile) di quest’ultimo.

Al momento, va detto, non è possibile fornire formule o euristiche di corrispondenza tra valore di un software e prezzo congruo (che peraltro è una grandezza che non si può imporre ma che dipende da dinamiche di mercato).

Si può però suggerire, nell’ambito della pubblica amministrazione e non solo, una raccolta di dati storici di progetti informatici e di elaborazione statistica dei dati raccolti. Ad esempio si potrebbe analizzare progetti di manutenzione migliorativa, mettendo in relazione quanto si è speso in tali progetti e la misura dei risultati ottenuti. Ciò consentirebbe, in prospettiva, di poter effettuare stime sui nuovi progetti e definire basi d’asta nel caso di messa a gara degli stessi. Questa proposta verrà approfondita nel capitolo 6.

Misure funzionali
~~~~~~~~~~~~~~~~~

Per quanto riguarda le misure dei FUR (requisiti funzionali dei prodotti software), il Tavolo di lavoro ha convenuto che i Punti Funzione rappresentano tuttora una metrica valida. Nonostante le criticità nell’uso che sono state citate al §1.4, non appare ragionevole proporne l’abbandono o la sostituzione, anche sulla scorta dell’attuale ampio utilizzo in gare e contratti, e dei grandi investimenti effettuati dalle pubbliche amministrazioni in formazione sul tema. Si ritiene semmai che vada raccomandato e verificato un uso corretto della metrica nei vari contesti possibili\ `14 <#fn14>`__.

In estrema sintesi, i PF misurano le dimensioni del software quantificando le funzionalità in esso contenute e visibili dall’utente.

La caratteristica più positiva di questa metrica, che si ritiene ne abbia favorito l’odierna diffusione, è che essa è stata creata per l’utente finale e non per lo sviluppatore: come detto, infatti, i PF misurano il contenuto funzionale percepito dall’esterno del prodotto, senza relazione con scelte implementative o tecnicalità di linguaggio o piattaforma. Ciò consente di ottenere misure funzionali affidabili anche in fasi relativamente anticipate del ciclo di vita del software (nei momenti di pre-analisi, analisi e progettazione), e inoltre agevola la comunicazione tra i vari attori coinvolti nel processo di realizzazione e manutenzione del software.

Il meccanismo di conteggio, tuttavia, è oggettivamente non intuitivo e presenta elementi di farraginosità, tant’è che occorre una specifica competenza e certificazione per effettuare il conteggio. Si riscontrano inoltre elementi di ambiguità legati al livello di elicitazione dei requisiti (processo di acquisizione di informazioni sul sistema da sviluppare).

Al §2.4.1.1 si è citato il metodo Simple Function Point (SiFP). Si tratta di una tecnica di misura funzionale del software, nata nel 2010, dichiarata conforme ai principi della famiglia di norme ISO/IEC 14143. Il metodo è di pubblico dominio ed è gestito da un'associazione internazionale no-profit denominata SiFPA. Si rimanda al sito dell’associazione (www.sifpa.org) per dettagli e una descrizione completa.

Focalizzato sulla semplicità di applicazione, SiFP è correlato alla metodica IFPUG, per cui in teoria organizzazioni che hanno investito in competenze e misure IFPUG potrebbero, migrando a SiFP, sfruttare gli investimenti pregressi. Chi propone questo metodo afferma che:

-  rende meno invasiva la misura del software rispetto ai processi produttivi pur mantenendo le stesse prestazioni di IFPUG;
-  l'apprendimento si riduce (il manuale di riferimento, ad esempio, consiste in 81 pagine rispetto alle 546 pagine del manuale IFPUG);
-  alcuni studi riscontrano una sostanziale equivalenza statistica del metodo SiFP rispetto a quello IFPUG.

Riguardo all’ultimo punto occorre precisare il significato di “equivalenza statistica”. Negli studi citati sono state confrontate misure IFPUG e misure SiFP per un portafoglio composto da un numero elevato di progetti. Le differenze tra le due misure non sono trascurabili nel singolo progetto (lo studio evidenziava discrepanze anche del 50%), bensì si bilanciano, o meglio si compensano: in alcuni progetti il conteggio SiFP risulta superiore al conteggio IFPUG, in altri avviene l’opposto; la differenza media, e altre statistiche derivate da quest’ultima, risultano perciò esigue.

È immediato vedere un impiego di SiFP nella misura funzionale di un parco applicativo ingente ove un conteggio “classico” risulterebbe troppo oneroso (es. assessment di portafogli applicativi su sistemi legacy). Viceversa, nell’ambito di un singolo progetto, bisogna tenere presente le possibili divergenze puntuali rispetto a conteggi IFPUG. Eventualmente si può pensare a un impiego di SiFP come metodo di stima (ancorché SiFP sia nato come metodo di misura e non di stima), ma non per il conteggio finale che dovrebbe necessitare di maggiore accuratezza. Per altri esempi di applicazione si rimanda al capitolo 6.

Misure funzionali automatiche
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

L’Object Management Group (OMG) ha approvato nel 2014 la tecnica AFP (Automated Function Point) definita da CISQ per la misurazione automatica della dimensione funzionale del software. Tale tecnica, sviluppata sulla base del manuale di conteggio IFPUG versione 4.3.1, prevede che la misura sia effettuata sul codice sorgente e sulle strutture dati, tramite algoritmi di riconoscimento delle transazioni applicative, alle quali vengono applicati gli stessi criteri di IFPUG per ciò che riguarda la classificazione dei componenti funzionali (BFC) e l’attribuzione della complessità agli stessi.

OMG dichiara che:

-  l’uso di strumenti che implementano la tecnica AFP permette, in specifici casi, di abbattere il costo d’adozione di metriche funzionali;
-  è possibile l’utilizzo di questa tecnica a valle della realizzazione di software applicativi, per un controllo di congruenza del numero delle funzionalità rilasciate rispetto a quanto stimato manualmente ex ante sulla base delle specifiche (per esempi pratici si rimanda al capitolo 6);
-  la tecnica è già stata utilizzata in numerosi progetti; i risultati si sono dimostrati coerenti con i conteggi manuali IFPUG, con valori all’interno della tolleranza prevista da IFPUG stesso (±10%)`15 <#fn15>`__.

Misure non funzionali
~~~~~~~~~~~~~~~~~~~~~

Con riferimento alla classificazione dei requisiti del §3.1 (figura 1), le metriche non funzionali sono indirizzate a misurare i requisiti non funzionali del software. Nel seguito si presentano le principali metriche non funzionali analizzate dal tavolo di lavoro.

La norma ISO 25023
~~~~~~~~~~~~~~~~~~

La norma ISO 25023 (ISO/IEC 25023:2016 Systems and software engineering - Measurement of system and software product quality) propone circa 80 metriche, che coprono tutte le sottocaratteristiche definite dalla ISO 25010 (ISO/IEC 25010:2011 Systems and software engineering - System and software quality models).

Si osserva, peraltro, che l’uso di concetti derivanti dalle norme ISO non è una novità. Già nelle precedenti linee guida emesse da questa agenzia (allora CNIPA) si suggeriva l’impiego di metriche e indicatori derivati dalla norma in vigore all’epoca (ISO 9126:2001 Software engineering — Product quality\ `16 <#fn16>`__). La differenza sostanziale è che le precedenti linee guida suggerivano tali metriche e indicatori come base per definire SLA contrattuali. Oggi invece si vuole affermare che queste metriche concorrono a misurare il “valore”:

-  di un nuovo software commissionato da una P.A. a un fornitore;
-  di interventi di manutenzione migliorativa (ottimizzazione) su un software già esistente;
-  di un software facente parte del parco applicativo di una P.A. (che deve essere valorizzato come asset della stessa).

Nel seguito, per ogni sottocaratteristica, si riporta un estratto della ISO 25023 (tradotto in italiano per maggiore comprensione, ma tenendo presente che in caso di controversie fa testo la norma originaria in inglese) e si esprimono considerazioni e suggerimenti a riguardo.

Vale il caso di ricordare, con riferimento a tutte le caratteristiche, che la ISO 25023 consente cancellazioni, modifiche o aggiunte di ulteriori metriche mantenendo comunque la conformità allo standard, purché le diverse scelte vengano accompagnate esplicitamente da motivazioni razionali. Molte di tali motivazioni sono già riportate a scopo esemplificativo nel presente documento.

Misurazioni di prestazione/efficienza
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

La ISO 25010 individua, nell’ambito della caratteristica di qualità “prestazioni/efficienza”, le seguenti sottocaratteristiche:

-  Tempi di risposta;
-  Consumo di risorse;
-  Capacità.

Per ciascuna di queste sottocaratteristiche, la ISO 25023 propone alcune metriche\ `17 <#fn17>`__, che vengono illustrate nei paragrafi che seguono, fornendo per ciascuna di esse indicazioni e suggerimenti d’uso nel contesto del Tavolo di lavoro (vale a dire, analisi e valutazione quantitativa di applicazioni software considerate in termini di prodotto).

Metriche per “tempi di risposta”
''''''''''''''''''''''''''''''''

Per la prima delle tre sottocaratteristiche, la ISO 25023 propone 5 metriche, pensate per misurare i tempi di elaborazione di un software\ `18 <#fn18>`__ nell’erogazione delle sue funzioni.

Tabella 12: metriche per tempi di risposta

+---+--------+--------------------------+-------------------------------+
| * | **Nome | **Descrizione**          | **Formula**                   |
| * | **     |                          |                               |
| I |        |                          |                               |
| D |        |                          |                               |
| * |        |                          |                               |
| * |        |                          |                               |
+===+========+==========================+===============================+
| P | Tempo  | Tempo medio impiegato da | *AgID non è stata autorizzata |
| T | medio  | un software per          | a riportare nel presente      |
| b | di     | rispondere a una         | documento le formule della    |
| - | rispos | richiesta utente o       | 25023: si rimanda pertanto    |
| 1 | ta     | svolgere un’attività di  | alla norma originaria*        |
| - |        | sistema                  |                               |
| G |        |                          |                               |
+---+--------+--------------------------+-------------------------------+
| P | Adegua | Rapporto tra il tempo    |                               |
| T | tezza  | medio di risposta e il   |                               |
| b | del    | tempo previsto dai       |                               |
| - | tempo  | requisiti                |                               |
| 2 | di     |                          |                               |
| - | rispos |                          |                               |
| G | ta     |                          |                               |
+---+--------+--------------------------+-------------------------------+
| P | Tempo  | Tempo medio impiegato da |                               |
| T | medio  | un software per          |                               |
| b | di     | completare l’esecuzione  |                               |
| - | comple | di una transazione o di  |                               |
| 3 | tament | un processo asincrono    |                               |
| - | o      |                          |                               |
| G |        |                          |                               |
+---+--------+--------------------------+-------------------------------+
| P | Adegua | Rapporto tra il tempo    |                               |
| T | tezza  | medio di completamento e |                               |
| b | del    | il tempo previsto dai    |                               |
| - | tempo  | requisiti                |                               |
| 4 | di     |                          |                               |
| - | comple |                          |                               |
| G | tament |                          |                               |
|   | o      |                          |                               |
+---+--------+--------------------------+-------------------------------+
| P | Volume | Numero medio di          |                               |
| T | medio  | transazioni completato   |                               |
| b | di     | nell’intervallo          |                               |
| - | transa | temporale di             |                               |
| 5 | zioni  | osservazione             |                               |
| - |        |                          |                               |
| G |        |                          |                               |
+---+--------+--------------------------+-------------------------------+

*Note*

Il primo indicatore è adatto a misurare elaborazioni sincrone (l’utente attiva una funzionalità e deve ricevere subito il risultato), mentre il terzo è relativo a elaborazioni asincrone (l’utente attiva una transazione e riceve il risultato in tempi differiti).

PTb-2-G e PTb-4-G sono indicatori derivati: si tratta del rapporto tra gli indicatori 1 e 2 e i corrispondenti valori attesi e/o specificati nei requisiti. L’indicatore 5 è adatto a misurare l’efficienza di processi batch.

In generale, occorre tenere presente che il tempo di risposta di un sistema informatico non dipende dalla sola efficienza del software, ma da un insieme di fattori (di seguito indicati per comodità F\ :sub:`eff`) quali capacità elaborativa dell’hardware, carico del sistema, numero di utenti connessi, latenza di rete, indicizzazione del DB, ecc.). Pertanto, se l’esigenza è confrontare l’efficienza di più software diversi o posizionare l’efficienza di un singolo software su una scala di riferimento, occorre verificare che le misure vengano prese a parità di condizioni, vale a dire garantendo che i fattori F\ :sub:`eff` su elencati presentino valori omogenei e ben specificati. Si tratta dell’approccio che di prassi viene seguito quando si effettuano benchmark di sistemi IT e piattaforme elaborative (es. TPC, SPEC).

Analogamente, occorre tenere presente che il tempo di risposta/completamento dipende dalla tipologia di richiesta/transazione che viene elaborata. Gli indicatori proposti dalla ISO 25023 propongono infatti valori medi, calcolati effettuando *n* misure diverse, una per ciascuna delle *n* tipologie di richiesta/transazione rilevanti. Sono comunque ipotizzabili casi in cui interessa misurare separatamente i tempi di risposta/completamento per tipologie di richiesta/transazione differenti, e non mediare il risultato di tali misure.

Si noti che in quasi tutte le definizioni di metriche, la ISO 25023 fa uso di valori medi. Dal punto di vista statistico, nella maggioranza dei contesti si ritiene più rappresentativo il valore mediano. Questa considerazione si applica anche ai paragrafi che seguono.

*Quando è opportuno utilizzare queste metriche?*

Per ridurre i tempi di risposta di un sistema, spesso è più semplice e meno oneroso intervenire sui fattori F\ :sub:`eff`, ad esempio aumentando la potenza elaborativa dell’hardware, il throughput della rete o il livello di indicizzazione del DB.

Esistono però casi in cui non si può intervenire sui fattori F\ :sub:`eff`, ad esempio in sviluppi applicativi ove la piattaforma elaborativa e la connettività disponibile rappresentano vincoli imprescindibili di progetto. In questi casi è opportuno definire requisiti di efficienza, nelle condizioni al contorno specificate, per il software da realizzare. In tali requisiti il cliente dovrà fissare i tempi di risposta attesi, specificando anche come s’intende verificare, a posteriori, il rispetto di detti requisiti.

Un altro caso ove queste metriche appaiono utili sono i progetti di ottimizzazione di un software già esistente (interventi di manutenzione migliorativa). In questi casi, si suggerisce di misurare gli indicatori (ad esempio PTb-1-G o PTb-3-G) prima dell’intervento e di formalizzare il risultato atteso sotto forma di valore che si vuole ottenere per tali indicatori. Al termine dell’intervento, si effettueranno test (si suggerisce di esplicitare contrattualmente come tali test verranno svolti) e si misurerà l’efficienza del software modificato. Si potrà anche legare contrattualmente parte della remunerazione del fornitore alla misura del miglioramento ottenuto (valore finale dell’indicatore meno valore iniziale dello stesso): si ritiene che ciò possa garantire maggiormente il ritorno dell’investimento rispetto al modello attuale che prevede, di prassi, di retribuire interventi di manutenzione migliorativa sulla base delle giornate persona erogate.

Sembra utile segnalare, su questo argomento, che esistono strumenti automatici per la conduzione di test prestazionali e di carico.

Infine, è evidente che questi indicatori sono adatti, in termini ISO, a misure di qualità esterna. Ove si voglia invece compiere misure di qualità interna, si deve ricorrere a metodi di analisi statica del codice sorgente del software da valutare. Sono disponibili sul mercato numerose tecniche e strumenti automatici che compiono questo lavoro, in generale verificando il rispetto, da parte del codice sorgente, di vincoli e buone pratiche di programmazione legate all’efficienza.

Metriche per “consumo di risorse”
'''''''''''''''''''''''''''''''''

Per la seconda delle tre sottocaratteristiche, la ISO 25023 propone 4 metriche, pensate per misurare la quantità di risorse (processore, memoria, I/O, banda) utilizzate da un software nell’erogazione delle sue funzionalità.

Tabella 13: metriche per consumo di risorse

+---+----------+---------------------------+----------------------------+
| * | **Nome** | **Descrizione**           | **Formula**                |
| * |          |                           |                            |
| I |          |                           |                            |
| D |          |                           |                            |
| * |          |                           |                            |
| * |          |                           |                            |
+===+==========+===========================+============================+
| P | Consumo  | Tempo medio di CPU        | Non disponibile per        |
| R | medio di | utilizzato per compiere   | mancata autorizzazione     |
| u | potenza  | un’elaborazione           | (vedi tabella 12), si      |
| - | elaborat |                           | rimanda alla norma         |
| 1 | iva      |                           | originaria                 |
| - |          |                           |                            |
| G |          |                           |                            |
+---+----------+---------------------------+----------------------------+
| P | Consumo  | Volume di memoria usato   |                            |
| R | medio di | per compiere              |                            |
| u | memoria  | un’elaborazione in        |                            |
| - |          | rapporto alla memoria     |                            |
| 2 |          | disponibile.              |                            |
| - |          |                           |                            |
| G |          |                           |                            |
+---+----------+---------------------------+----------------------------+
| P | Consumo  | Tempo medio di            |                            |
| R | medio di | dispositivi di I/O        |                            |
| u | I/O      | utilizzato per compiere   |                            |
| - |          | un’elaborazione           |                            |
| 3 |          |                           |                            |
| - |          |                           |                            |
| G |          |                           |                            |
+---+----------+---------------------------+----------------------------+
| P | Consumo  | Banda media utilizzata,   |                            |
| R | medio di | in rapporto alla banda    |                            |
| u | banda    | disponibile, per compiere |                            |
| - |          | un’elaborazione           |                            |
| 4 |          |                           |                            |
| - |          |                           |                            |
| S |          |                           |                            |
+---+----------+---------------------------+----------------------------+

*Note*

Si osserva anzitutto che i quattro indicatori prevedono di effettuare *n* misure e di calcolare un valore medio. Questo perché, come nel caso del paragrafo precedente, tipologie diverse di elaborazione possono presentare consumi diversi. Anche in questo caso, si suggerisce di identificare chiaramente quali sono le tipologie di elaborazione rilevanti ai fini della valutazione, e di decidere se è utile calcolare un valore medio o se piuttosto abbia senso misurare separatamente il consumo delle varie tipologie di elaborazione.

Si osserva poi che tutti e quattro gli indicatori misurano non un consumo assoluto, bensì un consumo in rapporto alla disponibilità complessiva della risorsa in esame (tempo, memoria, banda). Questa circostanza introduce complessità nella formula e anche qualche dubbio, giacché non è intuitivo che la disponibilità della risorsa in esame vari sulla singola osservazione (sul punto, la norma ISO non è molto chiara).

Si segnala infine che la formula dell’indicatore PRu-4-S (qui non riportata, si rimanda alla norma ISO originaria) sembra incoerente con la definizione: sarebbe ragionevole infatti attendersi una formula simile alle precedenti, vale a dire mediata su un numero *n* di osservazioni.

In generale, questi indicatori sembrano molto tecnici e ardui da misurare. L’impressione, comunque, è che aspetti del genere possano esulare dall’analisi di software applicativo, giacché la gestione delle risorse oggi si affronta a livello di *middleware* e di sistemi di virtualizzazione. In futuro, con l’affermarsi dell’approccio cloud, la misura del consumo di risorse della singola applicazione sarà ancora meno rilevante.

Infine, è utile segnalare che esistono strumenti automatici che misurano il consumo di risorse di un’applicazione software. Il più noto è “Gestione attività” di Windows, ma un gran numero di sistemi di gestione sistemistica (es. SNMP, consolle di virtualizzazione server, enterprise manager, …) offrono funzionalità di questo genere.

*Quando è opportuno utilizzare queste metriche?*

I quattro indicatori di tabella 13 possono essere utili per pianificare/verificare attività di tuning di sistemi e ottimizzazione di applicazioni, oppure in studi di capacity planning. Tuttavia, tranne casi particolari, si ritiene che la loro natura molto “tecnica” li renda poco adatti al contesto delle forniture di sviluppo software applicativo della pubblica amministrazione.

In generale, si ritiene che misurare l’efficienza di una singola applicazione nell’utilizzo delle risorse a disposizione avesse senso quando i sistemi ICT erano “a silos” e prevedevano un hardware dedicato per ogni singola applicazione. Oggi, come già detto, queste problematiche si affrontano al livello di sistemi di virtualizzazione, e in futuro saranno del tutto superate (o meglio, rese trasparenti per l’utente finale) dal modello cloud.

Ciò non vuol dire che, in assoluto, questa sottocaratteristica non sia rilevante. Può ad esempio servire per identificare buone pratiche di programmazione (legate probabilmente anche al linguaggio, middleware e piattaforma utilizzati) e definire uno standard qualitativo di sviluppo in aziende produttrici di software. Ma in questi contesti, che sono fuori dal perimetro del presente studio, ha probabilmente più senso effettuare misure di qualità interna, usando non i 4 indicatori di tabella 13 ma verificando, tramite analisi statica del codice sorgente, il rispetto delle buone pratiche di efficienza definite.

Metriche per “capacità”
'''''''''''''''''''''''

Per l’ultima sottocaratteristica, la ISO 25023 propone 3 metriche, pensate per misurare i limiti di un software, con particolare riferimento al massimo numero di utenti e transazioni concorrenti.

Tabella 14: metriche per capacità

+---+--------------+--------------------------------------+------------+
| * | **Nome**     | **Descrizione**                      | **Formula* |
| * |              |                                      | *          |
| I |              |                                      |            |
| D |              |                                      |            |
| * |              |                                      |            |
| * |              |                                      |            |
+===+==============+======================================+============+
| P | Capacità di  | Numero di transazioni completate     | n.d. (si   |
| C | svolgimento  | nella finestra temporale di          | rimanda    |
| a | transazioni  | osservazione                         | alla norma |
| - |              |                                      | ISO)       |
| 1 |              |                                      |            |
| - |              |                                      |            |
| G |              |                                      |            |
+---+--------------+--------------------------------------+------------+
| P | Capacità di  | Numero massimo di utenti concorrenti |            |
| C | accesso      | accettati dal sistema per ogni       |            |
| a | utenti       | osservazione                         |            |
| - |              |                                      |            |
| 2 |              |                                      |            |
| - |              |                                      |            |
| G |              |                                      |            |
+---+--------------+--------------------------------------+------------+
| P | Adeguatezza  | Numero di utenti che possono essere  |            |
| C | di aumento   | aggiunti con successo nella finestra |            |
| a | degli        | temporale di osservazione            |            |
| - | accessi      |                                      |            |
| 3 |              |                                      |            |
| - |              |                                      |            |
| S |              |                                      |            |
+---+--------------+--------------------------------------+------------+

*Note*

La definizione dell’indicatore PCa-1-G non è molto chiara. Ci si aspetterebbe un valore medio, calcolato misurando separatamente varie tipologie di transazione. Anche la formula desta perplessità, perché fa supporre che nel periodo di osservazione ci siano più transazioni in esecuzione rispetto a quelle completate, ma il numero di transazioni in esecuzione non appare nella formula stessa. Sarebbe utile qualche esempio, che però la ISO 25023 non riporta. Inoltre, questo indicatore sembra parzialmente sovrapponibile all’indicatore PTb-5-G.

Con riferimento all’indicatore PCa-2-G, si potrebbe andar oltre la definizione statistica. La formula infatti sembra suggerire che il sistema in esame possa accettare un numero massimo di utenti concorrenti diverso in vari istanti di tempo. Ciò capita di frequente con l’approssimarsi della scadenza dell’invio di dati ai sistemi.

L’ultimo indicatore (PCa-3-S) sembra pensato per misurare la capacità del software in esame a far fronte a un rapido incremento del numero di utenti. A titolo di esempio, per un sito web informativo, ci si riferisce alla capacità di gestire notizie improvvise (es. terremoti, attacchi terroristici) che determinano picchi di accesso.

Problematiche del genere, però, difficilmente vengono gestite a livello applicativo: esistono soluzioni a livello di middleware, hardware e anche appliance (es. sistemi di load balancing) specializzati proprio per garantire questo tipo di prestazioni.

*Quando è opportuno utilizzare queste metriche?*

Per quanto detto, si ritiene che nel contesto di questo studio gli indicatori di capacità abbiano un’importanza residuale. Possono essere utili nei casi particolari in cui le problematiche di accesso concorrente (ove sussistano) debbano essere risolte a livello applicativo. In tali casi, si suggerisce di definire a livello di requisiti il valore atteso per gli indicatori PCa-2-G e PCa-3-S, specificando anche come dovranno essere effettuate le misure in fase di verifica (ad esempio utilizzando strumenti automatici che effettuano test di carico simulando pacchetti anche ingenti di utenti concorrenti).

Si ritiene tuttavia che scenari di questo tipo, diffusi in passato, siano superati nelle architetture attuali, e di certo saranno resi ancora più obsoleti andando verso soluzioni di tipo cloud.

Attenzione, non si vuole affermare che la capacità di un software sia una caratteristica irrilevante, ma semplicemente che sia un aspetto di prevalente interesse tecnico e forse trasparente per l’utente applicativo. In analogia a quanto detto nel precedente paragrafo, dal punto di vista strettamente tecnico ha forse più senso misurare la capacità come qualità interna, effettuando analisi statica del codice sorgente e verificando il rispetto di buone pratiche di programmazione.

Conclusioni su prestazione/efficienza
'''''''''''''''''''''''''''''''''''''

Per riassumere quanto detto, tra gli indicatori presentati per la caratteristica “prestazioni/efficienza”, nell’ambito e per le finalità di questo studio appaiono utili soprattutto gli indicatori di tabella 12. Tra essi si suggerisce di scegliere, in base alla tipologia di applicazione in esame:

-  PTb-1-G (in caso ci sia prevalenza di elaborazioni sincrone),
-  PTb-3-G (in caso di transazioni ed elaborazioni asincrone),
-  PTb-5-G (in caso di elaborazioni massive e/o di tipo batch).

Gli altri indicatori, come detto, sembrano meno adatti alle finalità di questo studio e in parte obsoleti, a causa:

-  dell’odierna grande disponibilità (e dunque minor costo) di hardware e connettività di rete;
-  dell’affermarsi dei sistemi di virtualizzazione e soluzioni cloud;
-  del modello architetturale verso cui devono tendere i sistemi informatici delle P.A., ove il livello applicativo è separato dagli aspetti infrastrutturali e di gestione delle risorse.

Misurazioni di usabilità
^^^^^^^^^^^^^^^^^^^^^^^^

La ISO 25010 individua, nell’ambito della caratteristica “usabilità”, le seguenti sottocaratteristiche:

-  appropriatezza - riconoscibilità;
-  apprendibilità;
-  operabilità;
-  protezione dall’errore utente;
-  estetica dell’interfaccia utente;
-  accessibilità.

Per ciascuna di queste sottocaratteristiche, la ISO 25023 propone alcune metriche. Nei paragrafi che seguono tali metriche vengono analizzate, fornendo per ciascuna di esse indicazioni e suggerimenti d’uso.

Metriche per “appropriatezza - riconoscibilità”
'''''''''''''''''''''''''''''''''''''''''''''''

Per la prima delle cinque sottocaratteristiche, la ISO 25023 propone 3 metriche, pensate per misurare quanto un software\ `19 <#fn19>`__ appare intuitivo all’utente, nel senso che mostra all’utente come deve essere usato per raggiungere l’obiettivo.

Tabella 15: metriche per appropriatezza - riconoscibilità

+---+---------+-------------------------------------------+-----------+
| * | **Nome* | **Descrizione**                           | **Formula |
| * | *       |                                           | **        |
| I |         |                                           |           |
| D |         |                                           |           |
| * |         |                                           |           |
| * |         |                                           |           |
+===+=========+===========================================+===========+
| U | Complet | Percentuale degli scenari d’uso descritta | n.d. (si  |
| A | ezza    | nella documentazione                      | rimanda   |
| p | di      |                                           | alla      |
| - | descriz |                                           | norma     |
| 1 | ione    |                                           | ISO)      |
| - |         |                                           |           |
| G |         |                                           |           |
+---+---------+-------------------------------------------+-----------+
| U | Capacit | Percentuale delle funzioni che ha         |           |
| A | à       | capacità di dimostrazione (es. opzione    |           |
| p | di      | demo) per mostrare il suo effetto agli    |           |
| - | dimostr | utenti.                                   |           |
| 2 | azione  |                                           |           |
| - |         |                                           |           |
| S |         |                                           |           |
+---+---------+-------------------------------------------+-----------+
| U | Auto-de | Percentuale delle pagine indirizzabili    |           |
| A | scritti | (landing page) di un sito web che spiega  |           |
| p | vità    | lo scopo del sito.                        |           |
| - |         |                                           |           |
| 3 |         |                                           |           |
| - |         |                                           |           |
| S |         |                                           |           |
+---+---------+-------------------------------------------+-----------+

*Note*

La “documentazione” citata nella descrizione della prima metrica è senz’altro il manuale o la guida per l’utente. Formato e qualità della documentazione hanno ovviamente altre modalità di misura: qui sembra rilevante solo la completezza. Inoltre sembra valere l’assunto che tutti gli scenari d’uso abbiano la medesima importanza, il che in molti contesti potrebbe essere una semplificazione eccessiva.

La seconda metrica presenta aspetti indefiniti: occorre infatti definire, da parte del responsabile dei requisiti di qualità, che per una funzione è utile la capacità di dimostrazione.

La terza metrica è palesemente indirizzata a misurare l’usabilità di un sito web. Peraltro il concetto di “landing page”, nel contesto del nostro studio, deve essere inteso in senso più generico dell’accezione usuale nel marketing (landing page = pagina di destinazione di una campagna pubblicitaria), e per questo è stato tradotto in “pagine indirizzabili”.

*Quando è opportuno utilizzare queste metriche?*

La prima metrica sembra di uso immediato, sebbene come detto presenti alcune semplificazioni che potrebbero risultare eccessive.

La seconda metrica potrebbe riferirsi alla completezza di un eventuale “tutorial” che illustri l’uso dell’applicazione: il grado di copertura delle funzioni disponibili da parte di questo tutorial misura senz’altro la sottocaratteristica in esame.

La terza metrica, come detto, sembra derivare da concetti di marketing. Non sembra di immediata applicazione nel contesto della pubblica amministrazione.

Metriche per “apprendibilità”
'''''''''''''''''''''''''''''

Per la seconda delle cinque sottocaratteristiche, la ISO 25023 propone 4 metriche, pensate per valutare la facilità di apprendimento dell’utilizzo di un software, vale a dire la capacità dello stesso di aiutare l’utente nel percorso di apprendimento.

Tabella 16: metriche per apprendibilità

+---+---------+-------------------------------------------------+-------+
| * | **Nome* | **Descrizione**                                 | **For |
| * | *       |                                                 | mula* |
| I |         |                                                 | *     |
| D |         |                                                 |       |
| * |         |                                                 |       |
| * |         |                                                 |       |
+===+=========+=================================================+=======+
| U | Complet | Percentuale delle funzioni che è descritta      | n.d.  |
| L | ezza    | (nella documentazione o nell’help) con un       | (si   |
| e | della   | dettaglio tale da consentire all’utente di      | riman |
| - | guida   | utilizzarle.                                    | da    |
| 1 | utente  |                                                 | alla  |
| - |         |                                                 | norma |
| G |         |                                                 | ISO)  |
+---+---------+-------------------------------------------------+-------+
| U | Valori  | Percentuale di campi di input che vengono       |       |
| L | di      | riempiti automaticamente con valori di default. |       |
| e | default |                                                 |       |
| - | nei     |                                                 |       |
| 2 | campi   |                                                 |       |
| - | di      |                                                 |       |
| S | input   |                                                 |       |
+---+---------+-------------------------------------------------+-------+
| U | Compren | Percentuale dei messaggi d’errore che           |       |
| L | sibilit | dichiarano la ragione dell’errore e             |       |
| e | à       | suggeriscono come risolverlo.                   |       |
| - | dei     |                                                 |       |
| 3 | messagg |                                                 |       |
| - | i       |                                                 |       |
| S | d’error |                                                 |       |
|   | e       |                                                 |       |
+---+---------+-------------------------------------------------+-------+
| U | Interfa | Percentuale degli elementi di informazione e    |       |
| L | ccia    | dei passi che sono presentati all’utente        |       |
| e | utente  | inesperto in modo che questi possa completare   |       |
| - | auto-es | un’attività senza un addestramento preliminare  |       |
| 4 | plicati | o assistenza esterna.                           |       |
| - | va      |                                                 |       |
| S |         |                                                 |       |
+---+---------+-------------------------------------------------+-------+

*Note*

La prima metrica è simile alla UAp-1-G.

L’ultima metrica presenta aspetti indefiniti (andrà definito se le attività da completare sono della stessa rilevanza) nonché un certo grado di soggettività; soprattutto appare dipendere dalle competenze dell’utente.

*Quando è opportuno utilizzare queste metriche?*

La metrica ULe-1-G può essere usata in alternativa alla UAp-1-G. Le metriche 2 e 3 appaiono semplici e di applicazione immediata. Viceversa, la metrica ULe-4-S appare di uso molto problematico, soprattutto nelle verifiche (probabilmente richiede test multipli su campioni significativi dell’utenza).

Metriche per “operabilità”
''''''''''''''''''''''''''

Per la terza sottocaratteristica, la ISO 25023 propone 8 metriche, pensate per valutare la facilità con cui un software può essere eseguito e controllato. L’operabilità si può ulteriormente declinare, secondo ISO, in:

-  idoneità a svolgere l’attività per cui il software è stato scritto;
-  auto-descrittività;
-  controllabilità del software;
-  conformità del software alle aspettative dell’utente;
-  tolleranza all’errore;
-  idoneità alla personalizzazione.

Tabella 17: metriche per operabilità

+---+------------+--------------------------------------------+---------+
| * | **Nome**   | **Descrizione**                            | **Formu |
| * |            |                                            | la**    |
| I |            |                                            |         |
| D |            |                                            |         |
| * |            |                                            |         |
| * |            |                                            |         |
+===+============+============================================+=========+
| U | Consistenz | Misura della consistenza, per              | n.d.    |
| O | a          | comportamento e apparenza, all’interno     | (si     |
| p | di         | della singola attività e tra attività      | rimanda |
| - | comportame | simili.                                    | alla    |
| 1 | nto        |                                            | norma   |
| - |            |                                            | ISO)    |
| G |            |                                            |         |
+---+------------+--------------------------------------------+---------+
| U | Chiarezza  | Percentuale dei messaggi che possono       |         |
| O | nei        | essere compresi facilmente.                |         |
| p | messaggi   |                                            |         |
| - |            |                                            |         |
| 2 |            |                                            |         |
| - |            |                                            |         |
| G |            |                                            |         |
+---+------------+--------------------------------------------+---------+
| U | Personaliz | Percentuale di funzioni e procedure che    |         |
| O | zabilità   | possono essere personalizzate dall’utente. |         |
| p | funzionale |                                            |         |
| - |            |                                            |         |
| 3 |            |                                            |         |
| - |            |                                            |         |
| S |            |                                            |         |
+---+------------+--------------------------------------------+---------+
| U | Personaliz | Percentuale degli elementi                 |         |
| O | zabilità   | dell’interfaccia utente che possono essere |         |
| p | dell’inter | personalizzati nell’aspetto.               |         |
| - | faccia     |                                            |         |
| 4 | utente     |                                            |         |
| - |            |                                            |         |
| S |            |                                            |         |
+---+------------+--------------------------------------------+---------+
| U | Capacità   | Percentuale degli stati di una funzione    |         |
| O | di         | che possono essere monitorati durante      |         |
| p | monitoragg | l’esecuzione.                              |         |
| - | io         |                                            |         |
| 5 |            |                                            |         |
| - |            |                                            |         |
| S |            |                                            |         |
+---+------------+--------------------------------------------+---------+
| U | Opzione    | Percentuale di attività che dispongono di  |         |
| O | “undo”     | opzione di conferma o di “undo”.           |         |
| p |            |                                            |         |
| - |            |                                            |         |
| 6 |            |                                            |         |
| - |            |                                            |         |
| S |            |                                            |         |
+---+------------+--------------------------------------------+---------+
| U | Abilità di | Percentuale della terminologia usata       |         |
| O | capire la  | nell’interfaccia utente che è familiare    |         |
| p | terminolog | all’utente stesso.                         |         |
| - | ia         |                                            |         |
| 7 |            |                                            |         |
| - |            |                                            |         |
| S |            |                                            |         |
+---+------------+--------------------------------------------+---------+
| U | Consistenz | Percentuale degli elementi                 |         |
| O | a          | dell’interfaccia utente che ha aspetto     |         |
| p | dell’aspet | simile. Esempio: tasto “OK” posizionato    |         |
| - | to         | nello stesso posto in tutte le schermate.  |         |
| 8 |            |                                            |         |
| - |            |                                            |         |
| S |            |                                            |         |
+---+------------+--------------------------------------------+---------+

*Note*

Le metriche 1 e 8 sembrano simili: la prima però si riferisce al comportamento dell’applicazione nello svolgimento di un’attività, mentre l’ultima al solo aspetto degli elementi dell’interfaccia utente. Si sottolinea che il concetto di “consistenza” è qui inteso come uniformità e coerenza. Ad esempio l’applicazione consente che due azioni vengano svolte tramite comandi di menù posizionati in modo simile e presentano i risultati nello stesso modo, allora si può parlare di consistenza di comportamento dell’applicazione. Viceversa, se tutte le schermate dell’applicazione hanno i medesimi colori e font, si parla di consistenza dell’aspetto. Stesso discorso vale per le metriche 3 (personalizzazione delle funzioni) e 4 (personalizzazione delle interfacce).

La metrica 5 ha una definizione poco chiara. Probabilmente si riferisce alla capacità di un’applicazione di mostrare lo stato in cui si trova, ad esempio visualizzando una clessidra quando è in elaborazione, oppure una barra di completamento per le attività che richiedono un certo tempo di completamento.

*Quando è opportuno utilizzare queste metriche?*

Le metriche di tabella 17 presentano elementi di soggettività, ad esempio ove si parla di consistenza e di chiarezza.

Si ritiene pertanto che un uso di queste metriche vada calibrato, dettagliando la definizione e minimizzando, anche con l’uso di declaratorie e regole (es. definendo per tutti gli elementi dell’interfaccia utente un modello da rispettare), gli aspetti soggettivi di cui sopra.

La metrica per cui la problematica evidenziata risulta più critica è la UOp-7-S. Si ritiene che l’uso di questa metrica debba limitarsi ai casi in cui l’utenza dell’applicazione sia perfettamente conosciuta e sia pertanto possibile definire una terminologia, o meglio un lessico, da rispettare. Attenzione: non si tratta di definire un dominio semantico unico per l’applicazione; questo semmai garantisce la consistenza di comportamento (metrica 1) nel senso che tutti i messaggi generati dall’applicazione usano gli stessi termini. Viceversa, la UOp-7-S misura quanti dei termini usati dall’applicazione siano comprensibili per l’utente, il che comporta che sia stato condotto uno studio dell’utenza e sia stata rilevata la sua terminologia.

Per quanto riguarda le metriche UOp-3-S e UOp-4-S, sembra opportuno ricordare che si sta parlando di personalizzazioni da parte dell’utente finale (ad esempio la possibilità di modificare le voci di menù, offerta normalmente dai programmi di *office automation*), non della personalizzazione di un applicativo generico prima di metterlo in produzione (in quest’ultimo caso si tratta di misurare l’idoneità funzionale e la manutenibilità, non l’usabilità).

Metriche per “protezione da errore utente”
''''''''''''''''''''''''''''''''''''''''''

Per questa sottocaratteristica, la ISO 25023 propone 3 metriche, pensate per verificare il grado con cui un’applicazione protegge se stessa dagli errori commessi dagli utenti finali durante l’esecuzione.

Tabella 18: metriche per protezione da errore utente

+---+----------------+-----------------------------------+------------+
| * | **Nome**       | **Descrizione**                   | **Formula* |
| * |                |                                   | *          |
| I |                |                                   |            |
| D |                |                                   |            |
| * |                |                                   |            |
| * |                |                                   |            |
+===+================+===================================+============+
| U | Evitare errori | Percentuale delle azioni e input  | n.d. (si   |
| E | nelle          | degli utenti che sono protette    | rimanda    |
| p | operazioni     | dal causare malfunzionamenti.     | alla norma |
| - | dell’utente    |                                   | ISO)       |
| 1 |                |                                   |            |
| - |                |                                   |            |
| G |                |                                   |            |
+---+----------------+-----------------------------------+------------+
| U | Correzione da  | Capacità di correggere dati di    |            |
| E | errori di      | input errati suggerendo valori    |            |
| p | input          | corretti                          |            |
| - | dell’utente    |                                   |            |
| 2 |                |                                   |            |
| - |                |                                   |            |
| S |                |                                   |            |
+---+----------------+-----------------------------------+------------+
| U | Recuperabilità | Percentuale degli errori          |            |
| E | da errore      | dell’utente che può essere        |            |
| p | dell’utente    | corretta o recuperata dal         |            |
| - |                | sistema.                          |            |
| 3 |                |                                   |            |
| - |                |                                   |            |
| S |                |                                   |            |
+---+----------------+-----------------------------------+------------+

*Note*

La definizione della metrica UEp-2-S richiede un chiarimento. Si suppone che si riferisca ad esempio alla funzionalità “correzione automatica degli errori ortografici” dei programmi di videoscrittura, oppure alle fattispecie simili all’esempio che segue: nel campo data, l’utente scrive “31 giugno”; poiché tale data è inesistente, il sistema corregge automaticamente in “1 luglio”.

Anche per la metrica UEp-3-S c’è qualche incertezza nella definizione. Giacché gli errori nell’input sono misurati dalla metrica 2, si suppone che questa misuri invece la protezione dagli errori nella sequenza di azioni da parte dell’utente (ad esempio l’utente effettua una transazione prima che la precedente sia conclusa).

*Quando è opportuno utilizzare queste metriche?*

La metrica 1 si applica ai casi in cui l’utente, attraverso azioni che comunque gli competono, potrebbe danneggiare il sistema. Tipico esempio: “Esplora risorse” di Windows è protetto da cancellazioni di file di sistema. Si sottolinea tuttavia che normalmente protezioni di questo tipo sono a carico del sistema operativo e del middleware, non del software applicativo.

La metrica 2, viceversa, sembra senz’altro utile e applicabile nel contesto di questo studio, anche se definire una casistica di tutti gli input erronei non è sempre agevole, specie nel caso di input molteplici e correlati tra loro.

La metrica 3 sembra ancora più complessa, giacché presuppone di avere identificato tutte le possibili sequenze di azioni richiamabili dall’utente. Peraltro, il tema della protezione da errori viene affrontato anche per la caratteristica “sicurezza”, forse con maggiore efficacia. Si rimanda pertanto al paragrafo corrispondente.

Metriche per “Estetica dell’interfaccia utente”
'''''''''''''''''''''''''''''''''''''''''''''''

Per questa sottocaratteristica la ISO 25023 propone una sola metrica, ideata per misurare quanto l’interfaccia utente di una applicazione consenta un’interazione piacevole e soddisfacente.

Tabella 19: metriche per estetica dell’interfaccia utente

+---+----------------+------------------------------------+------------+
| * | **Nome**       | **Descrizione**                    | **Formula* |
| * |                |                                    | *          |
| I |                |                                    |            |
| D |                |                                    |            |
| * |                |                                    |            |
| * |                |                                    |            |
+===+================+====================================+============+
| U | Apparenza      | Misura di quanto l’interfaccia     | n.d. (si   |
| I | estetica       | utente e in generale il disegno    | rimanda    |
| n | dell’interfacc | dell’applicazione è piacevole.     | alla norma |
| - | ia             |                                    | ISO)       |
| 1 | utente         |                                    |            |
| - |                |                                    |            |
| S |                |                                    |            |
+---+----------------+------------------------------------+------------+

*Quando è opportuno utilizzare queste metriche?*

La definizione di questa metrica è estremamente generica, quasi tautologica. In realtà il tema della gradevolezza estetica di un’interfaccia utente è stato molto approfondito in studi tecnici e di marketing. Coinvolge ad esempio la scelta dei font, dei colori, la posizione degli oggetti sullo schermo, la risoluzione delle immagini. Nell’ambito dell’usabilità è senz’altro l’aspetto più controverso ed empirico, perciò anche quello che meno si presta alle misurazioni di tipo oggettivo.

Si sconsiglia pertanto l’uso di questa metrica, e si rimanda invece ai numerosi studi sull’argomento disponibili in rete; in particolare sono applicabili i contenuti del portale designers.italia.it.

Metriche per “accessibilità”
''''''''''''''''''''''''''''

Per l’ultima sottocaratteristica, la ISO 25023 propone 5 metriche, pensate per valutare il grado con cui l’applicazione in esame è adatta per l’uso di persone con disabilità o in generale con difficoltà d’interazione coi sistemi informatici.

Tabella 20: metriche per accessibilità

+---+------------+--------------------------------------------+--------+
| * | **Nome**   | **Descrizione**                            | **Form |
| * |            |                                            | ula**  |
| I |            |                                            |        |
| D |            |                                            |        |
| * |            |                                            |        |
| * |            |                                            |        |
+===+============+============================================+========+
| U | Accessibil | Quota percentuale dell’applicazione che    | n.d.   |
| A | ità        | può essere usata con successo da persone   | (si    |
| c | per utenti | con abilità cognitive limitate. (con       | rimand |
| - | con        | l’impiego di tecnologia assistiva, se      | a      |
| 1 | disabilità | applicabile)                               | alla   |
| - | cognitiva  |                                            | norma  |
| G |            |                                            | ISO)   |
+---+------------+--------------------------------------------+--------+
| U | Accessibil | Quota percentuale dell’applicazione che    |        |
| A | ità        | può essere usata con successo da persone   |        |
| c | per utenti | con abilità fisiche limitate. (con         |        |
| - | con        | l’impiego di tecnologia assistiva, se      |        |
| 2 | disabilità | applicabile)                               |        |
| - | fisica     |                                            |        |
| G |            |                                            |        |
+---+------------+--------------------------------------------+--------+
| U | Accessibil | Quota percentuale dell’applicazione che    |        |
| A | ità        | può essere usata con successo da persone   |        |
| c | per utenti | con abilità uditive limitate. (con         |        |
| - | con        | l’impiego di tecnologia assistiva, se      |        |
| 3 | disabilità | applicabile)                               |        |
| - | uditiva    |                                            |        |
| G |            |                                            |        |
+---+------------+--------------------------------------------+--------+
| U | Accessibil | Quota percentuale dell’applicazione che    |        |
| A | ità        | può essere usata con successo da persone   |        |
| c | per utenti | con abilità visive limitate. (con          |        |
| - | con        | l’impiego di tecnologia assistiva, se      |        |
| 4 | disabilità | applicabile)                               |        |
| - | visiva     |                                            |        |
| G |            |                                            |        |
+---+------------+--------------------------------------------+--------+
| U | Adeguatezz | Percentuale dei linguaggi richiesti che è  |        |
| A | a          | supportata.                                |        |
| c | dei        |                                            |        |
| - | linguaggi  |                                            |        |
| 5 | supportati |                                            |        |
| - |            |                                            |        |
| S |            |                                            |        |
+---+------------+--------------------------------------------+--------+

*Note*

L’accezione “con disabilità” va inteso in senso lato, includendo per esempio anche gli utenti oltre una certa età. Bisogna inoltre considerare che in determinate circostanze qualunque utente potrebbe subire diminuzioni nelle capacità d’interazione (ad esempio a seguito di ferite agli occhi o alle mani, in condizioni di oscurità, forti rumori o fenomeni atmosferici intensi).

L’ultima metrica è palesemente diversa dalle altre, in quanto si riferisce al multilinguismo. Desta perplessità che si misuri solo la percentuale di soddisfacimento dei requisiti, e non in assoluto quante lingue vanno supportate.

*Quando è opportuno utilizzare queste metriche?*

Come noto, in Italia la tematica dell’accessibilità ai sistemi informatici e ai servizi per il cittadino è regolata fin dal 2004 tramite linee guida tecniche, leggi e circolari. Di seguito si riportano i riferimenti più rilevanti:

-  

   L. 9 gennaio 2004, n. 4;

-  `DPR 1 marzo 2005, n. 75 <http://www.normattiva.it/uri-res/N2Ls?urn:nir:presidente.repubblica:decreto:2005-03-01;75>`__;
-  DM 8 luglio 2005;

   -  Allegato A: Verifica tecnica e requisiti di accessibilità delle applicazioni basate su tecnologie internet (aggiornato dal DM 20 marzo 2013 - GU Serie Generale n. 217 del 16-9-2013);
   -  Allegato B: Metodologia e criteri di valutazione per la verifica soggettiva dell’accessibilità delle applicazioni basate su tecnologie internet;
   -  Allegato D: Requisiti tecnici di accessibilità per l’ambiente operativo, le applicazioni e i prodotti a scaffale;
   -  Allegato E: Logo di accessibilità dei siti Web e delle applicazioni realizzate con tecnologie Internet.

-  Delibera CNIPA 15 settembre 2005;
-  DM 30 aprile 2008;

   -  Allegato B: Linee guida per l'accessibilità e la fruibilità del software didattico da parte degli alunni disabili.

-  Circolare n. 2/215 dell’AgID su “\ *Specifiche tecniche sull’hardware, il software e le tecnologie assistive delle postazioni di lavoro a disposizione del dipendente con disabilità*\ ”;
-  Circolare n. 1/2016 dell’AgID;
-  Circolare n. 3/2017 del 7 luglio 2017 su "*Raccomandazioni e precisazioni sull'accessibilità digitale dei servizi pubblici erogati a sportello dalla Pubblica Amministrazione, in sintonia con i requisiti dei servizi online e dei servizi interni*".

A fronte di questo scenario, le metriche proposte da ISO risultano più generiche e di minore approfondimento. Si ritiene pertanto che le amministrazioni debbano piuttosto seguire le indicazioni della letteratura citata e della normativa italiana (vedi anche il caso d’esempio Sogei citato al §2.4.1.2).

Conclusioni su usabilità
''''''''''''''''''''''''

Le metriche proposte da ISO per l’usabilità sono soprattutto pensate per misure di qualità interne (ad esempio mediante analisi statica del codice sorgente, dei documenti di progetto o dei manuali dell’applicazione in esame). Ciò sembra ragionevole, giacché misure di usabilità nel senso di qualità in uso, condotte ad esempio tramite test su campioni del parco utenti, includono inevitabilmente aspetti soggettivi, legate alla percezione dei singoli utenti, che non è agevole riportare su una scala numerica.

Pertanto, le metriche proposte dalla ISO 25023 per l’usabilità appaiono rispondere in modo solo parziale all’esigenza di misurare questa caratteristica di un software. Esse si devono comunque affiancare al risultato (anche qualitativo) di test, rilevazioni, questionari o altri strumenti.

Ricapitolando le indicazioni dei precedenti paragrafi, tra le metriche della ISO per l’usabilità, nel contesto del nostro studio si suggerisce l’uso:

-  della metrica UAp-1-G, o in alternativa della ULe-1-G;
-  della metrica UAp-2-S;
-  delle metriche ULe-2-S e ULe-3-S;
-  della metrica UEp-2-S.

Per quanto riguarda le metriche di tabella 17, esse presentano elementi di soggettività che in parte vanificano l’oggettività della misura che caratterizza invece – come detto - le altre metriche proposte. Per un loro uso è pertanto necessaria una calibrazione, dettagliandone la definizione e minimizzando, anche con l’uso di declaratorie e regole, gli aspetti soggettivi.

Infine, vale la pena di puntualizzare che, nei progetti delle PA, il punto di vista dell’utente finale, benché importante, deve essere mediato da considerazioni strategiche e di opportunità, perché in molti contesti seguire pedissequamente i desiderata dell’utenza può comportare rischi economici.

Misurazioni di affidabilità
^^^^^^^^^^^^^^^^^^^^^^^^^^^

Si premette che la definizione ISO 25010 della caratteristica “affidabilità” è di tipo generale, e riguarda la capacità di un sistema, inteso in senso lato, di mantenersi funzionante in un determinato intervallo di tempo. Nell’ambito della pubblica amministrazione, e con riferimento ai contenuti del CAD e del Piano Triennale, il concetto di affidabilità viene declinato frequentemente nel senso di affidabilità di un servizio istituzionale, di un sito web, di un archivio o di un data center.

Ciò premesso, nel seguito ci si concentrerà, coerentemente con il perimetro di questo studio, sulle misure di affidabilità di un software applicativo sviluppato ad hoc per un committente pubblico.

La ISO 25010 individua, nell’ambito della caratteristica di qualità “affidabilità”, le seguenti sottocaratteristiche:

-  maturità;
-  disponibilità;
-  tolleranza agli errori;
-  recuperabilità.

Per ciascuna di queste sottocaratteristiche, la ISO 25023 propone alcune metriche, che vengono illustrate nei paragrafi che seguono, fornendo per ciascuna di esse indicazioni e suggerimenti d’uso.

Metriche per “maturità”
'''''''''''''''''''''''

Le metriche proposte dalla ISO 25023 per questa sottocaratteristica sono riportate nella tabella che segue.

Tabella 21: metriche per maturità

+---+-------------+----------------------------------------+-----------+
| * | **Definizio | **Descrizione**                        | **Formula |
| * | ne**        |                                        | **        |
| I |             |                                        |           |
| D |             |                                        |           |
| * |             |                                        |           |
| * |             |                                        |           |
+===+=============+========================================+===========+
| R | Correzione  | Quale porzione di errori rilevati è    | n.d. (si  |
| M | degli       | stata corretta?                        | rimanda   |
| a | errori      |                                        | alla      |
| - |             |                                        | norma     |
| 1 |             |                                        | ISO)      |
| - |             |                                        |           |
| G |             |                                        |           |
+---+-------------+----------------------------------------+-----------+
| R | Tempo medio | Quanto tempo intercorre, in media, tra |           |
| M | intercorso  | due errori in esercizio?               |           |
| a | tra due     |                                        |           |
| - | errori      |                                        |           |
| 2 |             |                                        |           |
| - |             |                                        |           |
| G |             |                                        |           |
+---+-------------+----------------------------------------+-----------+
| R | Numero di   | Quanti errori sono stati rilevati      |           |
| M | errori      | durante un periodo definito?           |           |
| a |             |                                        |           |
| - |             |                                        |           |
| 3 |             |                                        |           |
| - |             |                                        |           |
| G |             |                                        |           |
+---+-------------+----------------------------------------+-----------+
| R | Copertura   | Quale percentuale delle funzionalità e |           |
| M | dei test    | casi d’uso del software sono state     |           |
| a |             | coperte da test effettivamente svolti? |           |
| - |             |                                        |           |
| 4 |             |                                        |           |
| - |             |                                        |           |
| S |             |                                        |           |
+---+-------------+----------------------------------------+-----------+

*Note*

Si osserva che la metrica RMa-1-G e soprattutto la RMa-4-S sembrano adatte a misurare la qualità delle fasi di test e correzione. In altre parole, esse si possono interpretare anche come metriche di processo. Ciò non riduce la loro importanza, giacché è senz’altro condivisibile l’asserzione per cui un buon processo di test/correzione produce un software affidabile e dunque di migliore qualità.

*Quando è opportuno utilizzare queste metriche?*

Le metriche RMa-2-G e RMa-3-G sembrano adatte alla misura di affidabilità di un servizio offerto all’utente (qualità in uso) o di un sistema informatico visto nel suo complesso (peraltro, si tratta delle definizioni “classiche” riscontrabili nei testi di ingegneria dei sistemi). Utilizzarle per misurare l’affidabilità di un’applicazione software appare complesso, giacché si dovrebbe poter distinguere quali errori riscontrati sono relativi all’applicazione in esame e quali invece derivano, ad esempio, da malfunzionamenti dell’hardware, della rete, da un’inefficace configurazione del sistema operativo o del middleware, eccetera. Si potrebbe impiegarle, al limite:

-  per confrontare l’affidabilità di due software applicativi a parità di tutte le condizioni al contorno, nell’ipotesi – appunto – di poter trascurare l’impatto dei malfunzionamenti derivanti da elementi diversi dal software;
-  per misurare l’efficacia di un intervento di manutenzione correttiva, misurando il loro valore prima e dopo l’intervento stesso (sempre a parità di tutte le condizioni al contorno).

Le metriche RMa-1-G e RMa-4-S, pur essendo interpretabili come metriche di processo (completezza ed efficacia delle fasi di test e correzione), sono invece senz’altro utilizzabili per misurare l’affidabilità di un software:

-  in fase di scrittura dei requisiti, imponendo ad esempio una soglia minima per RMa-1-G e RMa-4-S;
-  in fase di collaudo del software rilasciato, verificando il rispetto dei vincoli di cui sopra;
-  in fase di assessment, ovviamente disponendo della documentazione relativa (es. piani di test).

Metriche per “disponibilità”
''''''''''''''''''''''''''''

Le metriche proposte dalla ISO 25023 per questa sottocaratteristica sono riportate nella tabella che segue.

Tabella 22: metriche per disponibilità

+---+----------------------------+---------------------------+---------+
| * | **Definizione**            | **Descrizione**           | **Formu |
| * |                            |                           | la**    |
| I |                            |                           |         |
| D |                            |                           |         |
| * |                            |                           |         |
| * |                            |                           |         |
+===+============================+===========================+=========+
| R | Disponibilità del software | Per quale parte del tempo | n.d.    |
| A |                            | d’esercizio il software   | (si     |
| v |                            | in esame è effettivamente | rimanda |
| - |                            | disponibile?              | alla    |
| 1 |                            |                           | norma   |
| - |                            |                           | ISO)    |
| G |                            |                           |         |
+---+----------------------------+---------------------------+---------+
| R | Tempo medio di             | Per quanto tempo il       |         |
| A | malfunzionamento           | software è indisponibile  |         |
| v |                            | a seguito di un           |         |
| - |                            | malfunzionamento?         |         |
| 2 |                            |                           |         |
| - |                            |                           |         |
| G |                            |                           |         |
+---+----------------------------+---------------------------+---------+
| R | Disponibilità del software | Per quanto tempo il       |         |
| A | in “giorni speciali” (ad   | software in esercizio è   |         |
| v | esempio fine settimana o   | stato disponibile durante |         |
| - | periodi festivi)           | i giorni speciali?        |         |
| 3 |                            |                           |         |
| - |                            |                           |         |
| S |                            |                           |         |
+---+----------------------------+---------------------------+---------+

*Quando è opportuno utilizzare queste metriche?*

Le metriche RAv-1-G e RAv-2-G sembrano adatte a misurare la disponibilità di un servizio o di un sistema informatico visto nel suo complesso. Valgono le medesime considerazioni e suggerimenti d’uso espresse per le metriche RMa-2-G e RMa-3-G (metriche per “maturità”), in particolare la necessaria attenzione a confrontare misure raccolte in modo omogeneo e a parità di condizioni al contorno.

Per quanto concerne la metrica RAv-3-S, essa prevede un diverso comportamento nei giorni ordinari e nei giorni speciali, il che la rende adeguata a misurare la disponibilità di servizi in cui sia prevalente la componente umana (es. help desk, contact center). Nel contesto di questo studio appare, perciò, poco utile.

Metriche per “tolleranza agli errori”
'''''''''''''''''''''''''''''''''''''

Le metriche di tolleranza agli errori sono utilizzate per definire il grado in cui il sistema, prodotto o componente opera nel modo voluto nonostante l’occorrenza di eventuali eventi anomali. Nel contesto di questo studio, si vuole misurare fino a che punto un software applicativo sia in grado di proseguire nell’esecuzione gestendo opportunamente le anomalie.

Tabella 23: metriche per tolleranza agli errori

+---+--------------+-------------------------------------+------------+
| * | **Definizion | **Descrizione**                     | **Formula* |
| * | e**          |                                     | *          |
| I |              |                                     |            |
| D |              |                                     |            |
| * |              |                                     |            |
| * |              |                                     |            |
+===+==============+=====================================+============+
| R | Robustezza   | Quale parte di tutti gli errori     | n.d. (si   |
| F | agli errori  | critici è stata messa sotto         | rimanda    |
| t |              | controllo                           | alla norma |
| - |              |                                     | ISO)       |
| 1 |              |                                     |            |
| - |              |                                     |            |
| G |              |                                     |            |
+---+--------------+-------------------------------------+------------+
| R | Ridondanza   | Quale porzione dei componenti del   |            |
| F | dei          | sistema è installato in modo        |            |
| t | componenti   | ridondante per evitare blocchi?     |            |
| - |              |                                     |            |
| 2 |              |                                     |            |
| - |              |                                     |            |
| S |              |                                     |            |
+---+--------------+-------------------------------------+------------+
| R | Tempo medio  | In quanto tempo il sistema riporta  |            |
| F | di notifica  | l’occorrenza dell’errore?           |            |
| t | degli errori |                                     |            |
| - |              |                                     |            |
| 3 |              |                                     |            |
| - |              |                                     |            |
| S |              |                                     |            |
+---+--------------+-------------------------------------+------------+

*Note*

La metrica RFt-1-G misura quanti, tra gli errori definiti “critici” (vale a dire quelli che possono determinare blocchi del sistema), vengono gestiti dal software in esame, ad esempio generando un messaggio di errore ma consentendo comunque l’operatività. Questa tematica è definita, in letteratura tecnica, “gestione delle eccezioni”, e rappresenta una delle basi per la buona programmazione.

*Quando è opportuno utilizzare queste metriche?*

Benché molto tecnica, la metrica RFt-1-G è sicuramente utile per misurare il grado di affidabilità di un software. Si può fissare, in un requisito, un valore soglia di questo indicatore, e verificarne il rispetto in fase di collaudo.

La metrica RFt-2-S, per la definizione ordinaria di “ridondanza”, sembra adattarsi particolarmente ai sistemi hardware. Pertanto se ne sconsiglia l’uso nella generalità dei casi di sviluppo applicativo e interventi di manutenzione.

La metrica RFt-3-S sembra riguardare misure di affidabilità di un apparato industriale (un motore, un impianto di produzione, ecc.) in cui i malfunzionamenti vengono ad esempio rilevati da “sonde” che generano segnalazioni dirette a una consolle centralizzata. Si ritiene pertanto che, nel contesto di questo studio, un suo utilizzo sia poco opportuno.

Metriche per “recuperabilità”
'''''''''''''''''''''''''''''

Le metriche di recuperabilità sono utilizzate per definire il grado con cui, in caso di malfunzionamenti, un software può recuperare i dati e ristabilire lo stato desiderato.

Tabella 24: metriche per recuperabilità

+----+-------------+-------------------------------+------------------+
| ** | **Definizio | **Descrizione**               | **Formula**      |
| ID | ne**        |                               |                  |
| ** |             |                               |                  |
+====+=============+===============================+==================+
| RR | Tempo medio | Quanto tempo è necessario per | n.d. (si rimanda |
| e- | di recupero | recuperare dall’errore?       | alla norma ISO)  |
| 1- |             |                               |                  |
| G  |             |                               |                  |
+----+-------------+-------------------------------+------------------+
| RR | Completezza | Quale porzione dei dati è     |                  |
| e- | del backup  | oggetto di backup             |                  |
| 2- |             | regolarmente?                 |                  |
| S  |             |                               |                  |
+----+-------------+-------------------------------+------------------+

*Quando è opportuno utilizzare queste metriche?*

Più che alla misura di qualità di un software, entrambe le metriche sembrano relative alle tematiche del Disaster Recovery e Business Continuity. La prima, in particolare, sembra concettualmente vicina allo RTO (Recovery Time Objective), classico indicatore che qualifica un sistema di DR.

Si ritiene pertanto che queste metriche non siano utili nel contesto di questo studio, e si rimanda invece, per approfondimenti sull’argomento, alle linee guida emesse da questa Agenzia sul Disaster Recovery e la Business Continuity.

Conclusioni su affidabilità
'''''''''''''''''''''''''''

Sulla scorta delle considerazioni espresse, appaiono utili a misurare l’affidabilità di un software, nel contesto della pubblica amministrazione e nelle casistiche indicate, le metriche:

-  RMa-1-G;
-  RMa-4-S;
-  RFt-1-G.

Le restanti metriche sono non adatte al contesto di questo studio o di utilizzo troppo complesso per le tipiche acquisizioni della pubblica amministrazione.

Le metriche di affidabilità, peraltro, potrebbero essere utilizzate per legare la remunerazione di interventi di manutenzione correttiva ai risultati effettivi degli stessi. Oggi, infatti, la manutenzione correttiva viene pagata a canone (in casi di servizi continuativi e per durate contrattuali significative) oppure a giorni persona, vale a dire con metriche di processo. Un approccio alternativo potrebbe essere:

1. misurare l’affidabilità del software oggetto dell’intervento (ad esempio determinando quanto vale RMa-1-G);
2. fissare, come requisito contrattuale, il risultato atteso dell’intervento (ad esempio il nuovo valore che dovrà raggiungere l’indicatore RMa-1-G);
3. verificare, al termine dell’intervento, che il valore fissato sia stato raggiunto;
4. pagare il fornitore in misura proporzionale al risultato ottenuto (e dunque al miglioramento nella qualità del software oggetto dell’intervento), non meramente in base alle giornate persona erogate dal fornitore.

Questo approccio consentirebbe anche di contabilizzare la manutenzione correttiva non più in termini di spesa ricorrente (OPEX), ma al contrario come investimento (CAPEX) finalizzato ad aumentare l’affidabilità del parco applicativo di proprietà dell’amministrazione, e di conseguenza la qualità/valore di tale asset.

Misurazioni di sicurezza
^^^^^^^^^^^^^^^^^^^^^^^^

La ISO 25010 individua, nell’ambito della caratteristica di qualità “sicurezza”, le seguenti sottocaratteristiche:

-  riservatezza;
-  integrità;
-  non ripudio;
-  responsabilità;
-  autenticità.

Per ciascuna di queste sottocaratteristiche, la ISO 25023 propone alcune metriche. Nei paragrafi che seguono vengono illustrate tali metriche, fornendo per ciascuna di esse indicazioni e suggerimenti d’uso.

Metriche per “riservatezza”
'''''''''''''''''''''''''''

Per la prima delle cinque sottocaratteristiche, la ISO 25023 propone 3 metriche, pensate per misurare quanto un software garantisce che le informazioni siano accessibili solo agli utenti autorizzati.

Tabella 25: metriche per riservatezza

+---+---------------+------------------------------------+------------+
| * | **Nome**      | **Descrizione**                    | **Formula* |
| * |               |                                    | *          |
| I |               |                                    |            |
| D |               |                                    |            |
| * |               |                                    |            |
| * |               |                                    |            |
+===+===============+====================================+============+
| S | Controllo     | Percentuale di dati riservati      | n.d. (si   |
| C | accessi       | protetti da accessi non            | rimanda    |
| o |               | autorizzati                        | alla norma |
| - |               |                                    | ISO)       |
| 1 |               |                                    |            |
| - |               |                                    |            |
| G |               |                                    |            |
+---+---------------+------------------------------------+------------+
| S | Correttezza   | Quanto correttamente viene         |            |
| C | della         | implementata la procedura di       |            |
| o | crittografia  | crittografia / decrittografia dei  |            |
| - | dei dati      | dati.                              |            |
| 2 |               |                                    |            |
| - |               |                                    |            |
| G |               |                                    |            |
+---+---------------+------------------------------------+------------+
| S | Robustezza    | Percentuale degli algoritmi        |            |
| C | degli         | crittografici validi sul totale    |            |
| o | algoritmi     | degli algoritmi usati              |            |
| - | crittografici |                                    |            |
| 3 |               |                                    |            |
| - |               |                                    |            |
| S |               |                                    |            |
+---+---------------+------------------------------------+------------+

*Note*

*Riservatezza* in informatica significa gestire la sicurezza in modo tale da mitigare i rischi connessi all’accesso o all’uso delle informazioni in forma non autorizzata. Le metriche per garantire la riservatezza proposte dalla ISO 25023 puntano sulla necessità di utilizzare sistemi di cifratura e algoritmi crittografi efficaci (la ISO cita ad esempio quelli previsti dallo standard americano `FIPS 140-2 <http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.140-2.pdf>`__\ `20 <#fn20>`__).

In Italia, i riferimenti per la sicurezza sono gli standard ISO/IEC IS-15408 (Common Criteria) e i criteri europei ITSEC (Information Technology Security Evaluation Criteria) e ITSEM (Information Technology Security Evaluation. Manual). Ne consegue che ha senso ricorrere a tale metrica per misurare in che percentuale gli algoritmi crittografici implementati sono conformi ai livelli di garanzia della valutazione di sicurezza basata sui Common Criteria variabili da un minimo di EAL1 (Evaluation Assurance Level 1) a un massimo di EAL7.

*Quando è opportuno utilizzare queste metriche?*

La P.A. può ricorrere all’uso di queste metriche qualora la caratteristica della riservatezza vada gestita a livello applicativo. In realtà, nella maggioranza dei sistemi informatici, le tematiche del controllo accessi e della cifratura dei dati sono affrontate a livello di sistema operativo o di middleware (ad esempio sono garantite dal DBMS). Pertanto si ritiene che l’uso di queste metriche sia limitato a casi residuali ove questo specifico aspetto della sicurezza è delegato all’applicazione da realizzare.

Metriche per “integrità”
''''''''''''''''''''''''

Per la seconda delle cinque sottocaratteristiche, la ISO 25023 propone 3 metriche, pensate per valutare il grado a cui un sistema, un prodotto o un componente impedisce la modifica impropria dei dati.

Tabella 26: metriche per integrità

+---+----------------------+-----------------------------+-------------+
| * | **Nome**             | **Descrizione**             | **Formula** |
| * |                      |                             |             |
| I |                      |                             |             |
| D |                      |                             |             |
| * |                      |                             |             |
| * |                      |                             |             |
+===+======================+=============================+=============+
| S | Integrità dei dati   | Numero di dati corrotti o   | n.d. (si    |
| I |                      | modificati a seguito di     | rimanda     |
| n |                      | accesso non autorizzato     | alla norma  |
| - |                      |                             | ISO)        |
| 1 |                      |                             |             |
| - |                      |                             |             |
| G |                      |                             |             |
+---+----------------------+-----------------------------+-------------+
| S | Prevenzione della    | Misura dell’efficacia dei   |             |
| I | corruzione dei dati  | metodi di prevenzione della |             |
| n | da eventi interni    | corruzione dei dati         |             |
| - |                      |                             |             |
| 2 |                      |                             |             |
| - |                      |                             |             |
| G |                      |                             |             |
+---+----------------------+-----------------------------+-------------+
| S | Validità degli       | Numero degli accessi validi |             |
| I | accessi alle         | agli elementi di un array   |             |
| n | strutture dati       |                             |             |
| - | (array)              |                             |             |
| 3 |                      |                             |             |
| - |                      |                             |             |
| S |                      |                             |             |
+---+----------------------+-----------------------------+-------------+

*Note*

La metrica SIn-3-S non è chiara né come descrizione né come formula. Si ipotizza che si riferisca alla possibilità di controllare che dati inseriti da un utente restino all’interno di un definito intervallo di validità (es. non accettare importi superiori alla soglia massima stabilita).

*Quando è opportuno utilizzare queste metriche?*

L’integrità dei dati, intesa come garanzia che l’informazione non subisca modifiche/cancellazioni erronee a seguito di errori o di azioni volontarie, ma anche a seguito di malfunzionamenti/danni dei sistemi tecnologici, è un requisito non funzionale. Esso si può soddisfare – secondo la letteratura tecnica tra cui le linee guida AgID - attraverso l’adozione di un modello di sicurezza che sia basato sull’analisi del rischio, impostato sulla definizione di processi e procedure di sicurezza.

Si ritiene pertanto che le P.A. debbano garantire l’integrità dei loro dati non a livello del software applicativo, bensì ad esempio adottando sistemi di gestione conformi alla ISO 27001 (ISO/IEC 27001:2013 Information technology - Security techniques - Information security management systems – Requirements) sulla sicurezza dei dati (come del resto alcune amministrazioni hanno già provveduto a fare). In questo senso, si ritiene che le metriche di tabella 26 abbiano scarsa rilevanza nel contesto dello studio.

Metriche per “non ripudio”
''''''''''''''''''''''''''

Per la terza sottocaratteristica, la ISO 25023 propone una metrica, pensata per valutare il grado con cui si può provare, a posteriori, che un evento/azione sia effettivamente accaduto.

Tabella 27: metriche per non ripudio

+----+-------------+--------------------------------------------------+
| ** | **Nome**    | **Descrizione**                                  |
| ID |             |                                                  |
| ** |             |                                                  |
+====+=============+==================================================+
| SN | Uso della   | Percentuale di eventi che richiedono il *non     |
| o- | firma       | ripudio*, e che utilizzano la firma digitale.    |
| 1- | digitale    |                                                  |
| G  |             |                                                  |
+----+-------------+--------------------------------------------------+

*Note*

La firma digitale è intesa più genericamente dalla ISO 25023 come firma elettronica, mentre nell’ordinamento italiano la firma digitale è una fattispecie particolare di firma elettronica avanzata.

*Quando è opportuno utilizzare queste metriche?*

La metrica in esame appare allineata all’ordinamento italiano, che prevede appunto il ricorso alla firma digitale per garantire il principio di non ripudio. Tuttavia, data l’obbligatorietà di questa previsione, più che una metrica si tratta di un requisito mandatorio implicito nello sviluppo di sistemi informatici: tutti i casi di non ripudio devono essere affrontati con lo strumento della firma digitale, ergo questo indicatore deve essere sempre pari a 100.

Metriche per “responsabilità”
'''''''''''''''''''''''''''''

Per la quarta sottocaratteristica, la ISO 25023 propone 2 metriche, pensate per valutare il grado con cui determinate azioni di un soggetto possano essere – in modo inequivocabile – riferite al soggetto medesimo.

Tabella 28: metriche per responsabilità

+---+----------------+---------------------------------+--------------+
| * | **Nome**       | **Descrizione**                 | **Formula**  |
| * |                |                                 |              |
| I |                |                                 |              |
| D |                |                                 |              |
| * |                |                                 |              |
| * |                |                                 |              |
+===+================+=================================+==============+
| S | Completezza    | Percentuale di tracciabilità    | n.d. (si     |
| A | della          | utente all’accesso ai sistemi o | rimanda alla |
| c | tracciabilità  | alle informazioni               | norma ISO)   |
| - | utente         |                                 |              |
| 1 |                |                                 |              |
| - |                |                                 |              |
| G |                |                                 |              |
+---+----------------+---------------------------------+--------------+
| S | Conservazione  | Durata di conservazione del     |              |
| A | del registro   | registro di sistema in archivio |              |
| c | di sistema     |                                 |              |
| - |                |                                 |              |
| 2 |                |                                 |              |
| - |                |                                 |              |
| G |                |                                 |              |
+---+----------------+---------------------------------+--------------+

*Note*

Con riferimento alla metrica SAc-2-G, la formula e la descrizione proposta non sono chiare. Si ipotizza che tale metrica intenda misurare la persistenza dei registri di log (quanto più a lungo essi vengono conservati, tanto più sicuro è il sistema).

*Quando è opportuno utilizzare queste metriche?*

La tematica della responsabilità è un aspetto tradizionale della sicurezza dei sistemi informatici, e senz’altro è d’interesse nella realizzazione di software applicativo per la P.A.

Si ritiene pertanto che le metriche di tabella 28 siano applicabili al contesto dello studio, e che possano essere utilizzate per misurare il livello di sicurezza di un software commissionato a un fornitore.

Metriche per “autenticità”
''''''''''''''''''''''''''

Per la quinta sottocaratteristica, la ISO 25023 propone 2 metriche, pensate per valutare il grado con cui l’identità di un soggetto o di una risorsa possa essere verificata.

Tabella 29: metriche per autenticità

+---+---------------+-------------------------------------+------------+
| * | **Nome**      | **Descrizione**                     | **Formula* |
| * |               |                                     | *          |
| I |               |                                     |            |
| D |               |                                     |            |
| * |               |                                     |            |
| * |               |                                     |            |
+===+===============+=====================================+============+
| S | Procedure di  | Grado di implementazione efficace   | n.d. (si   |
| A | autenticazion | di un sistema di autenticazione di  | rimanda    |
| u | e             | un soggetto o di una risorsa        | alla norma |
| - |               |                                     | ISO)       |
| 1 |               |                                     |            |
| - |               |                                     |            |
| G |               |                                     |            |
+---+---------------+-------------------------------------+------------+
| S | Conformità    | Percentuale di regole di            |            |
| A | alle regole   | autenticazione stabilite            |            |
| u | di            |                                     |            |
| - | autenticazion |                                     |            |
| 2 | e             |                                     |            |
| - |               |                                     |            |
| G |               |                                     |            |
+---+---------------+-------------------------------------+------------+

*Quando è opportuno utilizzare queste metriche?*

La tematica in questione (autenticità) è senz’altro importante nel contesto della pubblica amministrazione. Tuttavia, come noto, il modello strategico d’evoluzione del sistema informativo della P.A. prevede, per regolare questi aspetti, l’uso di SPID (Sistema Pubblico di Identità Digitale). Si ritiene pertanto che, nei futuri sviluppi applicativi, le amministrazioni non abbiano bisogno di utilizzare questa metrica, ma solo di richiedere (e verificare) il corretto uso di SPID.

Viceversa, questa metrica potrebbe avere senso per misurare, in attività di assessment di parchi applicativi pre-esistenti che non utilizzano SPID, il grado di sicurezza delle applicazioni oggetto di assessment.

Conclusioni su sicurezza
''''''''''''''''''''''''

Com’è noto, la sicurezza di un sistema informatico è una tematica ampia che include aspetti molteplici, non solo tecnologici ma anche logistici e organizzativi (come suggerisce ad esempio lo standard ISO 27001). L’AgID, peraltro, presidia istituzionalmente l’argomento “sicurezza”, ha emesso linee guida e raccomandazioni in materia (per ultime, le Linee guida per lo sviluppo del software sicuro nella P.A., pubblicate il 21 novembre 2017), e mantiene un centro di competenza con il compito, tra l’altro, di studiare l’evoluzione della tematica e di aggiornare le indicazioni già emesse.

Ciò detto, le metriche proposte dalla ISO 25023 per la sicurezza appaiono di tipo generico e non del tutto adeguate al contesto di questo studio (misurare le caratteristiche di un software commissionato da un’amministrazione). Tra le metriche esaminate in questo capitolo, potrebbe aver senso l’uso:

-  delle metriche di tabella 25, quando (circostanze particolari) la problematica del controllo accessi e della cifratura dei dati vada gestita a livello applicativo;
-  delle metriche di tabella 28;
-  delle metriche di tabella 29, solo per attività di assessment di parchi applicativi già esistenti che non prevedono l’uso di SPID.

In generale, è opportuno ricordare, che si può ricorrere ai Common Criteria per eseguire la valutazione e la certificazione di applicazioni software anche sul fronte della sicurezza delle stesse.

Misurazioni di manutenibilità
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

La ISO 25010 individua, per la caratteristica di qualità “manutenibilità”, le seguenti sottocaratteristiche:

-  modularità;
-  riusabilità;
-  analizzabilità;
-  modificabilità;
-  testabilità.

Per ciascuna di queste sottocaratteristiche, la ISO 25023 propone alcune metriche, illustrate nei paragrafi che seguono. Per ogni metrica vengono fornite indicazioni e suggerimenti d’uso.

Metriche per “modularità”
'''''''''''''''''''''''''

Si tratta di metriche pensate per misurare il grado con cui un prodotto/sistema software è suddiviso in componenti tali che il cambiamento di uno di essi ha impatti minimali sugli altri.

Tabella 30: metriche per modularità

+---+-----------+---------------------------------------------+--------+
| * | **Nome**  | **Descrizione**                             | **Form |
| * |           |                                             | ula**  |
| I |           |                                             |        |
| D |           |                                             |        |
| * |           |                                             |        |
| * |           |                                             |        |
+===+===========+=============================================+========+
| M | Accoppiam | In un prodotto/sistema software quanto      | n.d.   |
| M | ento      | strettamente sono indipendenti i componenti | (si    |
| o | di        | e quanti componenti sono esenti da impatti  | rimand |
| - | component | da cambiamenti negli altri componenti?      | a      |
| 1 | i         |                                             | alla   |
| - |           |                                             | norma  |
| G |           |                                             | ISO)   |
+---+-----------+---------------------------------------------+--------+
| M | Adeguatez | Quanti moduli software hanno una            |        |
| M | za        | complessità ciclomatica accettabile?        |        |
| o | della     |                                             |        |
| - | complessi |                                             |        |
| 2 | tà        |                                             |        |
| - | ciclomati |                                             |        |
| S | ca        |                                             |        |
+---+-----------+---------------------------------------------+--------+

*Note*

La soglia stabilita per misurare MMo-2-S “adeguatezza della complessità ciclomatica” è usata per determinare se un dato valore di complessità ciclomatica è accettabile o meno per un certo modulo. Sarebbe opportuno definire tale soglia di accettabilità per il singolo progetto e, preferibilmente, un valore diverso a seconda del linguaggio di programmazione utilizzato e del tipo di modulo o di funzione.

Complessità ciclomatica

Nell’ingegneria del software (metriche del software), la complessità ciclomatica (CC) è usata per valutare la complessità di un algoritmo ed è basata sulla struttura del grafo che rappresenta l’algoritmo da misurare.

Riferendosi ad un grafo che rappresenta l’algoritmo e posto:

-  v(G): numero ciclomatico relativo al grafo G
-  L: numero di archi nel grafo
-  N: numero di nodi del grafo
-  P: numero dei componenti del grafo disconnessi

Si ha: **v(G) = L – N + 2*P**

In un grafo G fortemente connesso, la complessità ciclomatica è uguale al numero di percorsi linearmente indipendenti. Per una sequenza dove è presente un solo percorso (non ci sono scelte/opzioni) sarà necessario un solo caso di test. Se invece è presente un If loop allora avrò due scelte cioè due percorsi alternativi: se la condizione è vera verrà testato un percorso, se la condizione è falsa verrà testato l’altro. In generale se sono presenti tanti If loop allora avrò tante scelte che generano dei percorsi multipli, ad ognuno dei quali è associato un caso di test.

Di fatto, il concetto di CC è legato a quello della testabilità, infatti minore è la complessità e maggiore è la facilità di definizione/progettazione dei test.

*Quando è opportuno utilizzare queste metriche?*

La metrica MMo-2-S (adeguatezza della complessità ciclomatica) appare derivata dalla complessità ciclomatica, che è misurabile solo dopo la realizzazione del prodotto software e mediante analizzatori di codice sorgente.

L’uso della metrica MMo-1-G (accoppiamento di componenti) appare sostanzialmente come un modo per misurare la bontà del processo produttivo più che la qualità del prodotto. Potrebbe comunque essere un modo per spingere, e poi misurare, il fornitore all’uso di buone prassi nella strutturazione del processo produttivo. Questa metrica potrebbe avere un uso pratico non immediato per una P.A. poco strutturata e con basse competenze IT, che difficilmente sarebbe in grado di misurare in modo indipendente dal fornitore, se non affidandosi a una terza parte, l’indipendenza dei moduli del prodotto.

Un metodo empirico, applicabile anche in realtà meno strutturate, potrebbe essere sfruttare i dati raccolti dal sistema di tracciatura del processo di change/release management per misurare quanti cambiamenti in altri moduli sono indotti da una change request su un dato modulo.

La metrica MMo-1-G (accoppiamento di componenti) potrebbe essere utile a condizionare parte della remunerazione del fornitore: potrebbe ad esempio essere misurata nel corso del periodo di garanzia per stabilire la qualità del prodotto acquisito. Si potrebbe fissare una soglia ragionevolmente prossima a 1 e legare contrattualmente parte della remunerazione del fornitore alla misura ottenuta (es. valore finale dell’indicatore al termine del periodo di garanzia come indice predittivo della facilità di manutenzione, e quindi minori costi fino al termine del ciclo di vita del prodotto). Tale metrica potrebbe integrare l’attuale prassi di stima del canone di manutenzione sulla base del conteggio in Punti Funzione del prodotto da manutenere. Per approfondimenti si rimanda agli esempi del capitolo 6.

Metriche per “riusabilità”
''''''''''''''''''''''''''

Si tratta di metriche pensate per misurare il grado con cui un software può essere usato in più di un prodotto/sistema o per costruire altri software.

Tabella 31: metriche per riusabilità

+---+-------------+-------------------------------------+-------------+
| * | **Nome**    | **Descrizione**                     | **Formula** |
| * |             |                                     |             |
| I |             |                                     |             |
| D |             |                                     |             |
| * |             |                                     |             |
| * |             |                                     |             |
+===+=============+=====================================+=============+
| M | Riusabilità | Quanti asset (moduli software       | n.d. (si    |
| R | degli asset | autoconsistenti) in un sistema      | rimanda     |
| e |             | possono essere riusabili?           | alla norma  |
| - |             |                                     | ISO)        |
| 1 |             |                                     |             |
| - |             |                                     |             |
| G |             |                                     |             |
+---+-------------+-------------------------------------+-------------+
| M | Conformità  | Quanti moduli software nel          |             |
| R | alle regole | prodotto/sistema sviluppato sono    |             |
| e | di codifica | conformi alle regole di codifica?   |             |
| - |             |                                     |             |
| 2 |             |                                     |             |
| - |             |                                     |             |
| S |             |                                     |             |
+---+-------------+-------------------------------------+-------------+

*Note*

Le regole di codifica per uno specifico prodotto/sistema potrebbero includere regole che contribuiscono, ad esempio, alla modularità, tracciabilità, concisione del codice, ecc.

La valutazione della riusabilità di prodotti software è stata già trattata da AgID (allora DigitPA) nel documento “\ *Linee guida per l’inserimento e il riuso di programmi informatici o parti di essi pubblicati nella banca dati dei programmi informatici riutilizzabili*\ ” nel quale sono anche contenuti vari indicatori per la misurazione della riusabilità di un software.

*Quando è opportuno utilizzare queste metriche?*

Le metriche consigliate da ISO appaiono semplici e di buon senso, ma sostanzialmente sono metriche derivate, che misurano più la qualità del processo produttivo che non del prodotto in se stesso.

Metriche per “analizzabilità”
'''''''''''''''''''''''''''''

Si tratta di metriche pensate per misurare il grado di efficacia ed efficienza con cui è possibile:

-  analizzare/verificare gli impatti di un certo cambiamento a una o più parti di un prodotto/sistema software;
-  diagnosticare difettosità o cause di errori nel prodotto/sistema;
-  identificare parti da modificare per soddisfare una esigenza di cambiamento.

Tabella 32: metriche per analizzabilità

+---+-------------+-----------------------------------------+-----------+
| * | **Nome**    | **Descrizione**                         | **Formula |
| * |             |                                         | **        |
| I |             |                                         |           |
| D |             |                                         |           |
| * |             |                                         |           |
| * |             |                                         |           |
+===+=============+=========================================+===========+
| M | Completezza | Quanto è estesa la copertura dei log di | n.d. (si  |
| A | dei log di  | sistema al fine di tracciare le         | rimanda   |
| n | sistema     | operazioni che avvengono nel            | alla      |
| - |             | prodotto/sistema?                       | norma     |
| 1 |             |                                         | ISO)      |
| - |             |                                         |           |
| G |             |                                         |           |
+---+-------------+-----------------------------------------+-----------+
| M | Efficacia   | Quale proporzione delle funzioni di     |           |
| A | delle       | diagnosi soddisfa i requisiti di        |           |
| n | funzioni di | un’analisi causale?                     |           |
| - | diagnosi    |                                         |           |
| 2 |             |                                         |           |
| - |             |                                         |           |
| S |             |                                         |           |
+---+-------------+-----------------------------------------+-----------+
| M | Sufficienza | A cosa si estendono le funzioni di      |           |
| A | delle       | diagnosi preparate?                     |           |
| n | funzioni di |                                         |           |
| - | diagnosi    |                                         |           |
| 3 |             |                                         |           |
| - |             |                                         |           |
| S |             |                                         |           |
+---+-------------+-----------------------------------------+-----------+

*Note*

Le misure di analizzabilità sono usate per stimare l’impegno dei manutentori, degli utenti o, in generale, le risorse spese nel provare a diagnosticare difettosità o cause di errori, oppure per identificare le parti da modificare.

Il concetto di “funzione di diagnosi” usato nella definizione di MAn-2-S e MAn-3-S appare poco definibile in modo univoco e preciso (in quanto molto dipendente dalla tecnologia di realizzazione del prodotto).

Per funzione di diagnosi si intendono funzioni che effettuano il cosiddetto “trap dell’errore” al fine di manifestare all’utente (eventualmente a una determinata classe di essi, ad esempio amministratori del prodotto) il verificarsi di condizioni anomale e che effettuano anche una prima diagnosi della causa d’errore. Tali metriche effettivamente possono contribuire alla valutazione della qualità di prodotto. Si osserva però che la misurazione di MAn-2-S e MAn-3-S richiede un’esperienza di esame della documentazione di prodotto e, probabilmente, di *code inspection* che potrebbe non essere alla portata di organizzazioni poco strutturate.

*Quando è opportuno utilizzare queste metriche?*

MAn-1-G (completezza dei log di sistema) è facilmente applicabile anche da non tecnici, anzi, la comprensione dei contenuti predisposti dal prodotto nei log da parte di non tecnici ai fini dell’analisi causale potrebbe costituire un’ulteriore elemento di qualità del prodotto stesso.

MAn-2-S (efficacia delle funzioni di diagnosi) e la terza MAn-3-S (sufficienza delle funzioni di diagnosi) appaiono, come detto sopra, di più difficile applicazione, con un significato meno percepibile dai non addetti ai lavori e probabilmente poco adatte al contesto della P.A.

Metriche per “modificabilità”
'''''''''''''''''''''''''''''

Si tratta di metriche pensate per misurare il grado con cui un software può essere efficacemente ed efficientemente modificato senza introdurre difetti o degrado della qualità in esercizio.

Tabella 33: metriche per modificabilità

+---+------------+--------------------------------------+--------------+
| * | **Nome**   | **Descrizione**                      | **Formula**  |
| * |            |                                      |              |
| I |            |                                      |              |
| D |            |                                      |              |
| * |            |                                      |              |
| * |            |                                      |              |
+===+============+======================================+==============+
| M | Efficienza | Quanto efficientemente possono       | n.d. (si     |
| M | delle      | essere apportate le modifiche        | rimanda alla |
| d | modifiche  | rispetto al tempo previsto?          | norma ISO)   |
| - |            |                                      |              |
| 1 |            |                                      |              |
| - |            |                                      |              |
| G |            |                                      |              |
+---+------------+--------------------------------------+--------------+
| M | Correttezz | Quale proporzione delle modifiche è  |              |
| M | a          | stato implementato correttamente?    |              |
| d | delle      |                                      |              |
| - | modifiche  |                                      |              |
| 2 |            |                                      |              |
| - |            |                                      |              |
| G |            |                                      |              |
+---+------------+--------------------------------------+--------------+
| M | Capacità   | Quanto sono estese le modifiche      |              |
| M | di         | richieste realizzate in uno          |              |
| d | modifica   | specifico periodo di tempo?          |              |
| - |            |                                      |              |
| 3 |            |                                      |              |
| - |            |                                      |              |
| S |            |                                      |              |
+---+------------+--------------------------------------+--------------+

*Note*

Le misure di modificabilità sono usate per verificare l’impegno dei manutentori o degli utenti nell’atto di eseguire una determinata modifica. Il tempo previsto per realizzare una specifica tipologia di modifica può essere basato su dati storici o su medie di settore industriale.

*Quando è opportuno utilizzare queste metriche?*

Le tre metriche proposte sono facilmente comprensibili e calcolabili e non richiedono strumenti a supporto particolarmente sofisticati: basta anche un semplice foglio excel che elabori i dati estratti dal sistema di tracciatura del processo di change/release management. Tuttavia appaiono più come metriche della qualità del processo di manutenzione attuato dal fornitore che della qualità del prodotto.

MMd-2-G (correttezza delle modifiche) rientra molto probabilmente tra le misure che qualsiasi committente di prodotti software è già abituato a rilevare per valutare la qualità del processo di manutenzione.

MMd-1-G (efficienza delle modifiche) e MMd-3-S (capacità di modifica) potrebbero essere di difficile applicazione da parte di organizzazioni non troppo strutturate poiché, per loro stessa natura, richiedono l’adozione di dati storici o di medie di settore per poter restituire misure soddisfacenti.

MMd-1-G (efficienza delle modifiche) e MMd-3-S (capacità di modifica) potrebbero però anche essere utilizzate come misura indiretta della qualità del prodotto al fine di condizionare parte della remunerazione del fornitore: potrebbero ad esempio essere misurate nel corso del periodo di garanzia per stabilire la qualità del prodotto acquisito. Si potrebbero fissare soglie e legare parte della remunerazione del fornitore alla misura ottenuta (es. valore finale dell’indicatore al termine del periodo di garanzia come indice predittivo della facilità di manutenzione, e quindi minori costi fino al termine del ciclo di vita del prodotto).

Tali metriche, come già osservato per MMo-1-G (accoppiamento di componenti) potrebbero integrare l’attuale prassi di stima del canone di manutenzione sulla base del conteggio in Punti Funzione del software da manutenere. Si rimanda agli esempi del capitolo 6 per approfondimenti.

Metriche per “testabilità”
''''''''''''''''''''''''''

Si tratta di metriche pensate per misurare il grado di efficacia e di efficienza con cui i criteri di test possono essere stabiliti per un componente software e i test possono essere effettuati per determinare se tali criteri sono soddisfatti.

Tabella 34: metriche per testabilità

+---+-------------+--------------------------------------+------------+
| * | **Nome**    | **Descrizione**                      | **Formula* |
| * |             |                                      | *          |
| I |             |                                      |            |
| D |             |                                      |            |
| * |             |                                      |            |
| * |             |                                      |            |
+===+=============+======================================+============+
| M | Completezza | Quanto completamente sono            | n.d. (si   |
| T | della       | implementate le funzioni e le        | rimanda    |
| e | funzione di | strutture di test?                   | alla norma |
| - | test        |                                      | ISO)       |
| 1 |             |                                      |            |
| - |             |                                      |            |
| G |             |                                      |            |
+---+-------------+--------------------------------------+------------+
| M | Autonomia   | Quanto indipendentemente può essere  |            |
| T | di          | testato il software?                 |            |
| e | testabilità |                                      |            |
| - |             |                                      |            |
| 2 |             |                                      |            |
| - |             |                                      |            |
| S |             |                                      |            |
+---+-------------+--------------------------------------+------------+
| M | Ripetibilit | Quanto facilmente possono essere     |            |
| T | à           | rieseguite da capo le operazioni di  |            |
| e | dei test    | test dopo una manutenzione?          |            |
| - |             |                                      |            |
| 3 |             |                                      |            |
| - |             |                                      |            |
| S |             |                                      |            |
+---+-------------+--------------------------------------+------------+

*Note*

Le misure di testabilità interna indicano un insieme di attributi per predire la quantità di funzioni autonome di ausilio ai test progettate e implementate presenti nel prodotto software.

Le misure di testabilità esterna sono usate per verificare attributi quali l’impegno dei manutentori o degli utenti per eseguire il test.

*Quando è opportuno utilizzare queste metriche?*

Tutte le metriche proposte appaiono semplici da comprendere e da misurare, ma sono molto più legate ai processi organizzativi di manutenzione attuati dal fornitore che alla qualità del prodotto software.

Conclusioni su manutenibilità
'''''''''''''''''''''''''''''

Riassumendo i contenuti dei paragrafi precedenti, tra le metriche proposte da ISO 25023 per la caratteristica “manutenibilità”, nel contesto della P.A. appaiono utili:

-  MMo-2-S (adeguatezza della complessità ciclomatica), che però necessita di uno strumento per la misurazione;
-  MMo-1-G (accoppiamento di componenti), che appare utile anche per integrare la stima del canone di manutenzione;
-  MAn-1-G (completezza dei log di sistema);
-  MMd-1-G (efficienza delle modifiche), anche per integrare la stima del canone di manutenzione;
-  MMd-3-S (capacità di modifica), anche per integrare la stima del canone di manutenzione.

Misurazioni di idoneità funzionale
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Preliminarmente occorre sottolineare che la caratteristica “idoneità funzionale” definita dalla ISO 25010 non coincide con il contenuto funzionale di un software. Si tratta invece di una caratteristica di qualità, per la quale la ISO 25010 individua le seguenti sottocaratteristiche:

-  completezza;
-  correttezza;
-  adeguatezza.

Per ciascuna di queste sottocaratteristiche, la ISO 25023 propone alcune metriche. Nei paragrafi che seguono esse vengono illustrate, fornendo indicazioni e suggerimenti d’uso.

Metriche per “completezza”
''''''''''''''''''''''''''

Per la prima delle tre sottocaratteristiche, la ISO 25023 propone una metrica pensata per valutare il grado di copertura dell’insieme delle funzioni realizzate rispetto alle specifiche.

Tabella 35: metriche per completezza

+------+----------------+---------------------------------------------+
| **ID | **Nome**       | **Descrizione**                             |
| **   |                |                                             |
+======+================+=============================================+
| FCp- | Copertura      | Percentuale di implementazione delle        |
| 1-G  | funzionale     | funzioni specificate.                       |
+------+----------------+---------------------------------------------+

*Quando è opportuno utilizzare queste metriche?*

Questa metrica, peraltro molto intuitiva, può essere usata in due distinte fasi del ciclo di sviluppo. In una prima fase (analisi/design) può essere utilizzata per misurare la copertura delle specifiche funzionali rispetto all’insieme dei requisiti utente. In una seconda fase (implementazione/codifica) può essere usata per misurare la copertura del software rilasciato rispetto alla lista delle funzioni inclusa nel documento “specifiche funzionali”.

|image3|

Figura 3: fasi del ciclo di sviluppo

La metrica SCp-1-G Inoltre può essere utile per misurare il grado d’avanzamento di un processo di sviluppo, o la percentuale di completamento di un software che viene rilasciato per iterazioni successive (es. metodologie Agili). A ogni iterazione potrebbe avere senso riportare la completezza di ciò che viene rilasciato.

Metriche per “correttezza”
''''''''''''''''''''''''''

Per la seconda delle tre sottocaratteristiche, la ISO 25023 propone una metrica pensata per valutare il grado con cui un software fornisce risultati corretti al grado di precisione necessario.

Tabella 36: metriche per correttezza

+------+-----------------+--------------------------------------------+
| **ID | **Nome**        | **Descrizione**                            |
| **   |                 |                                            |
+======+=================+============================================+
| FCr- | Correttezza     | Percentuale di funzioni che forniscono     |
| 1-G  | funzionale      | risultati corretti.                        |
+------+-----------------+--------------------------------------------+

*Note*

La ISO 25023 specifica nelle note che per “funzione non corretta” s’intende quella funzione che non fornisce un risultato ragionevole e accettabile per il raggiungimento dello specifico obiettivo previsto.

Si ritiene di dover interpretare questa definizione, piuttosto vaga, nel senso di identificare le funzioni che, pur non determinando un’anomalia in esecuzione (es. il software va in blocco o termina impropriamente), fornisce un risultato difforme da ciò che ci si aspettava. Quindi non si tratta di difettosità del software, ma appunto di correttezza della funzione, ad esempio perché l’algoritmo di calcolo della funzione presenta criticità.

*Quando è opportuno utilizzare queste metriche?*

Si ritiene che questa metrica sia poco applicabile nel contesto dello studio. Ove infatti la funzione in esame fornisca sistematicamente valori errati, si tratta più propriamente di difettosità, che viene rilevata normalmente in fase di test e deve essere corretta. Se invece si teme che una funzione possa generare valori incorretti solo in alcune condizioni particolari (ad esempio, in software contabili, per il sovrapporsi di arrotondamenti successivi non previsti dall’algoritmo di calcolo), allora occorre effettuare un numero statisticamente significativo di prove in vari scenari d’uso. In quest’ultimo caso avrebbe magari senso una misura che indicasse, in senso statistico, la possibilità del verificarsi di calcoli non corretti (ma ciò non sembra l’obiettivo della metrica FCr-1-G).

Metriche per “adeguatezza”
''''''''''''''''''''''''''

Per la terza sottocaratteristica, la ISO 25023 propone 2 metriche pensate per valutare il grado secondo cui le funzioni agevolano la realizzazione di compiti e obiettivi specifici.

Tabella 37: metriche per adeguatezza

+---+-------------+------------------------------------------+----------+
| * | **Nome**    | **Descrizione**                          | **Formul |
| * |             |                                          | a**      |
| I |             |                                          |          |
| D |             |                                          |          |
| * |             |                                          |          |
| * |             |                                          |          |
+===+=============+==========================================+==========+
| F | Adeguatezza | Percentuale delle funzioni richieste     | n.d. (si |
| A | funzionale  | dall'utente che fornisce un risultato    | rimanda  |
| p | dell’obiett | adeguato per raggiungere un obiettivo    | alla     |
| - | ivo         | specifico di utilizzo.                   | norma    |
| 1 | d’uso       |                                          | ISO)     |
| - |             |                                          |          |
| G |             |                                          |          |
+---+-------------+------------------------------------------+----------+
| F | Adeguatezza | Percentuale delle funzioni richieste     |          |
| A | funzionale  | dall'utente per raggiungere i propri     |          |
| p | del sistema | obiettivi che forniscono risultati       |          |
| - |             | adeguati.                                |          |
| 2 |             |                                          |          |
| - |             |                                          |          |
| G |             |                                          |          |
+---+-------------+------------------------------------------+----------+

*Note*

Le due metriche di tabella fanno riferimento al concetto di efficacia nel software, cioè sono pensate per misurare quanto pienamente il software raggiunge i risultati per i quali viene utilizzato. Data la definizione, il grado di soggettività che esse includono è palese.

Inoltre le formule non sono chiare; in particolare la formula della metrica FAp-2-G (non qui riportata, fa riferimento la norma originaria) sembra complessa e di scarsa applicabilità.

*Quando è opportuno utilizzare queste metriche?*

Le metriche di tabella 37 appaiono complicate e soggettive. Si ritiene possibile un loro uso ove si voglia misurare, come indicatore di efficacia, la qualità del documento dei requisiti rispetto alle reali necessità dell’utente (in altri termini, quanto i requisiti sono efficaci nel descrivere le necessità dell’utente).

In questo senso, tuttavia, la metrica in questione si riferirebbe alla qualità del processo di sviluppo, in particolare alla qualità della fase di raccolta e definizione dei requisiti. Ma ciò è fuori dall’ambito di questo studio, che – come detto – si occupa di misure del software applicativo considerato come prodotto.

Conclusioni su idoneità funzionale
''''''''''''''''''''''''''''''''''

Di tutte le metriche proposte per l’idoneità funzionale, l’unica che sembra di agevole utilizzo è la SCp-1-G (copertura funzionale). Essa, molto intuitiva e d’immediata applicazione, potrebbe essere utile anche in caso di cicli di sviluppo iterativi (es. metodologie Agili), misurando lo stato di avanzamento del progetto tramite la copertura funzionale raggiunta dal software rilasciato al termine di ogni iterazione.

Misurazioni di portabilità
^^^^^^^^^^^^^^^^^^^^^^^^^^

Le misure di portabilità sono utilizzate per valutare il grado di efficacia ed efficienza con cui un sistema, un prodotto/componente può essere trasferito da una piattaforma hardware, software o altro ambiente operativo o d’uso a un altro.

La ISO 25010 individua, per la caratteristica di qualità “portabilità”, le seguenti sottocaratteristiche:

-  adattabilità;
-  installabilità;
-  sostituibilità.

Per ciascuna di queste sottocaratteristiche, la ISO 25023 propone alcune metriche, illustrate nei paragrafi che seguono. Per ogni metrica vengono fornite indicazioni e suggerimenti d’uso.

Metriche di adattabilità
''''''''''''''''''''''''

Le metriche di adattabilità sono pensate per valutare il livello di facilità con cui un sistema o un prodotto può essere efficacemente ed efficientemente adattato per funzionare su una piattaforma hardware, software o un ambiente operativo o ambiente d’uso differente.

Tabella 38: metriche per adattabilità

+---+--------+---------------------------------------------------+-------+
| * | **Nome | **Descrizione**                                   | **For |
| * | **     |                                                   | mula* |
| I |        |                                                   | *     |
| D |        |                                                   |       |
| * |        |                                                   |       |
| * |        |                                                   |       |
+===+========+===================================================+=======+
| P | Adatta | Percentuale delle funzioni i cui task sono        | n.d.  |
| A | bilità | completati durante i test e i cui risultati hanno | (si   |
| d | ad un  | soddisfatto i requisiti, rispetto al totale delle | riman |
| - | ambien | funzioni testate su un hardware differente da     | da    |
| 1 | te     | quello originario.                                | alla  |
| - | hardwa |                                                   | norma |
| G | re     |                                                   | ISO)  |
+---+--------+---------------------------------------------------+-------+
| P | Adatta | Percentuale delle funzioni i cui task sono        |       |
| A | bilità | completati durante i test e i cui risultati hanno |       |
| d | ad un  | soddisfatto i requisiti, rispetto al totale delle |       |
| - | ambien | funzioni testate su una piattaforma software      |       |
| 2 | te     | differente da quello originario.                  |       |
| - | softwa |                                                   |       |
| G | re     | NOTA: La piattaforma software comprende, per      |       |
|   |        | esempio, il sistema operativo, il DBMS, il        |       |
|   |        | compilatore, il sistema di gestione della rete,   |       |
|   |        | ecc.                                              |       |
+---+--------+---------------------------------------------------+-------+
| P | Adatta | Percentuale delle funzioni i cui task sono        |       |
| A | bilità | completati durante i test e i cui risultati hanno |       |
| d | all’am | soddisfatto i requisiti, rispetto al totale delle |       |
| - | biente | funzioni testate in un ambiente operativo         |       |
| 3 | operat | differente da quello originario.                  |       |
| - | ivo    |                                                   |       |
| G |        |                                                   |       |
+---+--------+---------------------------------------------------+-------+

*Note*

La definizione della terza metrica di tabella non appare chiara, in quanto non è specificato cosa si intende per “ambiente operativo”.

*Quando è opportuno utilizzare queste metriche?*

In progetti di porting di software applicativo, le metriche di cui sopra, in particolare le prime 2, sembrano utili per quantificare l’adattabilità del software all’ambiente di destinazione, e dunque anche per stimare l’impegno di progetto necessario. L’utilizzo di tali metriche impone peraltro la disponibilità di un piano di test completo. Per esempi di applicazioni si rimanda al §6.5.3.

Metriche di installabilità
''''''''''''''''''''''''''

Le metriche di installabilità sono pensate per valutare il livello di efficacia ed efficienza con cui un prodotto o un sistema può essere installato con successo e/o disinstallato con successo in un dato ambiente.

Tabella 39: metriche per installabilità

+---+--------------+-------------------------------------------+-------+
| * | **Nome**     | **Descrizione**                           | **For |
| * |              |                                           | mula* |
| I |              |                                           | *     |
| D |              |                                           |       |
| * |              |                                           |       |
| * |              |                                           |       |
+===+==============+===========================================+=======+
| P | Efficienza   | Durata effettiva dell’installazione       | n.d.  |
| I | dell’install | rispetto alla durata attesa.              | (si   |
| n | azione       |                                           | riman |
| - | in termini   | NOTA: La durata attesa può essere         | da    |
| 1 | di tempo     | ricavata da dati storici o medie riferite | alla  |
| - | impiegato.   | a prodotti commerciali.                   | norma |
| G |              |                                           | ISO)  |
+---+--------------+-------------------------------------------+-------+
| P | Semplicità   | Percentuale dei tentativi di modifica     |       |
| I | dell’install | eseguiti con successo, rispetto al totale |       |
| n | azione.      | dei tentativi di modifica della procedura |       |
| - |              | di installazione in base alle esigenze    |       |
| 2 |              | dell’utente.                              |       |
| - |              |                                           |       |
| G |              | NOTA: Le modifiche a cui ci si riferisce  |       |
|   |              | possono essere ricondotte a               |       |
|   |              | personalizzazioni della procedura         |       |
|   |              | d’installazione fatte dall’utente.        |       |
+---+--------------+-------------------------------------------+-------+

*Note*

La definizione della metrica PIn-2-G appare ambigua. Si ritiene che si riferisca alla possibilità di personalizzare l’installazione di un software scegliendo ad esempio quali moduli installare, la directory di installazione, la lingua, ecc.

Si rileva che, nonostante la definizione iniziale parli anche di disinstallazione, le metriche proposte fanno riferimento alla sola installazione. Si può ipotizzare che si possa sostituire semplicemente la parola “installazione” con “disinstallazione” nelle descrizioni della tabella.

*Quando è opportuno utilizzare queste metriche?*

Entrambe queste metriche includono elementi di soggettività. Ad esempio la durata attesa dell’installazione dipende dalle aspettative dell’utente, non rappresenta un dato oggettivo.

Riguardo alla metrica PIn-2-G, il caso d’uso tipico è l’installazione di un prodotto software sulla postazione di lavoro di un utente che intenda personalizzarlo. Anche qui è evidente l’aspetto soggettivo dell’attività e della misura.

Entrambe le metriche risultano pertanto non adeguate e lontane dall’obiettivo di questo studio.

Metriche di sostituibilità
''''''''''''''''''''''''''

Le metriche di adattabilità sono pensate per valutare il grado di facilità con cui un software può essere sostituito, nello stesso ambiente, da un altro software con le stesse funzionalità.

Tabella 40: metriche per sostituibilità

+---+-----------------+--------------------------------------------+-----+
| * | **Nome**        | **Descrizione**                            | **F |
| * |                 |                                            | orm |
| I |                 |                                            | ula |
| D |                 |                                            | **  |
| * |                 |                                            |     |
| * |                 |                                            |     |
+===+=================+============================================+=====+
| P | Somiglianza     | In caso di sostituzione di un prodotto     | n.d |
| R | durante         | software, è la percentuale delle funzioni  | .   |
| e | l’utilizzo.     | utente che possono essere eseguite senza   | (si |
| - |                 | necessità di training o di espedienti      | rim |
| 1 |                 | particolari, rispetto al totale delle      | and |
| - |                 | funzioni presenti nel software sostituito. | a   |
| G |                 |                                            | all |
|   |                 |                                            | a   |
|   |                 |                                            | nor |
|   |                 |                                            | ma  |
|   |                 |                                            | ISO |
|   |                 |                                            | )   |
+---+-----------------+--------------------------------------------+-----+
| P | Equivalenza     | In caso di sostituzione di un prodotto     |     |
| R | della qualità   | software, è la percentuale delle misure di |     |
| e | del prodotto.   | qualità che hanno prodotto risultati       |     |
| - |                 | uguali o superiori a quelli del prodotto   |     |
| 2 |                 | sostituito, rispetto al totale delle       |     |
| - |                 | misure di qualità che hanno rilevanza nel  |     |
| S |                 | caso in esame.                             |     |
|   |                 |                                            |     |
|   |                 | NOTA: Alcune delle misure di qualità       |     |
|   |                 | critiche per la sostituibilità sono, ad    |     |
|   |                 | esempio, l’interoperabilità, la sicurezza  |     |
|   |                 | e l’efficienza prestazionale.              |     |
+---+-----------------+--------------------------------------------+-----+
| P | Inclusione      | In caso di sostituzione di un prodotto     |     |
| R | funzionale      | software, è la percentuale delle funzioni  |     |
| e |                 | che producono risultati simili a quelli    |     |
| - |                 | del prodotto originario, rispetto al       |     |
| 3 |                 | totale delle funzioni testate dopo la      |     |
| - |                 | sostituzione del prodotto.                 |     |
| S |                 |                                            |     |
+---+-----------------+--------------------------------------------+-----+
| P | Riusabilità dei | In caso di sostituzione di un prodotto     |     |
| R | dati / capacità | software, è la percentuale dati che        |     |
| e | di importare i  | possono essere riutilizzati / importati,   |     |
| - | dati utilizzati | rispetto al totale dei dati che si         |     |
| 4 | prima della     | richiede siano riutilizzabili /            |     |
| - | sostituzione    | importabili dal nuovo prodotto software.   |     |
| S | del prodotto    |                                            |     |
+---+-----------------+--------------------------------------------+-----+

*Note*

Anche in queste metriche si riscontrano elementi di soggettività. Tuttavia, l’osservazione più significativa è che queste metriche sembrano pensate per confrontare tra loro due prodotti software, ad esempio per identificare possibili alternative di mercato a un prodotto attualmente in uso. Pertanto si ritiene che non rientrino nel perimetro di questo studio.

Conclusioni su portabilità
''''''''''''''''''''''''''

Di tutte le metriche proposte per la portabilità, le uniche che sembrano utili e di agevole utilizzo sono PAd-1-G e PAd-2-G. Per esempi pratici di utilizzo in contesti operativi della P.A. si rimanda al capitolo 6.

Misurazioni di compatibilità
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Si ritiene infatti che, nell’ambito di questo studio e nel contesto della P.A. italiana, requisiti che riguardano questa caratteristica non necessitino di una metrica, ma possano essere espressi in “logica binaria” (si/no).

Ad esempio il cliente può richiedere compatibilità con determinati prodotti e piattaforme di base, ma non sembra utile misurare “quanto” un software è compatibile (se deve esserlo, la compatibilità va comunque garantita al 100%, situazioni intermedie non sembrano possibili).

SNAP
~~~~

SNAP (Software Non-functional Assessment Process) è un metodo pubblicato da IFPUG nel 2011 dopo uno studio di quattro anni. La versione attuale del manuale, alla data di scrittura di questo documento, è la v2.4.

Il metodo parte dalle caratteristiche e sottocaratteristiche ISO 9126-x, evolute nella attuale norma ISO 25010. SNAP definisce quattro categorie e quattordici sotto-categorie. Nel contesto di SNAP si intende per categoria un gruppo di componenti, processi o attività utilizzati per soddisfare requisiti non funzionali. La sotto-categoria dettaglia ulteriormente la categoria cui afferisce.

Ciascuna delle 14 sotto-categorie, elencate nella tabella che segue, è un modo per classificare l’impatto dei requisiti non funzionali ed è indipendente dalle altre.

Tabella 41: categorie SNAP

+-----------------------------------------+----------------------------+
| **DATA OPERATIONS**                     | **INTERFACE DESIGN**       |
|                                         |                            |
| -  Data Entry Validations               | -  User Interfaces         |
| -  Logical and Mathematical Operations  | -  Help Methods            |
| -  Data formatting                      | -  Multiple Input Methods  |
| -  Internal Data Movements              |                            |
|                                         | - Multiple Output Methods  |
| - Delivering added value to users by    |                            |
| data configuration                      |                            |
+=========================================+============================+
| **TECHNICAL ENVIRONMENT**               | **ARCHITECTURE**           |
|                                         |                            |
| -  Multiple Platforms                   | -  Component based         |
| -  Database Technology                  |    software                |
| -  Batch Processes                      | -  Multiple Input / Output |
|                                         |    interfaces              |
+-----------------------------------------+----------------------------+

Nel seguito, per chiarezza di esposizione, si riporta una traduzione in italiano delle descrizioni presenti nella “Quick Guide” di SNAP. Per una definizione più rigorosa fa testo la versione originale in inglese, cui si rimanda.

Data Operations
^^^^^^^^^^^^^^^

Questa categoria descrive il modo in cui i dati vengono elaborati per soddisfare i requisiti non funzionali nell'applicazione. Comprende le seguenti cinque sotto-categorie:

-  Data Entry Validation, elaborazioni che vengono effettuate per verificare i dati in ingresso, al fine di eliminare valori anomali prima che vengano elaborati, prevenendo così possibili comportamenti erronei dell’applicazione (esempio, controllo che il valore inserito in un campo “mese” sia compreso tra 1 e 12).
-  Logical and Mathematical Operations, misura la complessità dell’algoritmo da implementare, di cui il conteggio funzionale IFPUG non tiene conto.
-  Data formatting, misura i requisiti di formato o struttura dei dati che non sono considerati elementi funzionali (esempio, supporto al multilinguismo).
-  Internal Data Movements, tiene conto dei movimenti di dati da una partizione all'altra all'interno dei confini dell'applicativo software.
-  Delivering added value to users by data configuration, tiene conto del valore per l’utente che si ottiene aggiungendo, modificando o eliminando dati di riferimento / informazioni dal database senza modificare il codice sorgente o la struttura del database stesso.

Interface Design
^^^^^^^^^^^^^^^^

Questa categoria si riferisce all'esperienza dell'utente finale. Questa categoria misura la progettazione dei processi e dei metodi che consentono all’utente di interfacciarsi con l'applicazione. Essa comprende le seguenti cinque sotto-categorie:

-  User Interface, conta gli elementi dell’interfaccia, unici e identificabili dall'utente, che vengono aggiunti o configurati senza modificare la funzionalità ma che impattano sulla caratteristica non funzionale “usabilità” (sottocaratteristiche facilità di apprendimento, aspetti estetici, accessibilità).
-  Help Methods, tiene conto delle informazioni che spiegano agli utenti in che modo il software fornisce le sue funzionalità o altre informazioni di supporto (esempio: help in linea).
-  Multiple Input Methods, misura la capacità del software di fornire le sue funzionalità con più metodi di input (ad esempio accettando comandi via tastiera o vocalmente).
-  Multiple Output Methods, misura la capacità del software di fornire le sue funzionalità con più metodi di output (esempio: multicanalità).

Technical Environment
^^^^^^^^^^^^^^^^^^^^^

Questa categoria si riferisce alla piattaforma su cui risiede l'applicazione. Tiene conto della tecnologia e delle modifiche ai dati interni e alla configurazione che non comportano aggiunta o modifiche di funzionalità. Comprende le seguenti tre sotto-categorie:

-  Multiple Platforms, tiene conto delle operazioni eseguite per supportare la capacità del software di funzionare su più di una piattaforma software/hardware.
-  Database Technologies, misura le caratteristiche e le operazioni che vengono eseguite sul database, o le istruzioni per leggere/scrivere dati da/verso il database, che implementano requisiti non funzionali e non impattano le funzionalità (ad esempio indicizzazione di tabelle o meccanismi di sicurezza).
-  Batch Processes, conta i processi batch che non sono considerati requisiti funzionali (cioè che non si qualificano come funzioni transazionali). Ad esempio, questa sottocategoria tiene conto dei processi batch che vengono attivati ​​senza che ci sia attraversamento di dati dai confini dell’applicazione.

Architecture
^^^^^^^^^^^^

Questa categoria si riferisce alle tecniche di progettazione e di codifica utilizzate per costruire e migliorare l'applicazione. Valuta le complessità dello sviluppo modulare e/o a componenti. Comprende le seguenti due sotto-categorie:

-  Component Based Software, conta le porzioni di software utilizzate all'interno del perimetro dell'applicazione per costruire componenti di sistema o per integrare software già esistente.
-  Multiple Input/Output Interfaces, misura la capacità di supportare più interfacce di input/output, senza modificare le funzionalità fornite dall’applicazione.

Metodo di conteggio (breve descrizione)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Il metodo di conteggio SNAP prevede i seguenti passi:

1. per ciascun requisito non funzionale si identificano le categorie e sotto-categorie associate;
2. per ciascuna sotto-categoria si identificano gli SCU;
3. per ogni SCU si contano gli SNAP Point, in base a regole tabellari presenti nel manuale e secondo una formula finale che dipende anche dal tipo di progetto. In particolare, e in analogia al conteggio dei PF, nei progetti di sviluppo si possono conteggiare solo SNAP Point di tipo ADD, mentre nei progetti di manutenzione evolutiva si possono conteggiare SNAP Point di tipo ADD, CHG e DEL.

Sul sito dell’IFPUG\ `21 <#fn21>`__ è disponibile gratuitamente uno strumento basato su excel che può aiutare nell’applicare il metodo di conteggio su descritto.

SNAP: pro e contro
^^^^^^^^^^^^^^^^^^

Sembra utile riportare, qui nel seguito, alcuni elementi di valore e possibili criticità connesse all’uso del metodo SNAP:

-  Pur tenendo in considerazione lo standard ISO 25010, SNAP se ne discosta in parte (ad esempio considerando non funzionale la complessità algoritmica) o comunque non offre totale copertura. Alcune sottocaratteristiche ISO, difatti, trovano riscontro nelle categorie e sotto-categorie SNAP, mentre per altre sembra non esserci corrispondenza diretta.
-  Alla base del metodo SNAP appare evidente l’obiettivo di “completare” il conteggio tradizionale dei PF per le parti che storicamente non venivano considerate da quest’ultimo; ciò può spiegare l’incompleta copertura di cui al punto precedente, ma può considerarsi un elemento di valore in quanto, prevedendo l’utilizzo di termini e concetti già noti all’utilizzatore di PF, si presta a un utilizzo contestuale e complementare dei due metodi di misura. Nel corso dei lavori del tavolo sono state rappresentate alcune perplessità sull’eventuale sovrapposizione di PF e SNAP in termini di elementi misurati.
-  Alcune sotto-categorie di SNAP sembrano relative a requisiti di tipo tecnico o di sistema, con riferimento alla classificazione del §3.1. Pertanto SNAP sembra essere un metodo di misura più completo rispetto, ad esempio alle metriche esaminate al 4.4, che misurano solo i requisiti di qualità. Allo stesso tempo, alcune sotto-categorie sembrano dipendere (almeno, ciò appare dalla loro descrizione) da scelte implementative che potrebbero essere prese a valle della raccolta dei requisiti; in altre parole, per alcuni aspetti SNAP non sembra allo stesso livello di astrazione dei PF, che come detto rappresentavano positivamente la “visione dell’utente” e non quella del tecnico.
-  Il metodo di conteggio appare piuttosto complesso e non intuitivo. Il manuale è verboso e non sempre di immediata comprensione. Peraltro si riscontrano, espresse verso SNAP, le stesse critiche di macchinosità che tradizionalmente vengono rivolte al metodo dei Punti Funzione.
-  Il metodo SNAP appare ancora “giovane” e sarà probabilmente soggetto a evoluzioni. Questa è attualmente una criticità, ma potrebbe tradursi in un elemento di valore se eventuali suggerimenti della PA italiana venissero recepiti da IFPUG per il futuro sviluppo del metodo.
-  La presenza, nel metodo SNAP, dei concetti ADD, CHG, DEL permette di tenere conto delle evoluzioni nel corso del tempo anche delle caratteristiche non funzionali (come già il conteggio dei PF prevede nei progetti di manutenzione evolutiva).
-  Oltre a utilizzare integralmente il metodo SNAP, è possibile anche un uso parziale, prendendo in considerazione solo alcune categorie o sotto-categorie (vale a dire, non l’intero insieme di 14 sotto-categorie, ma solo quelle d’interesse).

CISQ-OMG
~~~~~~~~

Il CISQ è un organismo fondato dall’OMG. Il suo scopo è sviluppare, in collaborazione con le maggiori organizzazioni ICT mondiali, standard internazionali per la misurazione automatica, a partire dai sorgenti, della dimensione funzionale e non-funzionale del software, nonché dei fattori di rischio derivanti dalla struttura degli applicativi.

Le caratteristiche non funzionali di un software che CISQ propone di misurare sono\ `22 <#fn22>`__:

-  reliability;
-  performance efficiency;
-  security;
-  maintainability\ `23 <#fn23>`__.

In estrema sintesi, CISQ-OMG propone metriche e metodologie di misura basate sulla verifica del rispetto di alcune regole (buone pratiche architetturali, di codifica e disegno), adatte a essere rilevate tramite analisi statica, definita anche analisi strutturale, del software applicativo in tutte le sue componenti (codice sorgente, database, ecc.). In termini ISO 25010, si riferiscono alla qualità interna del software in esame.

Le metriche proposte da CISQ-OMG sono coerenti con la norma ISO 25010 e costituiscono una estensione della ISO 25023, secondo quanto previsto dal paragrafo 2 della norma stessa.

Nel dettaglio, CISQ-OMG individua 86 regole, suddivise in questo modo tra le quattro caratteristiche di cui sopra:

-  29 regole per la reliability (per una descrizione completa di queste regole si rimanda al sito `www.omg.org/spec/ASCRM/ <http://www.omg.org/spec/ASCRM/>`__);
-  15 regole per la performance efficiency (`www.omg.org/spec/ASCPEM/ <http://www.omg.org/spec/ASCPEM/>`__);
-  22 regole per la security (`www.omg.org/spec/ASCSM/ <http://www.omg.org/spec/ASCSM/>`__);
-  20 regole per la maintainability (`www.omg.org/spec/ASCMM/ <http://www.omg.org/spec/ASCMM/>`__)

Come detto, tali regole si riferiscono agli aspetti strutturali ed architetturali delle applicazioni, e hanno l’obiettivo di individuare debolezze e prevenire carenze non-funzionali prima della messa in produzione delle applicazioni.

Le regole sono definite in modo tale che siano valide indipendentemente dalla tecnologia con la quale viene sviluppato l’applicativo da misurare, con il risultato che la valutazione delle metriche è indipendente dalla piattaforma e dalle architetture tecniche scelte per la implementazione degli applicativi.

CISQ-OMG afferma inoltre che, data la loro non ambiguità e la specifica in linguaggio formale, tali regole potrebbero trovare impiego nella descrizione di requisiti non funzionali di un software da realizzare.

In merito, si ritiene che le regole CISQ-OMG non coprano tutte le possibili casistiche di requisiti non funzionali. Ad esempio, a oggi non si possono esprimere, in termini CISQ-OMG, requisiti di usabilità o di portabilità. OMG-CISQ afferma di avere in corso tavoli di lavoro per ampliare la copertura.

Al contrario, le regole CISQ-OMG sembrano di immediata utilità per imporre contrattualmente al fornitore vincoli di corretta programmazione, fissando soglie minime per le quattro caratteristiche previste da CISQ-OMG che devono essere:

-  superate dal software rilasciato, nei progetti di sviluppo;
-  almeno mantenute dal software oggetto di interventi di manutenzione o evoluzione.

CISQ-OMG propone anche le seguenti metriche:

-  Automated Technical Debt, per misurare l’impegno di manutenzione necessario per eliminare i difetti o le criticità rilevate in un software applicativo (per maggiori dettagli, vedi il sito indicato alla nota precedente);
-  Automated Function Point (AFP), già citata al §4.2;
-  Automated Enhancement Point (AEP), approvata da OMG nel 2016, per misurare contestualmente la dimensione funzionale e non funzionale di un software applicativo (`per maggiori dettagli, vedi il sito indicato alla nota precedente <http://it-cisq.org/standards/automated-enhancement-points/>`__).

Nello specifico, l’Automated Technical Debt definisce la stima dell’impegno necessario per porre rimedio alle violazioni alle 86 regole individuate in un software. Tale impegno rappresenta, secondo CISQ-OMG, il costo correlato alla mancanza di qualità, cioè quanto si dovrà sostenere per portare il software a un livello di qualità accettabile.

CISQ-OMG suggerisce alcuni scenari di utilizzo delle metriche di cui sopra, sia nella gestione di progetti interni che nell’interazione con fornitori, quali:

-  la definizione di Quality Gate d’integrazione;
-  la gestione della qualità, anche nelle metodologie di sviluppo che prevedono rilasci continui (es. DevOps).

Per esempi operativi di applicazioni delle metriche CISQ-OMG, si rimanda al capitolo 6.

Riguardo a queste metriche e al loro impiego si segnala la presenza di linee guida e documenti metodologici liberamente disponibili sul sito del CISQ (`www.it-cisq.org <http://www.it-cisq.org>`__).

.. |image3| image:: ./media/image4.png
