Applicazioni operative ed esempi
--------------------------------

Considerazioni generali
~~~~~~~~~~~~~~~~~~~~~~~

Nei capitoli precedenti sono stati illustrati strumenti e tecniche che potrebbero rispondere alle esigenze riportate nel capitolo 1, in particolare:

-  esprimere in maniera quantitativa e oggettiva i requisiti funzionali e non funzionali di un software applicativo;
-  misurare le dimensioni di un parco applicativo al fine di valorizzarlo come asset;
-  negoziare efficacemente con i fornitori in un contesto di equilibrio e con un lessico comune.

Dai precedenti capitoli si evince che strumenti e tecniche finalizzati agli obiettivi di cui sopra non solo esistono, ma sono anche numerosi, non sempre omogenei e a volte alternativi tra loro. Come detto, le amministrazioni dovranno scegliere tra le soluzioni disponibili, tenendo conto delle proprie competenze, delle disponibilità di risorse e del contesto, anche giuridico, in cui devono operare, con la consapevolezza che non tutte le soluzioni si applicano a tutti gli scenari.

Si noti che, a fronte della pluralità di soluzioni disponibili, non sempre si riscontrano prove significative della maggiore efficacia, in tutti i contesti possibili, di una soluzione rispetto alle altre. Esperienze puntuali, come quelle che sono state descritte ad esempio nel §2.4.1, non sono sufficienti per derivare statistiche significative.

Pertanto, più che stilare una “classifica” delle soluzioni illustrate, sembra utile analizzare, nei paragrafi che seguono, alcuni casi d’uso in contesti rappresentativi, vale a dire in tipiche situazioni in cui possono trovarsi le amministrazioni. Per ciascuno di questi casi d’uso si declinano, sotto forma di suggerimenti pratici, le argomentazioni già espresse nei capitoli precedenti. Si ribadisce che si tratta di esempi non esaustivi, e che le indicazioni fornite non devono intendersi come raccomandazioni mandatorie.

Assessment di parchi applicativi già esistenti
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*Descrizione*

Un’amministrazione dispone di un portafoglio applicativo costituito da software sviluppato per proprio conto, internamente o da fornitori esterni, nel corso di uno o più progetti. L’amministrazione intende valorizzare tale portafoglio applicativo, cioè valutarlo come asset, a scopo contabile ma anche per identificare aree di miglioramento per successivi interventi di manutenzione.

Si tratta di un caso piuttosto comune tra le P.A. italiane. Alcune amministrazioni centrali, ad esempio, dispongono di parchi applicativi molto ingenti, frutto di anni di investimenti, a volte di dimensioni e complessità tali da rischiare di perderne il controllo.

Peraltro, l’assessment del parco applicativo è un’attività propedeutica a interventi di razionalizzazione e di consolidamento dei sistemi informativi pubblici, che rappresentano noti obiettivi del Piano Triennale.

Per valorizzare il proprio portafoglio applicativo, l’amministrazione deve determinarne la dimensione. Riprendendo i concetti espressi al §3.4, per le applicazioni facenti parte del portafoglio occorre misurare le funzionalità erogate e le caratteristiche non funzionali.

*Soluzioni proposte (1)*

Come detto, il modo di procedere deve essere scelto in base al contesto. In presenza di documentazione insufficiente e/o obsoleta (ad esempio per parchi applicativi molto datati sviluppati su sistemi legacy), potrebbe essere meno oneroso l’uso di strumenti automatici (rif. §4.2.1): sfruttando tali strumenti l’amministrazione potrebbe ottenere una misura funzionale del parco applicativo, sommando le dimensioni funzionali delle singole applicazioni costituenti il parco.

Gli strumenti automatici potrebbero fornire anche una misura delle caratteristiche non funzionali delle singole applicazioni (ad esempio, con le metriche CISQ-OMG descritte al §4.6, si potrebbero misurare automaticamente le caratteristiche di affidabilità, sicurezza, manutenibilità e prestazione/efficienza). In alternativa o a complemento, potrebbero essere usate le metriche proposte dalla ISO 25023 e descritte al §4.4. Ove si desideri ottenere una misura complessiva di queste caratteristiche a livello di intero parco applicativo (es. per i già citati obiettivi di valorizzazione patrimoniale), si dovranno aggregare le misure eseguite sulle singole applicazioni. Per compiere quest’ultimo passo, si sconsiglia l’uso della media semplice o della mediana, ritenendo invece più efficace ricorrere alla media pesata.

Esempio pratico, estremamente semplificato per chiarezza di esposizione: supponiamo che un’amministrazione AMM1 possieda un portafoglio applicativo composto da 5 applicazioni (vedi figura). Si vuole valutare complessivamente questo portafoglio sulla base delle funzionalità erogate, dell’affidabilità e della manutenibilità.

|image4|

Si procederà misurando, per ciascuna applicazione:

-  la dimensione funzionale in PF;
-  l’affidabilità con una delle metriche di cui §4.4.3, oppure con uno strumento automatico di cui al §4.6;
-  la manutenibilità con una delle metriche di cui al §4.4.5, oppure uno strumento automatico di cui al §4.6.

Per riportare queste misure a livello di portafoglio complessivo, si procederà:

-  per la dimensione funzionale, sommando i PF delle singole applicazioni;
-  per le due caratteristiche non funzionali d’interesse (nel caso in esame, affidabilità e manutenibilità) ricorrendo a una media pesata, utilizzando come “peso” la dimensione funzionale, come nella tabella che segue, ove i valori numerici hanno meramente significato di esempio didattico.

Tabella 43: assessment del parco applicativo dell’amministrazione AMM1

+--------------------------+--------------------------------+----------------------------+------------------------------+
| **Applicazione**         | **Dimensione funzionale (PF)** | **Misura di affidabilità** | **Misura di manutenibilità** |
+==========================+================================+============================+==============================+
| Appl 1                   | 1.200                          | 1,4                        | 3,3                          |
+--------------------------+--------------------------------+----------------------------+------------------------------+
| Appl 2                   | 650                            | 2,2                        | 2,6                          |
+--------------------------+--------------------------------+----------------------------+------------------------------+
| Appl 3                   | 1.720                          | 1,7                        | 3                            |
+--------------------------+--------------------------------+----------------------------+------------------------------+
| Appl 4                   | 2.400                          | 3,6                        | 3,9                          |
+--------------------------+--------------------------------+----------------------------+------------------------------+
| Appl 5                   | 880                            | 0,9                        | 2                            |
+--------------------------+--------------------------------+----------------------------+------------------------------+
| Totale Parco Applicativo | 6.850                          | 2,26\ `24 <#fn24>`__       | 3,20\ `25 <#fn25>`__         |
+--------------------------+--------------------------------+----------------------------+------------------------------+

Si noti che i risultati del processo descritto potrebbero essere utilizzati anche per classificare, in base alla loro qualità, le applicazioni di un parco applicativo, oppure – in un’analisi di maggior dettaglio e granularità – per classificare i moduli software nell’ambito di una sezione specifica (es. contabilità, servizi del portale web) del portafoglio dell’amministrazione.

Riguardo all’ultimo passo necessario all’assessment, vale a dire la stima del valore in euro del parco applicativo, a oggi è relativamente facile, per la presenza di consolidati riferimenti di mercato, monetizzare la dimensione funzionale, moltiplicando il numero di PF per un corrispettivo unitario coerente con i riferimenti. Tornando all’esempio di tabella 43, ipotizzando un corrispettivo unitario di 200,00 euro al PF, il valore monetario della dimensione funzionale dell’amministrazione AMM1 è:

V\ :sub:`FUR` = 200,00 \* 6.850 = € 1.370.000,00

Purtroppo a oggi non si riscontra un’analoga disponibilità di riferimenti economici condivisi per quanto riguarda la dimensione non funzionale. Non è quindi immediato, almeno al momento, convertire i numeri delle ultime due celle di tabella 43 (in generale le misure non funzionali) in termini economici. In altre parole, non si può qui proporre una formula univoca per il calcolo del V\ :sub:`NFR` (valore della componente non funzionale).

Tra i vari strumenti e soluzioni presentate in questo documento, l’indicatore che sembra più vicino a questa tematica è l’Automated Technical Debt, citato al §4.6. Misurando il Technical Debt di un’applicazione si ottiene infatti una stima dell’impegno, espresso in giorni persona, necessario per eliminare i difetti nel codice dell’applicazione stessa. Moltiplicando la stima dell’impegno per una tariffa giornaliera coerente con i valori di mercato, si può riportare in euro la misura del Technical Debt.

Quest’ultima quantità (di seguito, per comodità, V\ :sub:`ATD`) si pone senz’altro in relazione inversa col V\ :sub:`NFR` dell’applicazione: nei casi in cui V\ :sub:`ATD` è nullo, V\ :sub:`NFR` è massimo. Bisogna tenere presente, tuttavia, che il Technical Debt non copre tutte le caratteristiche non funzionali: ad esempio l’usabilità rimane fuori dalla definizione di questo indicatore.

Nei soli casi in cui le caratteristiche funzionali che interessano siano tra quelle coperte dal Technical Debt (es. si sta valutando un portafoglio composto da applicazioni di tipo batch, pertanto l’usabilità non ha grande rilevanza), la dipendenza tra V\ :sub:`NFR` e V\ :sub:`ATD` è più stretta. In questi casi si può ritenere, come ordine di grandezza, che V\ :sub:`NFR` corrisponda alla differenza tra il valore massimo possibile per V\ :sub:`ATD` e il valore effettivo di V\ :sub:`ATD` misurato sull’applicazione in esame. Per maggiore chiarezza si veda la figura seguente.

|image5|

Con riferimento al Technical Debt, occorre precisare che la sua definizione e modalità di calcolo si basa su elaborazioni e dati di riferimento rilevati da CISQ-OMG nel periodo 2016-2017 nelle comunità di sviluppatori. Si tratta pertanto di uno strumento non necessariamente omogeneo con lo scenario della pubblica amministrazione italiana, e i cui risultati devono essere maneggiati con cautela.

Sarebbe auspicabile che una simile raccolta di dati progettuali (misure a consuntivo, stime, costi e impegni) fosse condotta anche nel settore pubblico, costituendo magari un repository centralizzato da cui trarre statistiche significative. La disponibilità di un tale repository consentirebbe non solo un confronto omogeneo tra le iniziative della PA, ma in prospettiva fornirebbe riferimenti economici di cui, come detto, oggi non c’è disponibilità. Su questa ipotesi, che per comodità chiameremo RPP (repository di progetti pubblici) torneremo in seguito.

*Soluzioni proposte (2)*

Come seconda soluzione, applicabile a casi ove la documentazione sia di buon livello e sufficiente alle necessità di un conteggio formale, si potrebbe misurare in PF la dimensione funzionale delle applicazioni che costituiscono il portafoglio e integrare tale conteggio con SNAP (metodo che, come detto, tiene conto delle caratteristiche non funzionali di un’applicazione). In questo caso la dimensione complessiva del portafoglio applicativo si ricondurrebbe a due numeri, rispettivamente:

-  la somma dei PF delle singole applicazioni costituenti il portafoglio;
-  la somma degli SP (SNAP Point) delle singole applicazioni costituenti il portafoglio.

Il metodo SNAP consente infatti di sommare tra loro i punti ottenuti sui diversi elementi previsti dal metodo, correlati alle caratteristiche non funzionali. Ciò può costituire un vantaggio ove obiettivo dell’assessment sia appunto ottenere una valutazione unica e complessiva del portafoglio applicativo. Viceversa, se l’amministrazione ritiene rilevanti solo alcune delle caratteristiche non funzionali (ad esempio la sola sicurezza, oppure la sicurezza e la manutenibilità), si potrebbe pensare a un uso parziale del metodo, conteggiando solo alcune categorie o sotto-categorie previste da SNAP.

Anche questa soluzione, tuttavia, risente delle medesime incertezze della precedente riguardo alla monetizzazione finale della misura, in quanto non sono a oggi disponibili riferimenti condivisi su un “valore di mercato” dello SNAP Point.

*Soluzioni proposte (3)*

Un’ulteriore soluzione, da suggerire alle amministrazioni prive di competenze interne sull’argomento e che dunque ritengono preferibile acquisire il servizio di assessment da fornitori esterni, consiste nel bandire una gara descrivendo l’esigenza ma lasciando al fornitore l’onere di formulare una proposta tecnica, che verrà poi valutata anche sotto l’aspetto metodologico.

Ove, come soluzione intermedia, l’amministrazione volesse solo reperire sul mercato risorse professionali con competenza sul tema delle misurazioni, potrebbe lanciare sul MEPA una RdO per servizi professionali. Giacché nelle RdO si possono precisare i servizi richiesti, integrando la documentazione di base con ulteriori note operative, si potrebbero inserire come requisiti indicazioni tratte dalla presente guida tecnica.

Come considerazione conclusiva, si evidenzia che tutte le soluzioni proposte in questo paragrafo prevedono un investimento, più o meno significativo, da parte dell’amministrazione. Benché tutte le P.A., in teoria, potrebbero essere interessate a condurre iniziative di assessment del loro parco applicativo, non è detto che tali iniziative si rivelino profittevoli, in un’ottica di costi-benefici, per ogni singola amministrazione, specie per le più piccole.

Per questi motivi, e tenendo presente i vantaggi complessivi a livello di sistema paese, potrebbe essere utile la costituzione, nell’ambito dei progetti strategici per la digitalizzazione, di un laboratorio centralizzato per la misurazione del software pubblico, gestito dall’AgID nel suo ruolo di soggetto responsabile dell’attuazione del PT.

Questo laboratorio potrebbe dotarsi delle competenze e degli strumenti necessari a supportare le amministrazioni nell’assessment del loro portafoglio applicativo. Ciò comporterebbe risparmi economici, messa a fattor comune di esperienze e soluzioni, omogeneità di metodi e misure e dunque confrontabilità tra le stesse.

Nello specifico, il laboratorio centralizzato potrebbe occuparsi della realizzazione e del mantenimento del repository di progetti pubblici (RPP) su citato. Inoltre, con riferimento agli strumenti automatici di cui al §4.6, il laboratorio centralizzato potrebbe acquisire una licenza di tipo enterprise (tale cioè da coprire le esigenze dell’intera P.A.) di eventuali prodotti proprietari, o meglio ancora potrebbe adattare e far evolvere, creando un’apposita community, un prodotto open source che implementi le specifiche CISQ-OMG, rendendolo così di uso gratuito per le amministrazioni.

Sviluppo di nuove applicazioni
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Il servizio di sviluppo di software applicativo viene in genere acquisito dalle amministrazioni tramite contratti pluriennali che coprono uno o (caso prevalente) più progetti. Tali contratti definiscono una cornice di regole (es. SLA, modalità di collaudo e di pagamento, penali), nell’ambito della quale vengono condotti i singoli progetti.

Come già rilevato nel §1.3, tranne rare eccezioni, al momento l’unica metrica utilizzata nei progetti di sviluppo applicativo è il Punto Funzione. Negli usuali contratti viene fissato un corrispettivo unitario (oppure più corrispettivi unitari, ad esempio uno per ogni classe di applicazione), e si prevede un pagamento a misura, in cui l’importo viene determinato moltiplicando il corrispettivo unitario contrattuale per il numero di PF rilasciati e positivamente collaudati.

Nel caso di gare, in genere l’amministrazione effettua stime di massima della dimensione dell’applicazione (o delle applicazioni) da realizzare, e calcola la base d’asta moltiplicando tale stima per un corrispettivo unitario definito sulla base di precedenti iniziative o rilevazioni di mercato.

Come detto al §4.2, l’uso del PF continua a essere accettabile (e raccomandabile) per la misura delle funzionalità delle applicazioni da realizzare, purché questa metrica venga adoperata in modo corretto. È necessario tuttavia che le amministrazioni integrino le misure funzionali in PF con misure delle caratteristiche non funzionali, utilizzando le metriche descritte nei capitoli precedenti. Nel seguito vengono riportati alcuni esempi pratici.

Formalizzazione dei requisiti non funzionali
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Un primo suggerimento riguarda la definizione dei requisiti utente. L’utilizzo di metriche non funzionali può consentire una migliore formalizzazione dei NFR, evitando le dizioni vaghe, tautologiche e non verificabili. Nella tabella che segue si riportano, a titolo di esempio, alcuni requisiti non funzionali: per ciascuno di essi viene fornita una definizione da evitare e una accettabile.

Tabella 44: uso di metriche nella definizione di NFR (esempi)

+-----------------------------------+------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Caratteristica non funzionale** | **Definizione non corretta del requisito (es. vaga o non verificabile)**     | **Definizione corretta del requisito (con esempi di metriche)**                                                                                                 |
+===================================+==============================================================================+=================================================================================================================================================================+
| Affidabilità                      | L’applicazione dev’essere robusta rispetto agli errori critici               | L’applicazione deve presentare una tolleranza agli errori critici, misurata con l’indicatore RFt-1-G (vedi 4.4.3.3), non inferiore a 0,9.                       |
+-----------------------------------+------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Prestazione/efficienza            | L’applicazione deve rispondere velocemente                                   | Il tempo medio di risposta dell’applicazione a una richiesta utente, misurato con l’indicatore PTb-1-G (vedi 4.4.1.1), non deve essere superiore a 0,5 secondi. |
+-----------------------------------+------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Usabilità                         | L’applicazione deve essere usabile                                           | L’applicazione deve poter fornire dimostrazioni d’uso (indicatore UAp-2-S di §4.4.1.1) per non meno del 90% delle funzionalità offerte all’utente.              |
+-----------------------------------+------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Usabilità                         | L’applicazione deve favorire un uso rapido delle maschere d’inserimento dati | Le maschere d’inserimento dati dell’applicazione devono prevedere valori di default almeno nel 90% dei casi (indicatore ULe-2-S del §4.4.2.2).                  |
+-----------------------------------+------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Portabilità                       | L’applicazione deve essere facilmente portabile sulla piattaforma Linux      | L’adattabilità dell’applicazione alla piattaforma Linux, misurata con l’indicatore PAd-1-G (vedi §4.4.7.1), non dev’essere inferiore al 70%.                    |
+-----------------------------------+------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

Il suggerimento di utilizzare metriche per meglio definire i NFR, ovviamente, va recepito tenendo presente la rilevanza dell’applicazione da realizzare e le dimensioni del progetto. Un numero eccessivo di metriche, e una loro eccessiva complessità, potrebbe infatti rendere laborioso il collaudo dell’applicazione e in generale l’operatività del contratto, vanificando i benefici ottenuti.

Si noti che gli esempi di tabella 44 prevedono l’uso di alcune tra le metriche proposte dall’ISO 25023 e descritte nel §4.4. Tra tutte le metriche presentate in questa guida tecnica, si ritiene che esse siano particolarmente adatte a formalizzare i NFR, giacché la loro definizione è più vicina alla “vista utente” anziché all’implementazione tecnica.

Tra le altre soluzioni disponibili, le metriche CISQ-OMG (basate sul conteggio, tramite analisi statica del codice sorgente, delle violazioni a regole di corretta programmazione) sembrano meno efficaci per rappresentare requisiti utente. Ciò tuttavia non significa che non siano utili nei contratti di sviluppo applicativo: tali metriche potrebbe essere impiegate, invece che nella formalizzazione degli NFR, per fissare un livello minimo di qualità. A tale scopo, nel contratto dovranno essere riportati, come SLA, gli elenchi delle regole di buona programmazione da rispettare (o i riferimenti al sito OMG che le pubblica). Per ciascuna delle metriche dovrà essere specificata la soglia minima di accettazione, al di sotto della quale i rilasci non verranno accettati. I valori delle soglie possono dipendere dalla rilevanza, dalla criticità e dalla tipologia dell’applicazione (ERP, WEB, mobile, BI, …), e possono essere desunti da dati di benchmark globali o da misurazioni effettuate sul parco applicativo dell’amministrazione (in modo da uniformare la qualità del parco stesso).

Data la disponibilità di strumenti automatici di misurazione, le verifiche di rispetto delle soglie di accettazione potrebbero non appesantire la fase di test dei vari rilasci, anche in metodologie di tipo Agile.

Per formalizzare gli NFR sembra ancora meno efficace, o almeno non intuitivo, l’uso del metodo SNAP, a meno di casi specifici in cui i requisiti utente siano tali da potersi mappare con le categorie e sotto-categorie SNAP già prima dell’implementazione. SNAP sembra invece più utile in una fase successiva, per misurare il contenuto non funzionale complessivo dell’applicazione (giacché questo metodo consente di fondere le misure delle varie caratteristiche non funzionali) integrando così la misura in PF delle funzionalità erogate dall’applicazione stessa, come illustrato nel paragrafo che segue.

Misura della dimensione complessiva e stima del valore dell’applicazione
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Come già illustrato al §4.5, SNAP nasce come “completamento” del metodo dei PF. L’uso integrato dei due metodi consente pertanto di avere una misura completa dell’applicazione, tenendo conto sia delle caratteristiche funzionali che di quelle non funzionali. Il passaggio successivo, vale a dire la valorizzazione dell’applicazione sulla base delle sue dimensioni, non è immediato. Come già osservato al §6.2, oggi esistono riferimenti ben consolidati sul valore di mercato dei PF, ma non sono disponibili dati pubblici e condivisi che consentano di attribuire un importo in euro agli SNAP Point. In prospettiva, per superare questa criticità, si potrebbe analizzare, ex post, un numero significativo di progetti di sviluppo delle P.A., verificando la correlazione tra il numero di SP e il relativo impegno di realizzazione. In assenza di tali statistiche, a oggi non è possibile suggerire un ipotetico “valore di mercato” dello SP.

Si noti che anche per le metriche proposte dalla ISO 25023 vale la stessa problematica: non sono disponibili riferimenti economici. Anche in questo caso si può ipotizzare uno studio a posteriori di un repository di progetti pubblici (si veda l’ipotesi RPP di cui al §6.2) di dimensioni tali da poterne derivare statistiche significative. Si tratta di costituire qualcosa di simile all’archivio ISBSG, che raccoglie dati di centinaia di progetti di sviluppo e manutenzione provenienti da tutto il mondo.

Per le metriche CISQ-OMG, come detto, l’indicatore Automated Technical Debt sembra molto vicino alla tematica di convertire una misura non funzionale in una stima di impegno e dunque in un valore economico. Si ribadiscono tuttavia le perplessità già espresse al §6.2 sulla copertura e l’applicabilità di questo indicatore alla realtà della pubblica amministrazione italiana.

Una strada alternativa per la valorizzazione della componente non funzionale di un’applicazione può trarsi dai casi “reali” descritti al §2.4.1. In tali esempi le misure non funzionali (qualitative, da “molto basso” a “molto alto”) vengono usate per derivarne un fattore di adeguamento, tratto dai coefficienti moltiplicativi del metodo Cocomo, da applicare alla misura funzionale. Il valore complessivo dell’applicazione si ottiene con una formula di questo tipo:

**Valore = CorrUnit \* FP \* FattAd**

in cui:

-  FP = misura funzionale;
-  FattAd = fattore di adeguamento tratto da Cocomo;
-  CorrUnit = corrispettivo unitario, espresso in €/PF.

Come dimostrano gli esempi del §2.4.1, questa soluzione è di applicabilità immediata, e concettualmente corrisponde a “modulare” il corrispettivo unitario per PF sulla base delle caratteristiche non funzionali del singolo modulo software (la granularità del metodo può variare, andando a modulare il corrispettivo unitario sulla singola funzionalità o, all’altro estremo, a livello dell’intera applicazione).

Si sottolinea, tuttavia, che questa soluzione presenta alcune criticità, già evidenziate al §2.4.1. In particolare include elementi di soggettività, giacché le misure sono qualitative, il che potrebbe determinare controversie tra cliente e fornitore. Anche l’uso di Cocomo desta perplessità: questo metodo è basato, per la calibrazione dei coefficienti, su statistiche di progetti statunitensi datati, che potrebbero non essere rappresentativi della realtà pubblica italiana di oggi. Anche in questo caso, come per i precedenti, sarebbe auspicabile disporre di dati di progetti italiani per “tarare” il metodo sul reale contesto d’uso.

Sembra utile, in conclusione, ribadire la regola già espressa: non esistono strumenti/soluzioni migliori in assoluto, ma strumenti/soluzioni più adeguate al contesto.

Nel caso in cui una PA bandisca una gara per uno o più progetti di sviluppo applicativo, in cui la raccolta dei requisiti utente venga affidata allo stesso fornitore, l’amministrazione potrà chiedere ai partecipanti alla gara di proporre metriche e metodologie per la misurazione delle caratteristiche non funzionali. L’efficacia di tali proposte, comprovata da esperienze d’uso i cui risultati vengano riferiti dal concorrente, potranno concorrere al punteggio tecnico dell’offerta in esame.

Evoluzione di applicazioni esistenti
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Per la manutenzione evolutiva (MEV) valgono, in generale, le medesime considerazioni e suggerimenti espressi per lo sviluppo applicativo. Peraltro, usualmente i due servizi vengono acquisiti dalle amministrazioni pubbliche nell’ambito dei medesimi contratti, o comunque con SLA, penali e modalità contrattuali del tutto simili.

Ribadendo la raccomandazione di un uso corretto della metrica dei PF, già espressa al §6.3, vale la pena ricordare che il metodo FPA prevede una modalità di conteggio differente tra sviluppo e manutenzione evolutiva; in quest’ultima si prevede la suddivisione dei PF nelle tre categorie:

-  ADD (nuove funzionalità);
-  CHG (funzionalità modificate);
-  DEL (funzionalità cancellate).

Si raccomanda pertanto alle amministrazioni di esplicitare, nei contratti per servizi di manutenzione evolutiva, che i conteggi devono riportare le tre tipologie di cui sopra, a ciascuna delle quali va applicato, nella generalità dei casi, uno specifico corrispettivo unitario, massimo per la tipologia ADD, intermedio per la CHG, minimo per la DEL.

Anche il metodo SNAP, peraltro, prevede un conteggio differente tra sviluppo e manutenzione evolutiva, e nel secondo caso classifica gli SP in ADD, CHG e DEL.

Le indicazioni del paragrafo precedente, come detto, sono ancora tutte applicabili. Tuttavia si declina in modo leggermente diverso l’uso delle metriche CISQ-OMG per definire una soglia di qualità accettabile in collaudo.

Nella manutenzione evolutiva, difatti, le soglie che devono essere rispettate per l’accettazione possono essere semplicemente fissate al livello di qualità attuale dell’applicazione oggetto della MEV, in modo da garantire che l’aggiunta, modifica o cancellazione di funzionalità non abbassino la qualità esistente prima dell’intervento.

Allo scopo di valorizzare le esperienze precedenti e consentire confronti omogenei, si suggerisce, negli interventi di MEV su una data applicazione, di continuare a utilizzare le metriche usate nei precedenti interventi di sviluppo dell’applicazione stessa.

Manutenzione
~~~~~~~~~~~~

Preliminarmente sembra utile classificare le varie tipologie di manutenzione – non evolutiva - che possono svolgersi sul software applicativo. Con riferimento alla norma ISO/IEC 14764:2006, si distinguono le seguenti tipologie:

-  manutenzione correttiva, che consiste nella modifica del software, eseguita dopo il rilascio\ `26 <#fn26>`__, per correggere problemi rilevati;
-  manutenzione preventiva, vale a dire la modifica del software per correggere difetti prima che divengano problemi effettivi;
-  manutenzione adattativa, modifica del software per mantenerlo utilizzabile a fronte di cambiamenti dell’ambiente operativo;
-  manutenzione perfettiva, modifica del software per aumentarne la qualità (es. prestazioni, manutenibilità).

Le prime due tipologie comportano correzioni del software, la terza e la quarta miglioramenti.

Il diagramma E-R che segue illustra la gerarchia tra le tipologie di manutenzione su descritte.

|image6|

Figura 4: tipologie di manutenzione

Manutenzione correttiva
^^^^^^^^^^^^^^^^^^^^^^^

Il servizio di manutenzione correttiva viene in genere acquisito dalle amministrazioni tramite contratti pluriennali che prevedono un pagamento a canone. L’importo del canone è legato alla dimensione funzionale del parco applicativo oggetto del servizio, con formule del tipo:

*F1: Canone_annuo = corrispettivo_unitario \* Dimensione*

in cui la dimensione è misurata in genere in PF.

Nei contratti normalmente stipulati nel settore pubblico, il corrispettivo unitario è un valore di mercato, nel senso che viene determinato da una negoziazione con il fornitore o viene offerto da quest’ultimo in gara.

Si ritiene che l’attuale situazione possa essere resa più efficiente ove l’amministrazione disponesse, per le applicazioni oggetto del servizio, di una misura della manutenibilità e dell’affidabilità (in particolare della sottocaratteristica “maturità”). Applicazioni di alta manutenibilità e maturità, in teoria, dovrebbero infatti richiedere meno interventi di manutenzione rispetto ad applicazioni di bassa manutenibilità e minore maturità. Ciò dovrebbe tradursi in un canone minore nel primo caso e più alto nel secondo.

Disponendo di tali misure, l’amministrazione potrebbe modulare il corrispettivo unitario della formula F1, tenendo presente la proporzionalità inversa su descritta. Peraltro, in situazioni ove il parco applicativo oggetto di manutenzione sia disomogeneo rispetto alla manutenibilità e alla maturità, si potrebbe utilizzare, per la determinazione del canone annuo, più corrispettivi unitari diversi.

Esempio: un’amministrazione deve acquisire un servizio di manutenzione su un parco software composto da due gruppi di applicazioni, GA1 e GA2. Il primo gruppo è caratterizzato da buona manutenibilità e alta maturità; il secondo gruppo invece ha bassa maturità (ad esempio è stato rilasciato più di recente) ed è scarsamente manutenibile. In questo caso l’amministrazione dovrebbe fissare un corrispettivo unitario CU1 basso da applicare al primo gruppo (a mero titolo di esempio, e per fornire un ordine di grandezza, diciamo 10 €/PF annui), e un CU2 alto per il secondo (sempre a titolo esemplificativo, diciamo 20 €/PF annui). Per semplicità operativa si potrebbe mantenere un unico canone complessivo (gestire separatamente, a livello contrattuale, gli interventi sui due gruppi sarebbe troppo oneroso) calcolato come segue:

Canone_annuo = CU1 \* PF1 + CU2 \* PF2

in cui PF1 è la dimensione funzionale del primo gruppo di applicazione, mentre PF2 è la dimensione funzionale del secondo gruppo. Si noti che, ove l’amministrazione non disponesse delle misure funzionali PF1 e PF2, e il livello della documentazione rendesse problematico un conteggio manuale dei punti funzione, potrebbe ricorrere agli strumenti automatici di cui al §4.2.1. Ammettendo, come ipotesi esemplificativa, che il conteggio (manuale o automatico) avesse fornito come risultato i valori PF1 = 1.400 e PF2 = 850, applicando la formula di cui sopra si determinerebbe un canone annuo complessivo pari a: 10 \* 1.400 + 20 \* 850 = 31.000,00 euro.

Come ultima indicazione, occorre considerare che la maturità del software dipende non solo da quando lo stesso è entrato in esercizio, ma anche dagli interventi di manutenzione che esso ha subito dal momento del rilascio. Ciò si riscontra ad esempio nella definizione delle metriche di maturità del §4.4.3.1. L’amministrazione deve tenerne conto, ripetendo la misura di questa sottocaratteristica al termine di un contratto di manutenzione, anche allo scopo di definire il canone di un eventuale contratto successivo.

Manutenzione preventiva
^^^^^^^^^^^^^^^^^^^^^^^

Il servizio di manutenzione preventiva, ove previsto, è in generale acquisito dalle amministrazioni nell’ambito dei medesimi contratti per la manutenzione correttiva. Valgono quindi le indicazioni del paragrafo precedente. Si riscontrano anche casi in cui il servizio non è incluso nel contratto, oppure è descritto in maniera tale da renderlo inefficace: ad esempio vengono previsti SLA e penali che si riferiscono alla sola manutenzione correttiva (tempi di intervento a seguito di segnalazione, tempi di ripristino).

Per migliorare la situazione si suggerisce l’impiego di metriche per l’affidabilità (sottocaratteristiche “maturità” e “disponibilità”). Ad esempio, l’amministrazione potrebbe misurare queste sottocaratteristiche all’inizio del contratto e fissare come SLA che, grazie agli interventi di manutenzione preventiva, esse debbano migliorare, in un intervallo di tempo fissato, di una certa percentuale. Il mancato rispetto di questo SLA potrebbe comportare l’applicazione di una penale; al contrario, ove si riscontri un miglioramento superiore alla soglia minima, ciò potrebbe determinare il pagamento di una quota sospesa dell’importo dovuto al fornitore.

Si noti che, a differenza del paragrafo precedente ove le misure erano di uso “interno” all’amministrazione, i suggerimenti qui espressi richiedono metriche oggettive, soprattutto per evitare contenziosi con il fornitore sul rispetto degli SLA e l’applicazione delle penali. Sono pertanto da evitare misure che includono un certo grado di soggettività (vedi gli esempi del §2.4.1): potrebbe invece essere opportuno l’impiego delle metriche ISO di cui al §4.4.3.1 e al §4.4.3.2, o di strumenti di misura automatica.

Gli strumenti di misura automatici potrebbero essere impiegati anche per verificare che un intervento di manutenzione correttiva o preventiva non abbia peggiorato le caratteristiche di qualità dell’applicazione oggetto dell’intervento stesso (ciò potrebbe avvenire se la correzione viene eseguita non rispettando le regole di corretta programmazione, vale a dire eliminando l’errore ma ad esempio abbassando il livello di manutenibilità o di sicurezza dell’applicazione).

Operativamente, ciò si ottiene effettuando i seguenti passi:

1. si misura, alla stipula del contratto o all’attivazione del servizio di manutenzione, le caratteristiche di qualità del software oggetto del servizio;
2. si ripete con cadenza periodica, ad esempio trimestralmente, le suddette misure;
3. si verifica che le caratteristiche di qualità misurate non si siano abbassate nel tempo. Ogni variazione peggiorativa porterà all’applicazione di una penale al fornitore, ad esempio pari alla variazione in aumento dell’Automated Technical Debt.

Occorre ovviamente esplicitare nel contratto gli elenchi o i riferimenti alle regole di corretta programmazione su cui si basano le misurazioni automatiche, in modo da evitare contestazioni da parte del fornitore (in caso contrario, il fornitore si troverebbe costretto a utilizzare lo stesso strumento automatico di misura).

Anche per il servizio di manutenzione, ove l’amministrazione non abbia competenze e/o esperienza sulle metriche, potrebbe richiedere allo stesso fornitore di descrivere, nella sua proposta tecnica, gli strumenti e/o la soluzione che userà per effettuare le misurazioni suggerite in questo paragrafo, e assegnare parte del punteggio tecnico di gara all’efficacia della soluzione proposta.

Qualunque sia il percorso che porta alla scelta dello strumento/soluzione, quest’ultimo dovrà essere chiaramente indicato nel contratto, esplicitandone metodologia d’uso, ruoli e responsabilità per evitare contenziosi durante l’erogazione del servizio.

Manutenzione adattativa
^^^^^^^^^^^^^^^^^^^^^^^

Nei tipici contratti pubblici gli interventi di manutenzione adattativa sono considerati attività progettuali e remunerati a tempo e spesa (sulla base dei giorni persona erogati e rendicontati) oppure a corpo, sulla base di una stima iniziale proposta dal fornitore e accettata dall’amministrazione cliente.

Ribadendo le considerazioni espresse al §4.1, si ritiene che anche per questa tipologia di servizio sarebbe conveniente e meno rischiosa una modalità di remunerazione a misura.

Dal punto di vista teorico e in termini ISO (vedi §3.1.3), qualunque intervento di manutenzione adattativa migliora la caratteristica “portabilità”, in particolare le sottocaratteristiche “adattabilità” e “installabilità”. Pertanto, si potrebbe valutare quantitativamente l’intervento misurando il valore di tali sottocaratteristiche prima e dopo l’intervento stesso. In analogia a quanto proposto al paragrafo precedente, si potrebbe definire, come SLA, che grazie all’intervento di manutenzione adattativo richiesto tali sottocaratteristiche debbano migliorare di una certa percentuale. Il mancato rispetto dello SLA potrebbe comportare l’applicazione di una penale; al contrario, ove si riscontri un miglioramento superiore alla soglia minima, ciò potrebbe determinare il pagamento di una quota sospesa dell’importo dovuto al fornitore. Questa modalità di pagamento consentirebbe di considerare gli interventi di manutenzione adattativa come investimenti, imputando il loro importo come CAPEX invece che come OPEX.

Anche nel caso della manutenzione adattativa, la necessità di definire SLA e penali sconsiglia l’uso di metriche soggettive, e suggerisce invece strumenti automatici o comunque misure di tipo oggettivo.

Tra le metriche illustrate nei capitoli precedenti, si potrebbero adoperare:

-  la sottocategoria SNAP 3.1: “multiple platforms”;
-  le metriche ISO 25023 di cui al §4.4.7.

Resta il suggerimento, per le amministrazioni prive di competenze ed esperienze in materia, di chiedere allo stesso fornitore di descrivere, nella sua proposta tecnica, gli strumenti e/o la soluzione che userà per effettuare le misurazioni di cui sopra, e assegnare parte del punteggio tecnico di gara alla soluzione proposta.

Anche per la manutenzione adattativa, è possibile l’uso di strumenti automatici per verificare il rispetto delle regole di corretta programmazione e il conseguente mantenimento del livello di qualità del software oggetto dell’intervento (vedi paragrafo precedente).

Manutenzione perfettiva
^^^^^^^^^^^^^^^^^^^^^^^

Nei contratti delle P.A. gli interventi di manutenzione perfettiva sono in genere considerati attività progettuali, remunerati a tempo e spesa (sulla base dei giorni persona erogati e rendicontati) oppure a corpo, sulla base di una stima iniziale proposta dal fornitore e accettata dall’amministrazione cliente.

Ribadendo le considerazioni espresse al §4.1, si ritiene che anche per questa tipologia sarebbe conveniente e meno rischiosa una modalità di remunerazione a misura.

Dal punto di vista teorico e in termini ISO (vedi §3.1.3), la manutenzione perfettiva può impattare su una o più caratteristiche non funzionali dell’applicazione oggetto dell’intervento. Si può ad esempio voler migliorare le prestazioni, l’usabilità o la manutenibilità dell’applicazione in oggetto. Pertanto si potrebbe valutare quantitativamente l’intervento misurando il valore di tali caratteristiche prima e dopo l’intervento stesso. Si tratta, a ben vedere, di una generalizzazione rispetto al caso del paragrafo precedente, in cui l’unica caratteristica impattata era la portabilità. Per chiarire quanto detto, si riportano di seguito alcune situazioni tipiche, volutamente semplificate per fungere da esempio.

Caso 1: incremento di prestazioni
'''''''''''''''''''''''''''''''''

Una P.A. richiede un intervento di manutenzione per migliorare i tempi di risposta di un’applicazione. L’intervento non prevede sviluppo, modifica o cancellazione di funzionalità.

Come primo passo, l’amministrazione dovrà precisare i contenuti dell’intervento redigendo in termini quantitativi i requisiti di prestazione richiesti. A tale scopo potrebbero essere utili le metriche illustrate al §4.4.1.1.

L’amministrazione, inoltre, dovrà esplicitare il contesto in cui l’applicazione opera (piattaforma, risorse, eventuali middleware) e misurare, con le stesse metriche con cui ha espresso i requisiti, le prestazioni prima dell’intervento.

La differenza tra quest’ultima misura e il requisito espresso costituirà l’indicatore di risultato dell’intervento. Essa potrà servire come SLA, per l’imputazione di eventuali penali o il pagamento di quote sospese. Al fine di evitare contenziosi con il fornitore, si dovranno esplicitare nel contratto le modalità di misura, i ruoli e le responsabilità spettanti ai contraenti.

Giacché l’intervento aumenta una caratteristica di qualità dell’applicazione, e dunque il suo valore, esso potrà senz’altro essere considerato come investimento, e contabilizzato di conseguenza come CAPEX.

Anche in questo caso può essere d’interesse per l’amministrazione assicurarsi che l’intervento non abbia peggiorato altre caratteristiche dell’applicazione. Ciò potrebbe essere verificato con strumenti automatici (vedi paragrafi precedenti).

Caso 2: intervento sull’accessibilità
'''''''''''''''''''''''''''''''''''''

Una P.A. richiede un intervento di manutenzione che, senza modificare, sviluppare o cancellare funzionalità, renda un’applicazione conforme alla normativa sull’accessibilità (che è una sottocaratteristica dell’usabilità, vedi §4.4.2).

Una prima soluzione per valutare quantitativamente l’intervento, in termini di risultato, può derivare dall’esempio del §2.4.1.2. Qui di seguito si riporta la tabella che, per i 12 requisiti di accessibilità stabiliti dalla normativa, contengono gli elementi di conformità da verificare.

Tabella 45: checklist per accessibilità

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
| **Descrizione del requisito**                                                                                                                                                                                                                                                                                                                                                                             | **Punto di controllo**                                                                           | **Descrizione degli elementi del punto di controllo**                                                                                                                                                                                                                                                                  | \*\ *Conformità (S/N/NA)*\ \* |
+===========================================================================================================================================================================================================================================================================================================================================================================================================+==================================================================================================+========================================================================================================================================================================================================================================================================================================================+===============================+
| Req1 - Alternative testuali: fornire alternative testuali per qualsiasi contenuto di natura non testuale in modo che il testo predisposto come alternativa possa essere fruito e trasformato secondo le necessità degli utenti, come per esempio convertito in stampa a caratteri ingranditi, in stampa Braille, letto da una sintesi vocale, simboli o altra modalità di rappresentazione del contenuto. | 1.1 – Contenuti non testuali                                                                     | Tutti i contenuti non testuali presentano un’alternativa testuale equivalente.                                                                                                                                                                                                                                         |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | I controlli e gli elementi che raccolgono l’input dell’utente possiedono un nome esplicativo che ne descrive la finalità.                                                                                                                                                                                              |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | In presenza di audio, video, animazioni, è stata fornita un’alternativa testuale che ne contiene la descrizione sintetica.                                                                                                                                                                                             |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | Test ed esercizi che non possono essere compresi se presentati in versione testuale sono comunque corredati di una breve descrizione che ne specifichi il contenuto.                                                                                                                                                   |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | I contenuti non testuali che rappresentino specifiche esperienze sensoriali sono corredati di didascalie sintetiche che ne identifichino chiaramente lo scopo.                                                                                                                                                         |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | I CAPTCHA sono muniti di alternative testuali commisurate alle diverse tipologie di disabilità (captcha audio, captcha visivo, captcha semantico).                                                                                                                                                                     |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | I contenuti non testuali che rappresentino decorazioni, formattazioni, elementi invisibili, sono costruiti in modo tale da poter essere ignorati dalle tecnologie assistive.                                                                                                                                           |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
| Req2 - Contenuti audio, contenuti video, animazioni: fornire alternative testuali equivalenti per le informazioni veicolate da formati audio, formati video, formati contenenti immagini animate (animazioni), formati multisensoriali in genere.                                                                                                                                                         | 2.1 – Contenuti registrati presentati in formato solo audio, solo video o animazione senza audio | I contenuti multimediali (solo audio, solo video o animazione senza audio) che non rappresentino un’alternativa ad un contenuto testuale già esistente nel sito ed etichettato come tale, sono corredati della relativa alternativa testuale equivalente.                                                              |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 2.2 - Sottotitoli (per contenuti registrati)                                                     | I contenuti multisensoriali (video con audio, animazione con audio) che non rappresentino un’alternativa ad un contenuto testuale già esistente nel sito ed etichettato come tale, sono corredati di sottotitoli sincronizzati.                                                                                        |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 2.3 – Audio – descrizioni o trascrizioni descrittive (per contenuti registrati)                  | I contenuti registrati in formato video o animazioni che contengano informazioni o azioni necessarie all’erogazione di un servizio e non rappresentino un’alternativa ad un contenuto testuale già esistente nel sito ed etichettato come tale, sono corredati di descrizione alternativa in formato audio o testuale. |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 2.4 – Sottotitoli (per contenuti in diretta)                                                     | I contenuti multimediali presentati in diretta, ritenuti essenziali per l’erogazione di un servizio sono corredati di sottotitoli sincronizzati.                                                                                                                                                                       |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
| Req3 - Adattabile: creare contenuti che possano essere presentati in modalità differenti (ad esempio, con layout più semplici), senza perdita di informazioni o struttura.                                                                                                                                                                                                                                | 3.1 – Informazioni e correlazioni                                                                | Informazioni, struttura e correlazione tra distinti blocchi di contenuto presentati nelle pagine sono fruibili in qualsiasi situazione in quanto definite tramite tecnologie compatibili con l’accessibilità o resi disponibili in formato testuale.                                                                   |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 3.2 – Sequenze significative                                                                     | La sequenza di lettura dei contenuti, laddove necessaria per la comprensione degli stessi, è stata correttamente definita tramite tecnologie compatibili con l’accessibilità.                                                                                                                                          |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 3.3 – Informazioni e correlazioni                                                                | Le istruzioni fornite per comprendere ed operare sui contenuti non si basano esclusivamente sulle caratteristiche sensoriali dei loro componenti (forma, dimensione, posizione, orientamento o suono).                                                                                                                 |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
| Req4 - Distinguibile: rendere più semplice agli utenti la visione e l'ascolto dei contenuti, separando i contenuti in primo piano dallo sfondo.                                                                                                                                                                                                                                                           | 4.1 – Uso del colore                                                                             | Il colore non è l’unica modalità utilizzata per rappresentare informazioni, indicare azioni, richiedere risposte o come elemento di distinzione visiva.                                                                                                                                                                |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 4.2 – Controllo del sonoro                                                                       | Sonoro: sono previste funzionalità di avvio, messa in pausa o interruzione. In alternativa è prevista una modalità del controllo del volume indipendente da quella predefinita dal sistema.                                                                                                                            |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | L’audio avviato in automatico non dura più di tre secondi.                                                                                                                                                                                                                                                             |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 4.3 – Contrasto (minimo)                                                                         | I testi, compresi quelli rappresentati come immagine hanno un contrasto minimo tra primo piano e sfondo di almeno 4.5:1                                                                                                                                                                                                |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | Testi di almeno 18 punti normale o 14 punti grassetto, ritenuti di grandi dimensioni, anche quando rappresentati come immagine, hanno un contrasto minimo di 3:1                                                                                                                                                       |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 4.4 – ridimensionamento del testo                                                                | I testi sono ridimensionabili fino al 200% senza l’ausilio di tecnologie assistive e senza che vi sia perdita di contenuti e funzionalità.                                                                                                                                                                             |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 4.5 – Testo rappresentato come immagine                                                          | Sono evitati testi sotto forma di immagine ad eccezione di immagini personalizzabili, logotipi e casi in cui una particolare rappresentazione di un testo sia ritenuta essenziale per il tipo di informazione veicolata.                                                                                               |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
| Req5 - Accessibile da tastiera: rendere disponibili tutte le funzionalità anche tramite tastiera.                                                                                                                                                                                                                                                                                                         | 5.1 – Tastiera                                                                                   | Tutte le funzionalità sono utilizzabili tramite tastiera senza che vi sia obbligo di tempi specifici per le singole battute.                                                                                                                                                                                           |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | Le funzioni che richiedono un input dipendente dai movimenti dell’utente e che non possano essere ottenute in modo equivalente tramite input da tastiera sono utilizzabili tramite altre periferiche di input.                                                                                                         |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 5.2 – Nessun impedimento all'uso della tastiera                                                  | Tutti i componenti della pagina sono navigabili tramite tastiera.                                                                                                                                                                                                                                                      |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | L’utente è in grado di gestire il focus dei componenti della pagina tramite tastiera                                                                                                                                                                                                                                   |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | L’utente è informato esplicitamente sulle modalità di rilascio del focus quando non è sufficiente l’uso di normali tasti (freccia o tab).                                                                                                                                                                              |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
| Req6 - Adeguata disponibilità di tempo: fornire all'utente tempo sufficiente per leggere ed utilizzare i contenuti.                                                                                                                                                                                                                                                                                       | 6.1 – Regolazione tempi di esecuzione                                                            | Per i limiti di tempo inferiori a 20 ore, non essenziali per l’attività e che non riguardino eventi in tempo reale è soddisfatto almeno uno dei seguenti casi: (selezionare una delle seguenti opzioni)                                                                                                                |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | L’utente può rimuovere il limite di tempo prima che esso sia raggiunto.                                                                                                                                                                                                                                                |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | L’utente può regolare il limite di tempo prima che esso sia raggiunto estendendone la durata di almeno 10 volte.                                                                                                                                                                                                       |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | L’utente può prolungare il limite di tempo compiendo un’operazione fino ad un massimo di 10 volte .                                                                                                                                                                                                                    |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 6.2 – Pausa, stop, nascondi                                                                      | Per animazioni, immagini lampeggianti, in scorrimento o contenuti che si auto-aggiornano che non siano parte essenziale dell’attività, sono previsti meccanismi per la messa in pausa, interruzione e nascondimento.                                                                                                   |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | Gli aggiornamenti automatici, presentati in parallelo con altri contenuti, che non siano parte essenziale dell’attività, sono muniti di meccanismi per la messa in pausa, interruzione e nascondimento degli stessi.                                                                                                   |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
| Req7 - Crisi epilettiche: non sviluppare contenuti che possano causare crisi epilettiche.                                                                                                                                                                                                                                                                                                                 | 7.1 – Lampeggiamenti                                                                             | Le pagine non contengono elementi che lampeggino più di tre volte al secondo.                                                                                                                                                                                                                                          |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | L’eventuale lampeggiamento rispetta le soglie indicate nelle WCAG 2.0                                                                                                                                                                                                                                                  |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
| Req8 - Navigabile: fornire all'utente funzionalità di supporto per navigare, trovare contenuti e determinare la posizione nel sito e nelle pagine.                                                                                                                                                                                                                                                        | 8.1 – Salto di blocchi                                                                           | Sono fornite modalità per saltare blocchi di contenuto comuni a più pagine.                                                                                                                                                                                                                                            |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 8.2 – Titolo della pagina                                                                        | Le pagine possiedono titoli (<title>) esplicativi che ne descrivano argomento e finalità.                                                                                                                                                                                                                              |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 8.3 – Ordine del focus.3 –                                                                       | Gli oggetti ricevono il focus secondo un ordine che ne preservi il senso e l’operatività                                                                                                                                                                                                                               |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 8.4 – Scopo del collegamento (nel contesto)                                                      | Scopi e testi dei collegamenti sono chiaramente comprensibili sia se estrapolati dal contesto sia se letti in sinergia con i contenuti circostanti.                                                                                                                                                                    |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 8.5 – Differenti modalità                                                                        | Le pagine che non sono il risultato o la fase di un’azione sono identificate tramite diverse modalità                                                                                                                                                                                                                  |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 8.6 – Titoli ed etichette                                                                        | I contenuti sono organizzati logicamente rispettandone il corretto ordine sequenziale gerarchico tramite l’uso appropriato di titoli (<H[x]>).                                                                                                                                                                         |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 8.7 – Focus visibile                                                                             | Tutte le interfacce utente utilizzabili tramite tastiera possiedono funzioni che evidenzino chiaramente gli indicatori del focus (Active, Focus, Hover)                                                                                                                                                                |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
| Req9 - Leggibile: rendere leggibile e comprensibile il contenuto testuale.                                                                                                                                                                                                                                                                                                                                | 9.1 – Lingua della pagina                                                                        | La lingua della pagina è definita tramite tecnologie compatibili con l’accessibilità                                                                                                                                                                                                                                   |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 9.2 – Parti in lingua diversa da quella definita per la pagina                                   | Testi presentati in lingue diverse da quella indicata come principale sono correttamente definiti tramite gli attributi previsti dalle tecnologie compatibili con l’accessibilità.                                                                                                                                     |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
| Req10 - Prevedibile: creare pagine web che appaiano e che si comportino in maniera prevedibile.                                                                                                                                                                                                                                                                                                           | 10.1 – Al focus                                                                                  | Non vengono avviati automaticamente cambiamenti di contesto quando un qualsiasi componente riceve il focus.                                                                                                                                                                                                            |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 10.2 – All’input                                                                                 | I cambiamenti di contesto non sono automatici. In casi particolari in cui ciò non sia possibile l’utente è preventivamente avvisato.                                                                                                                                                                                   |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 10.3 – Navigazione costante                                                                      | I meccanismi di navigazione ripetuti su più pagine sono sempre presentati allo stesso modo a meno che l’utente non avvii un cambiamento.                                                                                                                                                                               |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 10.4 – Identificazione coerente                                                                  | I componenti che hanno stesse funzionalità sono identificati in modo uniforme.                                                                                                                                                                                                                                         |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
| Req11 - Assistenza nell'inserimento di dati e informazioni: aiutare l'utente ad evitare gli errori ed agevolarlo nella loro correzione.                                                                                                                                                                                                                                                                   | 11.1 – Identificazione di errori                                                                 | Gli errori rilevati automaticamente in fase di inserimento sono identificati chiaramente e descritti in modo esaustivo tramite testo.                                                                                                                                                                                  |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 11.2 – Etichette o istruzioni                                                                    | Sono fornite etichette o istruzioni per la corretta esecuzione di azioni/operazioni di input.                                                                                                                                                                                                                          |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 11.3 – Suggerimenti per gli errori                                                               | Per errori che è possibile correggere senza che siano pregiudicati sicurezza e finalità del contenuto, sono forniti suggerimenti all’utente.                                                                                                                                                                           |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 11.4 – Prevenzione degli errori (legali, finanziari, dati)                                       | Le pagine web che presentano funzionalità di gestione dati controllabili dall’utente, soddisfano almeno una delle seguenti condizioni (selezionare una delle seguenti opzioni):                                                                                                                                        |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | Reversibilità: le azioni/operazioni sono reversibili.                                                                                                                                                                                                                                                                  |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | Controllo: i dati inseriti dall'utente sono verificati ed è fornita la possibilità di correggere eventuali errori di inserimento.                                                                                                                                                                                      |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | Conferma: è disponibile una funzionalità per la revisione, conferma e correzione delle informazioni prima dell’invio definitivo.                                                                                                                                                                                       |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
| Req12 - Compatibile: garantire la massima compatibilità con i programmi utente e con le tecnologie assistive.                                                                                                                                                                                                                                                                                             | 12.1 – Analisi sintattica: parsing                                                               | I linguaggi di marcatura sono utilizzati in modo conforme alle specifiche previste dalla grammatica formale di riferimento.                                                                                                                                                                                            |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | Le pagine analizzate tramite il Markup Validation Service (W3C) risultano valide.                                                                                                                                                                                                                                      |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | I fogli di stile analizzati tramite il CSS Validation Service (W3C) risultano validi.                                                                                                                                                                                                                                  |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           | 12.2 – Name, Role, Value                                                                         | In tutti i componenti dell’interfaccia utente, name (descrizione) e role (scopo o funzionalità) sono definiti tramite tecnologie compatibili con l’accessibilità.                                                                                                                                                      |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                  | Stati proprietà e valori dei componenti dell’interfaccia possono essere impostati dall’utente; le notifiche sui cambi di stato di questi elementi sono rese disponibili ai programmi utente, tecnologie assistive incluse.                                                                                             |                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+

Ove l’amministrazione non consideri ugualmente importanti tutti i punti della checklist, potrà classificarli per priorità definendo opportuni pesi. Ad esempio, potrà stabilire che all’applicazione in esame non si applicano i requisiti 4 e 5, che il requisito 2 è il più importante e gli va assegnato un peso pari a 50, che al requisito 8 va assegnato un peso 10, che i restanti requisiti sono di pari rilevanza e a ciascuno di questi va assegnato un requisito pari a 5, come nella tabella seguente.

Tabella 46: valutazione di accessibilità

+---------------+----------+--------------------------+-------------------------------+
| **Requisito** | **Peso** | **Valutazione iniziale** | **Obiettivo dell’intervento** |
+===============+==========+==========================+===============================+
| Req1          | 5        | S                        | S                             |
+---------------+----------+--------------------------+-------------------------------+
| Req2          | 50       | N                        | S - MANDATORIO                |
+---------------+----------+--------------------------+-------------------------------+
| Req3          | 5        | N                        | S                             |
+---------------+----------+--------------------------+-------------------------------+
| Req4          | -        | -                        | -                             |
+---------------+----------+--------------------------+-------------------------------+
| Req5          | -        | -                        | -                             |
+---------------+----------+--------------------------+-------------------------------+
| Req6          | 5        | S                        | S                             |
+---------------+----------+--------------------------+-------------------------------+
| Req7          | 5        | S                        | S                             |
+---------------+----------+--------------------------+-------------------------------+
| Req8          | 10       | N                        | S - MANDATORIO                |
+---------------+----------+--------------------------+-------------------------------+
| Req9          | 5        | N                        | S                             |
+---------------+----------+--------------------------+-------------------------------+
| Req10         | 5        | N                        | S                             |
+---------------+----------+--------------------------+-------------------------------+
| Req11         | 5        | S                        | S                             |
+---------------+----------+--------------------------+-------------------------------+
| Req12         | 5        | S                        | S                             |
+---------------+----------+--------------------------+-------------------------------+
| Totale        | 100      | 25                       | 100                           |
+---------------+----------+--------------------------+-------------------------------+

Valutando la conformità dell’applicazione prima dell’intervento ai punti della checklist, l’amministrazione può ottenere una misura iniziale della caratteristica accessibilità, in questo caso pari a 25 (vedi tabella).

Ipotizzando che l’obiettivo dell’intervento sia ottenere una perfetta conformità alla checklist, o almeno, come obiettivo minimo accettabile, la conformità ai requisiti 2 e 8 più il mantenimento dei requisiti già conformi prima dell’intervento, la misura finale dovrà essere 100, con una soglia minima accettabile di 85.

Ove, al termine dell’intervento, non venga raggiunta la soglia minima di 85, potrà essere applicata una penale. Posizionamenti finali tra 85 e 100 potranno essere premiati con il pagamento di quote sospese proporzionali al risultato ottenuto.

In interventi per assicurare l’accessibilità di un insieme di applicazioni, iterando questo metodo si potrebbe quantificare, in termini di risultato e dunque di valore, l’intervento per ogni applicazione; in prospettiva, ciò consentirebbe di rapportare i risultati agli impegni erogati e definire dunque un modello di stima dei costi per successivi interventi dello stesso genere. Si rimanda al successivo paragrafo “conclusioni sulla manutenzione” per approfondimenti su questo punto.

Caso 3: intervento sulla manutenibilità
'''''''''''''''''''''''''''''''''''''''

Una P.A. richiede un intervento di manutenzione che, senza modificare, sviluppare o cancellare funzionalità, modifichi il codice sorgente di un’applicazione per aumentare la sua manutenibilità, ad esempio rendendolo più modulare.

Come primo passo, l’amministrazione dovrà precisare i contenuti dell’intervento redigendo in termini quantitativi i requisiti di manutenibilità richiesti. Requisiti dal testo vago e/o generico (es. “\ *Il codice sorgente dovrà essere reso più leggibile*\ ”) dovranno essere esplicitati in termini oggettivi e circostanziati.

A tale scopo potrebbero essere utili le metriche illustrate al §4.4.5, oppure strumenti di misura automatica, ad esempio basati sulle metriche CISQ-OMG (vedi §4.6).

Una volta scelta la metrica più opportuna, l’amministrazione potrà misurare la manutenibilità prima dell’intervento e fissare, usando la medesima metrica, l’obiettivo cui vuole giungere. La differenza tra le due misure quantifica, in termini di risultato, l’intervento richiesto. Essa potrà servire come SLA, per l’imputazione di eventuali penali o il pagamento di quote sospese. Per evitare contenziosi con il fornitore, si dovranno esplicitare nel contratto le modalità di misura, i ruoli e le responsabilità.

Giacché l’intervento aumenta una caratteristica di qualità dell’applicazione, e dunque il suo valore, esso potrà essere considerato come investimento, e contabilizzato di conseguenza come CAPEX.

Manutenzione perfettiva: conclusioni
''''''''''''''''''''''''''''''''''''

Si noti che nei tre casi presentati non sono stati forniti riferimenti di prezzo. Ciò perché al momento non esistono dati storici o studi condivisi che consentano di affermare, ad esempio, che per aumentare del 10% l’usabilità di un’applicazione si debba investire xxx euro.

In prospettiva, tuttavia, la proposta di costituire il repository di progetti pubblici (RPP, già citato al §6.2) potrebbe migliorare questa situazione, permettendo di effettuare correlazioni tra gli importi spesi e le misure del risultato nei vari progetti. Ciò consentirebbe, una volta raggiunta una dimensione sufficiente per trarre dal repository statistiche significative, di effettuare stime sui nuovi progetti e definire basi d’asta nel caso di messa a gara degli stessi.

AgID, per via del suo ruolo istituzionale e dei compiti che le vengono assegnati dal Piano Triennale, sembra il soggetto più indicato per gestire questo repository, di cui alcuni contenuti potrebbero essere fruibili in modalità open data anche alle aziende per meglio formulare le loro offerte alle procedure concorsuali pubbliche.

   ISO 20968: 2002 (MARK II, UK);

   ISO 24570: 2017 (NESMA, Olanda);

   ISO 20926: 2009 (IFPUG, USA);

   ISO/IEC 29881:2010 (FiSMA, Finlandia);

   ISO 19761: 2011 (COSMIC, Canada).

   Gli standard ISO 14143-1, 2, 3, 4, 5, 6 forniscono dettagli sui concetti funzionali e regole di applicazione.

.. raw:: html

   <div class="section footnotes">

--------------

#. 

   .. raw:: html

      <div id="fn1">

   È rappresentata la situazione al febbraio 2018.\ `↩ <#fnref1>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn2">

   Appalto Specifico.\ `↩ <#fnref2>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn3">

   L’art. 95 comma 10-bis del Codice degli appalti recita: “\ *La stazione appaltante, al fine di assicurare l’effettiva individuazione del miglior rapporto qualità/prezzo, valorizza gli elementi qualitativi dell’offerta e individua criteri tali da garantire un confronto concorrenziale effettivo sui profili tecnici. A tal fine la stazione appaltante stabilisce un tetto massimo per il punteggio economico entro il limite del 30 per cento*\ ” (disposizione introdotta dal `D.Lgs. 56/2017 <http://www.normattiva.it/uri-res/N2Ls?urn:nir:stato:decreto.legislativo:2017;56>`__ in vigore dal 20/5/2017); dunque al massimo il prezzo conta per il 30%.\ `↩ <#fnref3>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn4">

   Sostituito dalla dott.ssa Laura Tomassini come da comunicazione del Ministero della Giustizia del 1 febbraio 2018.\ `↩ <#fnref4>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn5">

   Sostituito a partire dal 12 giugno 2017 dal dott. Giampiero Mutinati, dietro richiesta della medesima società SQS.\ `↩ <#fnref5>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn6">

   Roberto Meli rappresenta anche il punto di vista dell’associazione Assintel e dell'associazione SiFPA.\ `↩ <#fnref6>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn7">

   Nella presente guida tecnica, con “valore” di un software deve intendersi il valore di mercato del software stesso, non il suo valore in assoluto (che è un concetto diverso, legato ad altri parametri, ad esempio l’importanza che il software riveste per i propri utenti).\ `↩ <#fnref7>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn8">

   Tra i vari standard disponibili, si è scelto di porre particolare attenzione agli standard ISO, sia per la loro oggettiva rilevanza e diffusione non solo in ambito ICT, sia in omogeneità con le precedenti linee guida AgID (si ricorda che il presente lavoro si declina come aggiornamento delle linee guida pregresse).\ `↩ <#fnref8>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn9">

   `http://www.dpo.it/eqfp/\\ <http://www.dpo.it/eqfp/\>`__ `↩ <#fnref9>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn10">

   Il documento è stato acquisito da AgID nell’ambito dell’istruttoria di un parere, reso ai sensi dell’art. 14bis del CAD, su una gara bandita da Consip per conto della RGS.\ `↩ <#fnref10>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn11">

   Con l’obiettivo, già citato, di migliorare la fruibilità del documento, tutti i termini sono stati tradotti in italiano. Tuttavia, per qualsiasi contenzioso fa fede la norma internazionale, che ufficialmente è in lingua inglese.\ `↩ <#fnref11>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn12">

   Si fa qui riferimento al ciclo di vita tradizionale “waterfall” di un software. Le definizioni sono comunque applicabili, con opportune modifiche, ad altri cicli di vita (es. iterativo/incrementale).\ `↩ <#fnref12>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn13">

   In questa modellizzazione non si considerano le attività di esercizio di un’applicazione software (OPS) in quanto si ritengono di natura non progettuale ma di servizio.\ `↩ <#fnref13>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn14">

   Si ricordano gli standard ISO che descrivono come applicare le misure di dimensionamento funzionale, alla data attuale:\ `↩ <#fnref14>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn15">

   Per completezza d’informazione, si segnala che IFPUG non ha validato la correttezza e validità degli algoritmi proposti da OMG. Al fine di porre a verifica la replicabilità delle esperienze di OMG, AgID ritiene utile condurre, nel prossimo futuro, sperimentazioni su parchi applicativi della pubblica amministrazione italiana, rendendo poi pubblici i risultati.\ `↩ <#fnref15>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn16">

   Come detto, tale norma è stata sostituita dalla ISO/IEC 25010:2011.\ `↩ <#fnref16>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn17">

   In questo studio viene usato il termine “metrica”, ma le entità esaminate possono essere declinate anche come indicatori.\ `↩ <#fnref17>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn18">

   In realtà la norma ISO parla più genericamente di “sistema”. Nel contesto di questo studio, come già detto, si ritiene opportuno focalizzare sulla valutazione/misurazione di software applicativo.\ `↩ <#fnref18>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn19">

   In realtà la norma ISO parla più genericamente di “sistema”. Nel contesto di questo studio, come già detto, ci si focalizza sulla valutazione/misurazione di software applicativo.\ `↩ <#fnref19>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn20">

   `http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.140-2.pdf\\ <http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.140-2.pdf\>`__ `↩ <#fnref20>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn21">

   `https://netforum.avectra.com/eweb/Shopping/Shopping.aspx?Site=ifpug&WebCode=Shopping&cart=0\\ <https://netforum.avectra.com/eweb/Shopping/Shopping.aspx?Site=ifpug&WebCode=Shopping&cart=0\>`__ `↩ <#fnref21>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn22">

   Si è qui deciso di mantenere la terminologia originaria CISQ, benché le definizioni CISQ siano mutuate dalle corrispondenti definizioni ISO 25010.\ `↩ <#fnref22>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn23">

   Per maggiori dettagli su queste caratteristiche, si rinvia al sito `http://it-cisq.org/standards/\\ <http://it-cisq.org/standards/\>`__ `↩ <#fnref23>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn24">

   (1.200 \* 1,4 + 650 \* 2,2 + 1.720 \* 1,7 + 2.400 \* 3,6 + 880 \* 0,9) / 6850 = 2,26\ `↩ <#fnref24>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn25">

   (1.200 \* 3,3 + 650 \* 2,6 + 1.720 \* 3 + 2.400 \* 3,9 + 880 \* 2) / 6850 = 3,20\ `↩ <#fnref25>`__

   .. raw:: html

      </div>

#. 

   .. raw:: html

      <div id="fn26">

   Si è qui tradotto con “rilascio” il termine originario “delivery”. Tuttavia, nel contesto della P.A. italiana, il servizio di manutenzione parte dopo la messa in esercizio del software, che in genere prevede il superamento positivo di un collaudo e l’accettazione da parte del cliente. Tale precisazione vale per tutte le tipologie di manutenzione illustrate in questo paragrafo.\ `↩ <#fnref26>`__

   .. raw:: html

      </div>

.. raw:: html

   </div>

.. |image4| image:: ./media/image5.png
.. |image5| image:: ./media/image6.png
.. |image6| image:: ./media/image7.png
