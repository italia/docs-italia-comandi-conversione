Definizioni
-----------

Nel corso della ricognizione svolta dal Tavolo di lavoro si è riscontrata una molteplicità di definizioni, concetti e gerarchie, a volte disomogenee tra loro. Il Tavolo di lavoro ha condiviso l’esigenza di fissare, anzitutto, una tassonomia. Si è provveduto dunque a selezionare un insieme di definizioni, dipendenze e relazioni, tra quelle proposte nella letteratura tecnica, che (senza pretesa di completezza o validità superiore alle altre) possano risolvere le ambiguità di terminologia, consentire la comprensione del presente documento ai lettori cui è destinato, fornire un linguaggio comune alle amministrazioni e alle aziende fornitrici di servizi ICT.

Anzitutto appare utile rimarcare la differenza tra:

-  progetto di sviluppo o di manutenzione di software, che consiste in una serie di attività, con un inizio temporale e una fine, un obiettivo, risorse e un responsabile;
-  processo di sviluppo o manutenzione, che consiste in una sequenza strutturata di fasi, che può essere definito in accordo a una metodologia o a uno standard, in cui sono stabiliti ruoli, modalità di esecuzione e comunicazione, controlli e rilasci;
-  prodotto software, composto da un codice sorgente, da un eseguibile, da tabelle di configurazione e da documentazione connessa.

Un progetto può essere condotto tramite un processo standardizzato o definito in un apposito documento (Piano) e avere come obiettivo la realizzazione di un prodotto software.

Classificazione dei requisiti
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Nell’ambito dei progetti di sviluppo o di manutenzione applicativa, è utile poter classificare i requisiti espressi dall’utente nelle categorie riportate nella figura che segue. Tale classificazione, con minime varianti, è condivisa da gran parte delle fonti esaminate nella ricognizione.

|image1|

Figura 1 - classificazione dei requisiti in un progetto di sviluppo o manutenzione

Requisiti funzionali
^^^^^^^^^^^^^^^^^^^^

I FUR (Functional User Requirement) descrivono le funzionalità del software in termini di:

-  servizi che il software stesso deve fornire;
-  risposte che l’utente aspetta dal software in determinate condizioni;
-  risultati che il software deve produrre in risposta a specifici input.

Tabella 6: esempio di FUR

+------------+---------------------------------------------------------+
| **ID       | **Descrizione**                                         |
| Requisito* |                                                         |
| *          |                                                         |
+============+=========================================================+
| RF1        | Premendo il tasto “salva”, il documento corrente viene  |
|            | salvato sul disco fisso                                 |
+------------+---------------------------------------------------------+

Requisiti e vincoli di progetto
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

I PRC (Project Requirement and Constraint) sono requisiti e vincoli che non afferiscono direttamente al prodotto software, bensì definiscono caratteristiche del progetto di sviluppo o manutenzione. Rientrano in questa categoria:

-  obiettivi temporali del progetto (schedulazione, date di consegna);
-  risorse a disposizione (budget, competenze degli sviluppatori, esperienza del capo progetto);
-  strumenti e metodologie di conduzione del progetto (processo di produzione, uso di CASE, rischi e dipendenze da altre iniziative al di fuori del controllo del responsabile di progetto).

Tabella 7: esempi di PRC

+------------+---------------------------------------------------------+
| **ID       | **Descrizione**                                         |
| Requisito/ |                                                         |
| Vincolo**  |                                                         |
+============+=========================================================+
| RP1        | Termine indifferibile (giorno xxx) per il rilascio      |
|            | della versione definitiva.                              |
+------------+---------------------------------------------------------+
| RP2        | Nella prima fase l’utente non ha chiare le proprie      |
|            | esigenze, è necessario procedere per affinamenti        |
|            | successivi.                                             |
+------------+---------------------------------------------------------+
| RP3        | I programmatori a disposizione non conoscono una delle  |
|            | tecnologie previste nel progetto.                       |
+------------+---------------------------------------------------------+

Requisiti di qualità
^^^^^^^^^^^^^^^^^^^^

I requisiti di qualità sono il sottoinsieme dei NFR (Non Functional Requirement) che descrivono le caratteristiche di qualità del prodotto software da sviluppare o mantenere.

Per la definizione di “caratteristiche di qualità del prodotto software” si rimanda alla norma ISO/IEC 25010, che identifica gli elementi riportati nella tabella che segue:sup:11\ `#fn11 <#fn11>`__.

Tabella 8 - Caratteristiche e sottocaratteristiche di qualità ISO/IEC 25010

+---+----+-------------------------------------------------------------+
| * | ** | **Descrizione**                                             |
| * | So |                                                             |
| C | tt |                                                             |
| a | oc |                                                             |
| r | ar |                                                             |
| a | at |                                                             |
| t | te |                                                             |
| t | ri |                                                             |
| e | st |                                                             |
| r | ic |                                                             |
| i | a* |                                                             |
| s | *  |                                                             |
| t |    |                                                             |
| i |    |                                                             |
| c |    |                                                             |
| a |    |                                                             |
| * |    |                                                             |
| * |    |                                                             |
+===+====+=============================================================+
| P | Te | Rispetto dei requisiti per quanto concerne i tempi di       |
| r | mp | risposta e di elaborazione e il throughput.                 |
| e | i  |                                                             |
| s | di |                                                             |
| t | ri |                                                             |
| a | sp |                                                             |
| z | os |                                                             |
| i | ta |                                                             |
| o |    |                                                             |
| n |    |                                                             |
| i |    |                                                             |
| / |    |                                                             |
| e |    |                                                             |
| f |    |                                                             |
| f |    |                                                             |
| i |    |                                                             |
| c |    |                                                             |
| i |    |                                                             |
| e |    |                                                             |
| n |    |                                                             |
| z |    |                                                             |
| a |    |                                                             |
+---+----+-------------------------------------------------------------+
|   | Co | Rispetto dei requisiti per quanto concerne la quantità e i  |
|   | ns | tipi di risorse utilizzate.                                 |
|   | um |                                                             |
|   | o  |                                                             |
|   | di |                                                             |
|   | ri |                                                             |
|   | so |                                                             |
|   | rs |                                                             |
|   | e  |                                                             |
+---+----+-------------------------------------------------------------+
|   | Ca | Rispetto dei requisiti per quanto riguarda i limiti massimi |
|   | pa | di un prodotto o i parametri di un sistema.                 |
|   | ci |                                                             |
|   | tà | Nota: i parametri possono includere il numero di elementi   |
|   |    | che è possibile memorizzare, il numero di utenti            |
|   |    | simultanei, la larghezza di banda della comunicazione, la   |
|   |    | velocità effettiva delle transazioni e la dimensione del    |
|   |    | database.                                                   |
+---+----+-------------------------------------------------------------+
| U | Ap | Livello di riconoscibilità dell’adeguatezza del             |
| s | pr | prodotto/sistema rispetto alle esigenze degli utenti.       |
| a | op |                                                             |
| b | ri | Nota 1: la riconoscibilità dell’adeguatezza dipende dalla   |
| i | at | capacità di riconoscere l'adeguatezza del prodotto e le     |
| l | ez | funzioni del sistema, dalle impressioni iniziali degli      |
| i | za | utenti e/o dalle caratteristiche della documentazione.      |
| t | ,  |                                                             |
| à | ri | Nota 2: le informazioni fornite possono includere           |
|   | co | dimostrazioni, tutorial, documentazione o, per un sito web, |
|   | no | la descrizione della home page.                             |
|   | sc |                                                             |
|   | ib |                                                             |
|   | il |                                                             |
|   | it |                                                             |
|   | à  |                                                             |
+---+----+-------------------------------------------------------------+
|   | Ap | Grado di adeguatezza del prodotto/sistema a essere          |
|   | pr | utilizzato da determinati utenti al fine di raggiungere     |
|   | en | determinati obiettivi di apprendimento e su come            |
|   | di | utilizzarlo con soddisfazione, efficacia, efficienza e      |
|   | bi | senza rischi.                                               |
|   | li |                                                             |
|   | tà | Nota: è il grado in cui il prodotto/sistema può essere      |
|   |    | utilizzato da utenti specifici per raggiungere determinati  |
|   |    | obiettivi di apprendimento su come usare il                 |
|   |    | prodotto/sistema con soddisfazione, in modo efficace ed     |
|   |    | efficiente, senza rischi in uno specificato contesto.       |
+---+----+-------------------------------------------------------------+
|   | Op | Livello di facilità e controllabilità del prodotto/sistema  |
|   | er | durante il suo utilizzo.                                    |
|   | ab |                                                             |
|   | il | Nota: l'operabilità è assimilabile alla controllabilità,    |
|   | it | alla tolleranza agli errori dell’utente e alla conformità   |
|   | à  | con le aspettative dell'utente stesso.                      |
+---+----+-------------------------------------------------------------+
|   | Pr | Livello di protezione dagli errori e prevenzione degli      |
|   | ot | errori che l’utente può commettere.                         |
|   | ez |                                                             |
|   | io |                                                             |
|   | ne |                                                             |
|   | da |                                                             |
|   | ll |                                                             |
|   | ’e |                                                             |
|   | rr |                                                             |
|   | or |                                                             |
|   | e  |                                                             |
|   | ut |                                                             |
|   | en |                                                             |
|   | te |                                                             |
+---+----+-------------------------------------------------------------+
|   | Es | Gradevolezza dell’uso dell’interfaccia utente.              |
|   | te |                                                             |
|   | ti | Nota: Proprietà del prodotto/sistema che favoriscono il     |
|   | ca | piacere e la soddisfazione dell'utente, Es. uso di colori   |
|   | de | appropriati e adeguato disegno grafico dell’interfaccia.    |
|   | ll |                                                             |
|   | ’i |                                                             |
|   | nt |                                                             |
|   | er |                                                             |
|   | fa |                                                             |
|   | cc |                                                             |
|   | ia |                                                             |
|   | ut |                                                             |
|   | en |                                                             |
|   | te |                                                             |
+---+----+-------------------------------------------------------------+
|   | Ac | Capacità del sistema/prodotto di essere utilizzato da       |
|   | ce | utenti con la più ampia gamma di caratteristiche e capacità |
|   | ss | al fine di raggiungere un obiettivo in uno specifico        |
|   | ib | contesto di utilizzo.                                       |
|   | il |                                                             |
|   | it | Nota 1: le caratteristiche e capacità includono le          |
|   | à  | disabilità associate all'età.                               |
|   |    |                                                             |
|   |    | Nota 2: è il grado in cui un prodotto o un sistema può      |
|   |    | essere utilizzato da utenti con disabilità specifiche per   |
|   |    | raggiungere obiettivi specifici con efficacia, efficienza,  |
|   |    | assenza di rischio e soddisfazione.                         |
+---+----+-------------------------------------------------------------+
| A | Ma | Quanto il prodotto o la componente soddisfa le esigenze di  |
| f | tu | affidabilità durante il normale funzionamento.              |
| f | ri |                                                             |
| i | tà | Nota: il concetto di maturità può anche essere applicato ad |
| d |    | altre caratteristiche di qualità per indicare quanto dette  |
| a |    | caratteristiche soddisfano le esigenze, durante il normale  |
| b |    | funzionamento.                                              |
| i |    |                                                             |
| l |    |                                                             |
| i |    |                                                             |
| t |    |                                                             |
| à |    |                                                             |
+---+----+-------------------------------------------------------------+
|   | Di | Livello di operatività e accessibilità del                  |
|   | sp | sistema/prodotto/ componente.                               |
|   | on |                                                             |
|   | ib | Nota: esternamente, la disponibilità può essere valutata in |
|   | il | base alla quantità di tempo totale durante il quale il      |
|   | it | sistema, il prodotto o il componente si trova in uno stato  |
|   | à  | attivo. La disponibilità è quindi una combinazione di       |
|   |    | maturità (che dipende dalla frequenza di malfunzioni),      |
|   |    | tolleranza agli errori e recuperabilità (che dipende dal    |
|   |    | tempo di inattività successivo a ciascun guasto).           |
+---+----+-------------------------------------------------------------+
|   | To | Capacità di sistema/prodotto/componente di funzionare come  |
|   | ll | previsto nonostante la presenza di errori hardware o        |
|   | er | software.                                                   |
|   | an |                                                             |
|   | za |                                                             |
|   | ag |                                                             |
|   | li |                                                             |
|   | er |                                                             |
|   | ro |                                                             |
|   | ri |                                                             |
+---+----+-------------------------------------------------------------+
|   | Re | In caso di guasto e interruzione del funzionamento, è la    |
|   | cu | capacità del prodotto/sistema di recuperare i dati          |
|   | pe | direttamente interessati e ripristinare lo stato di         |
|   | ra | funzionamento desiderato.                                   |
|   | bi |                                                             |
|   | li | Nota: in caso di errore, i sistemi informatici possono      |
|   | tà | rimanere inutilizzabili per un determinato periodo di       |
|   |    | tempo. La misura di questo intervallo di tempo è una        |
|   |    | indicazione delle caratteristiche di recuperabilità.        |
+---+----+-------------------------------------------------------------+
| S | Ri | Livello al quale il prodotto/sistema garantisce che un      |
| i | se | insieme di dati siano accessibili solo agli utenti in       |
| c | rv | possesso delle autorizzazioni per accedervi.                |
| u | at |                                                             |
| r | ez |                                                             |
| e | za |                                                             |
| z |    |                                                             |
| z |    |                                                             |
| a |    |                                                             |
+---+----+-------------------------------------------------------------+
|   | In | Capacità del prodotto/sistema/componente di impedire        |
|   | te | l'accesso non autorizzato o la modifica di programmi/dati.  |
|   | gr |                                                             |
|   | it |                                                             |
|   | à  |                                                             |
+---+----+-------------------------------------------------------------+
|   | No | Capacità di poter dimostrare che azioni o eventi hanno      |
|   | n  | avuto luogo, in modo che detti eventi e azioni non possano  |
|   | ri | essere ripudiati successivamente.                           |
|   | pu |                                                             |
|   | di |                                                             |
|   | o  |                                                             |
+---+----+-------------------------------------------------------------+
|   | Re | Capacità di poter verificare che le azioni svolte da una    |
|   | sp | determinata entità siano effettivamente state svolte da     |
|   | on | detta entità.                                               |
|   | sa |                                                             |
|   | bi |                                                             |
|   | li |                                                             |
|   | tà |                                                             |
+---+----+-------------------------------------------------------------+
|   | Au | Capacità di poter dimostrare che l’identità di un           |
|   | te | determinato soggetto corrisponda a quella rivendicata dal   |
|   | nt | soggetto stesso.                                            |
|   | ic |                                                             |
|   | it |                                                             |
|   | à  |                                                             |
+---+----+-------------------------------------------------------------+
| M | Mo | Caratteristica di un programma per computer di essere       |
| a | du | costituito da componenti discreti in modo tale che una      |
| n | la | modifica su un componente abbia un impatto minimo su altri  |
| u | ri | componenti.                                                 |
| t | tà |                                                             |
| e |    |                                                             |
| n |    |                                                             |
| i |    |                                                             |
| b |    |                                                             |
| i |    |                                                             |
| l |    |                                                             |
| i |    |                                                             |
| t |    |                                                             |
| à |    |                                                             |
+---+----+-------------------------------------------------------------+
|   | Ri | Caratteristica di un asset di poter essere utilizzato in    |
|   | us | più di un sistema o nella costruzione di altri asset.       |
|   | ab |                                                             |
|   | il |                                                             |
|   | it |                                                             |
|   | à  |                                                             |
+---+----+-------------------------------------------------------------+
|   | An | Grado di efficacia ed efficienza con cui è possibile        |
|   | al | valutare l'impatto che un cambiamento effettuato su una o   |
|   | iz | più componenti di un prodotto/sistema può avere sul         |
|   | za | prodotto/sistema stesso. Oppure per individuare le carenze  |
|   | bi | e/o le cause di possibili guasti e/o per identificare       |
|   | li | eventuali componenti da modificare                          |
|   | tà |                                                             |
|   |    | Nota: l'implementazione può includere la fornitura di       |
|   |    | meccanismi che consentano al prodotto/sistema di analizzare |
|   |    | i propri errori e fornire report prima del verificarsi di   |
|   |    | errori o di altri eventi.                                   |
+---+----+-------------------------------------------------------------+
|   | Mo | Caratteristica di un prodotto o un sistema di poter essere  |
|   | di | modificato in modo efficace ed efficiente senza introdurre  |
|   | fi | difetti o degradarne la qualità.                            |
|   | ca |                                                             |
|   | bi | Nota 1: l'implementazione della modifica include la         |
|   | li | codifica, la progettazione, la documentazione e la          |
|   | tà | verifica.                                                   |
|   |    |                                                             |
|   |    | Nota 2: modularità e analizzabilità possono influenzare la  |
|   |    | modificabilità.                                             |
|   |    |                                                             |
|   |    | Nota 3: la modificabilità è una combinazione di mutabilità  |
|   |    | e stabilità.                                                |
+---+----+-------------------------------------------------------------+
|   | Te | Grado di efficacia ed efficienza con cui possono essere     |
|   | st | stabiliti i criteri di prova per un sistema, prodotto o     |
|   | ab | componente, e possono essere eseguiti specifici test per    |
|   | il | determinare se tali criteri sono stati soddisfatti.         |
|   | it |                                                             |
|   | à  |                                                             |
+---+----+-------------------------------------------------------------+
| I | Co | Livello di copertura di tutte le attività e obiettivi       |
| d | pe | utente da parte delle funzioni definite.                    |
| o | rt |                                                             |
| n | ur |                                                             |
| e | a  |                                                             |
| i |    |                                                             |
| t |    |                                                             |
| à |    |                                                             |
| f |    |                                                             |
| u |    |                                                             |
| n |    |                                                             |
| z |    |                                                             |
| i |    |                                                             |
| o |    |                                                             |
| n |    |                                                             |
| a |    |                                                             |
| l |    |                                                             |
| e |    |                                                             |
+---+----+-------------------------------------------------------------+
|   | Co | Livello al quale un prodotto o un sistema fornisce i        |
|   | rr | risultati corretti con il grado di precisione necessario.   |
|   | et |                                                             |
|   | te |                                                             |
|   | zz |                                                             |
|   | a  |                                                             |
+---+----+-------------------------------------------------------------+
|   | Ad | Livello al quale le funzioni consentono di svolgere i       |
|   | eg | compiti e gli obiettivi specificati.                        |
|   | ua |                                                             |
|   | te | Esempio: all’utente sono proposti solo i passi necessari a  |
|   | zz | completare un’attività, escludendo i passi superflui.       |
|   | a  |                                                             |
+---+----+-------------------------------------------------------------+
| C | Co | Capacità di un prodotto di svolgere le funzioni richieste   |
| o | es | in modo efficiente, condividendo un ambiente e risorse con  |
| m | is | altri prodotti, senza impatto negativo su questi ultimi.    |
| p | te |                                                             |
| a | nz |                                                             |
| t | a  |                                                             |
| i |    |                                                             |
| b |    |                                                             |
| i |    |                                                             |
| l |    |                                                             |
| i |    |                                                             |
| t |    |                                                             |
| à |    |                                                             |
+---+----+-------------------------------------------------------------+
|   | In | Capacità di due o più sistemi, prodotti o componenti di     |
|   | te | scambiarsi informazioni e utilizzare le informazioni        |
|   | ro | scambiate.                                                  |
|   | pe |                                                             |
|   | ra |                                                             |
|   | bi |                                                             |
|   | li |                                                             |
|   | tà |                                                             |
+---+----+-------------------------------------------------------------+
| P | Ad | Capacità di un prodotto/sistema di poter essere adattato in |
| o | at | modo efficace ed efficiente a funzionare su hardware e con  |
| r | ta | software differenti da quelli iniziali o in altri ambienti  |
| t | bi | operativi o in contesti di utilizzo diversi.                |
| a | li |                                                             |
| b | tà | Nota 1: l'adattabilità include la scalabilità interna (ad   |
| i |    | esempio campi dello schermo, tabelle, volumi delle          |
| l |    | transazioni, formati dei report, ecc.).                     |
| i |    |                                                             |
| t |    | Nota 2: gli adattamenti includono quelli effettuati da      |
| à |    | personale di supporto specializzato e quelli effettuati da  |
|   |    | personale operativo o dagli utenti finali.                  |
+---+----+-------------------------------------------------------------+
|   | In | Grado di efficacia ed efficienza con cui un prodotto o      |
|   | st | sistema può essere installato e/o disinstallato con         |
|   | al | successo in un determinato ambiente.                        |
|   | la |                                                             |
|   | bi | Nota 1: se il prodotto o il sistema deve essere installato  |
|   | li | da un utente finale, l'installabilità può influire          |
|   | tà | sull'adeguatezza e sull'operabilità funzionale risultanti.  |
+---+----+-------------------------------------------------------------+
|   | So | Capacità di un prodotto di sostituire un altro prodotto     |
|   | st | software con lo stesso scopo e nello stesso ambiente.       |
|   | it |                                                             |
|   | ui | Nota 1: la sostituzione di una nuova versione di un         |
|   | bi | prodotto software è importante per l'utente durante         |
|   | li | l'aggiornamento.                                            |
|   | tà |                                                             |
|   |    | Nota 2: la sostituibilità può includere attributi sia di    |
|   |    | installabilità che di adattabilità.                         |
|   |    |                                                             |
|   |    | Nota 3: la sostituibilità riduce il rischio di lock-in,     |
|   |    | prevedendo che altri prodotti software possano essere       |
|   |    | utilizzati al posto di quello attuale, ad esempio mediante  |
|   |    | l'uso di formati di file standardizzati.                    |
+---+----+-------------------------------------------------------------+

Tabella 9: esempio di requisito di qualità

+----------+-----------------------------------------------------------+
| **ID     | **Descrizione**                                           |
| Requisit |                                                           |
| o**      |                                                           |
+==========+===========================================================+
| RQ1      | Il tempo di risposta del sistema all'inserimento della    |
|          | password utente deve essere inferiore a 10 sec            |
+----------+-----------------------------------------------------------+

Requisiti di sistema/ambiente
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Questa classe di requisiti descrive:

-  il dominio dell’applicazione (es. software di contabilità, business intelligence, ecc.);
-  il contesto di utilizzo (numero e tipologia di utenti, modalità di accesso);
-  elementi legati all’ambiente fisico in cui il software deve operare.

Tabella 10: esempio di requisiti di sistema/ambiente

+-----------+----------------------------------------------------------+
| **ID      | **Descrizione**                                          |
| Requisito |                                                          |
| **        |                                                          |
+===========+==========================================================+
| RS1       | Il software dovrà operare su dispositivi portatili in    |
|           | ambienti con scarsa illuminazione                        |
+-----------+----------------------------------------------------------+
| RS2       | Il parco utenti comprende 10 amministratori e 1000       |
|           | utenti di contabilità                                    |
+-----------+----------------------------------------------------------+

Requisiti tecnici
^^^^^^^^^^^^^^^^^

Questa classe di requisiti descrive le tecnologie e gli standard (DBMS, middleware, networking) di cui il software deve tenere conto.

Tabella 11: esempio di requisiti tecnici

+--------------+-------------------------------------------------------+
| **ID         | **Descrizione**                                       |
| Requisito**  |                                                       |
+==============+=======================================================+
| RT1          | I documenti da rilasciare devono essere conformi al   |
|              | modello xxx.                                          |
+--------------+-------------------------------------------------------+
| RT2          | Il software dovrà operare in ambiente Linux e DBMS    |
|              | MySql                                                 |
+--------------+-------------------------------------------------------+

Aspetti della qualità
~~~~~~~~~~~~~~~~~~~~~

La norma ISO 25010 distingue i seguenti aspetti della qualità di un prodotto software:

-  qualità esterna: riguarda il comportamento dinamico del prodotto nell’ambiente d’uso reale o simulato; descrive o qualifica le prestazioni e l’operatività del prodotto in esecuzione, che viene visto come *black-box*;
-  qualità interna (o intrinseca): esprime le proprietà intrinseche, statiche, ossia indipendenti dal contesto di esecuzione e uso, direttamente misurabili ad esempio sul codice sorgente, pertanto senza la necessità di eseguire il software;
-  qualità in uso (o percepita): esprime il livello con cui il prodotto si dimostra utile all’utente nel suo contesto d’uso, ovvero “\ *l’efficacia e l’efficienza con cui serve le sue esigenze, a fronte di una sicurezza e di una soddisfazione nell’utilizzo*\ ”. Rappresenta quindi il punto di vista dell’utente finale, e include per definizione elementi soggettivi. È verificabile solo negli ambienti d’uso, reali e non simulati, analizzando l’interazione utente-macchina.

Esempi:

-  la percentuale di righe di commento in un codice sorgente è una caratteristica di qualità interna;
-  la complessità del codice sorgente è una caratteristica di qualità interna;
-  il numero di errori riscontrati nel codice sorgente è una caratteristica di qualità interna;
-  la non corretta strutturazione del codice sorgente può avere impatto negativo sulla qualità interna;
-  il grado di portabilità di un software può essere misurato analizzando il codice sorgente alla ricerca di legami con specificità della piattaforma su cui esso opera (si tratta in questo caso di qualità interna); in alternativa si può contare su quante piattaforme il software può operare senza interventi (si tratta in questo caso di qualità esterna); o ancora, si può verificare la portabilità dal punto di vista dell’utente che deve eseguire il porting, misurando il tempo e/o l’impegno speso per effettuare il porting stesso (si tratta in questo caso di qualità in uso);
-  il numero di errori del software riscontrati durante le fasi di test è una caratteristica di qualità esterna;
-  il tempo medio di esecuzione di uno script di installazione di un software è una caratteristica di qualità esterna;
-  il tempo medio intercorrente tra un blocco dell’esecuzione e il successivo è una caratteristica di qualità esterna;
-  il tempo medio di apprendimento di un software è una caratteristica di qualità in uso.
-  il tempo di risposta massimo di una funzionalità al variare del numero di utenti che contemporaneamente utilizzano un software è una caratteristica di qualità in uso;
-  la soddisfazione dell’utente finale nell’utilizzo del software è una caratteristica della qualità in uso.

La norma ISO definisce anche la “qualità del dato” (descritta dalla ISO 25012, complementare alla ISO 25010), che non viene qui illustrata in quanto esterna al perimetro di questo studio.

Classificazione delle metriche
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Nella definizione ISO/IEC/IEEE 24765:2017 Systems and software engineering-Vocabulary, una metrica è “\ *una misura quantitativa del grado di possesso di uno specifico attributo da parte di un sistema, un componente, un processo*\ ”. Essa si applica, quindi, assegnando un valore univoco (scelto entro un intervallo di valori fissato a priori) a un attributo del software, concreto e oggettivamente valutabile.

Con riferimento alla classificazione del paragrafo precedente, si possono distinguere:

-  metriche interne (statiche, o strutturali): utili per misurare le proprietà statiche e intrinseche del software (qualità interna); si applicano alle specifiche o al codice sorgente (tecniche di analisi statica, ispezione diretta), alla documentazione e ai grafi di flusso di controllo; queste metriche sono usate durante le fasi:sup:12\ `#fn12 <#fn12>`__ di Analisi, Design e Codifica, sempre dal punto di vista degli sviluppatori, non considerano il comportamento in fase di esecuzione, ma solo gli attributi statici e strutturali;
-  metriche esterne (dinamiche, o operative): misurano il comportamento dinamico del software, osservandolo in fase di esecuzione, nell’ambiente, reale o simulato, di utilizzo (qualità esterna); vengono impiegate a partire dalla fase di progettazione di dettaglio in poi, da parte di sviluppatori e/o utenti; i risultati di tali misurazioni sono influenzate dal livello di qualità interna raggiunto;
-  metriche in uso: misurano il grado di qualità percepita dall’utente finale, nello specifico contesto d’uso previsto per il prodotto; si fissa uno specifico scenario d’uso e si osserva l’effetto dell’esecuzione del prodotto sull’utente. Si ribadisce che la qualità in uso rappresenta l’effetto combinato di più caratteristiche di qualità interna ed esterna. Le metriche in uso sono impiegabili solo al momento del rilascio del prodotto, nell’ambiente reale di messa in esercizio.

Per fornire un esempio pratico di tale classificazione, si consideri la caratteristica di qualità “Affidabilità”. Essa è misurabile sia da metriche interne che esterne. Esternamente si potrebbe procedere rilevando, in un determinato intervallo di tempo, durante l’esecuzione del software, il numero medio di fallimenti, l’intensità media del fallimento (ossia il numero di fallimenti nell’unità di tempo), l’intervallo medio tra due successivi fallimenti. Internamente, invece, si potrebbe procedere con ispezioni del codice sorgente e revisioni della documentazione, per valutare, staticamente, il livello di tolleranza ai guasti.

Dimensioni del prodotto software
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

La figura che segue illustra nella forma di un diagramma E-R le relazioni che, nel presente studio, si identificano tra le entità “prodotto software”, “progetto” (generalizzazione di “progetto di sviluppo” e “progetto di manutenzione”:sup:13\ `#fn13 <#fn13>`__) e i loro attributi.

Sulla dimensione di un prodotto software influiscono i requisiti funzionali e non funzionali del prodotto stesso. A sua volta, la dimensione ha impatto sul valore di mercato del prodotto software. I requisiti e vincoli di progetto influiscono sull’impegno di progetto. A sua volta, quest’ultimo determina (in massima parte) il costo del progetto stesso.

Nel diagramma di figura 2 (ideato per modellare lo scenario tipico dei contratti con pagamento “a misura” delle pubbliche amministrazioni), il costo di un progetto di sviluppo di un prodotto software non ha relazione diretta con il valore di quest’ultimo. Con tale assunto si vuole svincolare, a livello concettuale:

-  il costo del progetto, attributo di competenza e visibilità del fornitore;
-  il valore del prodotto software, attributo di interesse dell’amministrazione cliente, che quantifica monetariamente le necessità che l’amministrazione aveva espresso in termini di funzionalità e requisiti di qualità/tecnici, e che il prodotto software rilasciato fornisce.

|image2|

Figura 2: relazione tra progetti e prodotti software

Si ritiene che questa separazione concettuale possa aiutare a risolvere alcune delle criticità rappresentate al §1.4. In particolare, si ritiene che svincolare il costo del progetto dal valore del prodotto possa motivare il fornitore a migliorare i propri processi produttivi così da abbattere i costi a parità di ricavi. A oggi, infatti, molti dei contratti pubblici che prevedono pagamenti “a misura” vengono poi gestiti, retroattivamente, in modo da coprire comunque i costi come ci si trovasse in forniture a tempo e spesa: in questi casi il fornitore non ha alcuna motivazione a rendersi più efficiente, ma anzi tende ad aumentare l’impegno erogato per essere pagato di più.

È anche vero che, in una situazione “sana”, il valore di un software commissionato ad hoc (vale a dire l’importo che viene pagato dal cliente) deve sostenere il costo di produzione e il margine del fornitore. In altri termini, deve essere verificata la diseguaglianza:

**Valore del prodotto sw > Costo di produzione**

Se così non è, oppure se la differenza tra valore e costo di produzione è insufficiente come margine per il fornitore, siamo in presenza di un’anomalia. Si noti che situazioni di questo tipo si verificano talvolta nei progetti delle pubbliche amministrazioni, ad esempio nell’ambito di grandi contratti poliennali che includono numerosi progetti: in questi casi, costi superiori ai ricavi in un singolo progetto devono trovare compensazione negli altri progetti del contratto o in voci separate dello stesso, ma – come detto - possono anche motivare il fornitore a ottimizzare i suoi processi interni per comprimere i costi e riportarsi in una situazione di redditività.

.. |image1| image:: media/media/image2.png
.. |image2| image:: media/media/image3.png
