Che cos’è Docs Italia
=====================

Che cos’è
---------

Docs Italia è un servizio ideato dal `Team per la trasformazione digitale della Pubblica Amministrazione <https://teamdigitale.governo.it/>`__ in collaborazione con `AgID <http://www.agid.gov.it/>`__ ed è gestito da un team interdisciplinare di sviluppatori, designer e tech writer esperti nel documentare un progetto attraverso guide, linee guida, FAQ e documentazione tecnica e amministrativa. Insieme a `Forum Italia <http://forum.italia.it>`__ e GitHub Italia, è uno degli strumenti operativi per la trasformazione digitale dei servizi pubblici.

Al momento, Docs Italia contiene alcuni dei più importanti progetti pubblici del Paese, come ANPR (anagrafe nazionale), SPID (identità pubblica), PagoPA (sistemi di pagamento) e molti altri, visibili nella home page del sito. Altri si aggiungeranno progressivamente, sulla base delle richieste delle Pubbliche Amministrazioni che possono richiedere di utilizzare il servizio inviando un’email a: `contatti@docs.italia.it <mailto:contatti@docs.italia.it>`__.

Obiettivi
---------

Docs Italia nasce con l’obiettivo di cambiare il linguaggio con cui si comunicano e si gestiscono i progetti pubblici in Italia, creando strumenti di lavoro comuni a diverse culture professionali e in cui gli aspetti normativi e tecnici possano coesistere. In questo modo, si semplifica la vita di chi lavora ai progetti (funzionari, tecnici della Pubblica Amministrazione, fornitori della pubblica amministrazione), aumentando l’efficacia dei progetti pubblici e perseguendo una impostazione di *open government* che favorisca l’apertura, lo scambio di idee e la collaborazione.

Docs Italia permette di gestire la documentazione tecnica di un progetto (ad es. la documentazione di PagoPA), ma anche documenti amministrativi come il `Piano Triennale per l’informatica nella Pubblica Amministrazione <https://pianotriennale-ict.readthedocs.io>`__ e le linee guida (come le `Linee guida di design per i servizi web della PA <https://design-italia.readthedocs.io>`__).

La Figura 1 mostra l’attuale home page di Docs Italia.

+----------------------------------------+
| |image0|                               |
|                                        |
| Figura 1. La home page di Docs Italia. |
+----------------------------------------+

Caratteristiche
---------------

Docs Italia si ispira a cinque principi, funzionali a costruire un linguaggio comune di gestione dei progetti pubblici:

1. il primo è che oggi, in tutto il mondo, i documenti non sono più il prodotto di un individuo e di un ufficio, ma sono sempre di più il frutto di una collaborazione che prevede il contributo di diverse persone e diversi profili professionali, tecnici, economici e amministrativi;

2. il secondo è che la Pubblica Amministrazione, seguendo una filosofia di `open government <https://it.wikipedia.org/wiki/Open_government>`__, tende a incoraggiare il contributo della comunità e di punti di vista esterni;

3. il terzo è che la Pubblica Amministrazione ha bisogno di modalità comuni per gestire le informazioni relative a un progetto, dalle linee guida di indirizzo alla documentazione tecnica;

4. il quarto è che i documenti non sono un oggetto statico, scolpito nella pietra o stampato nella carta, ma evolvono nel tempo: poter tenere traccia di questa evoluzione offre diversi vantaggi;

5. il quinto è che i documenti vengono fruiti sempre più spesso su Internet, e in particolare su smartphone: la semplicità di lettura fa la differenza.

Nuove funzionalità
~~~~~~~~~~~~~~~~~~

-  Docs Italia sarà organizzato per publisher (l’ente o il Ministero che pubblica i documenti) e per progetti (ciascun progetto potrà avere diversi documenti).

-  Docs Italia avrà un motore di ricerca che permette di navigare tra i documenti. La funzione di ricerca diventa sempre più importante mano a mano che cresce la mole di testi pubblicati sulla piattaforma.

-  Un widget consentirà di pubblicare sul proprio sito web:

   -  l’elenco dei documenti appartenenti a uno specifico publisher (ad es. Ministero delle Finanze, MIUR)

   -  l’elenco dei documenti appartenenti a uno specifico progetto (ad es. ANPR)

   -  l’indice del documento

-  Attualmente è in corso di analisi lo sviluppo di una componente per `LibreOffice <https://www.libreoffice.org/>`__ che permetta l’esportazione e l’importazione di documenti in formato RST.

-  Docs Italia sarà ospitata all’URL `docs.italia.it <http://docs.italia.it>`__. Ciascun documento sarà raggiungibile all’indirizzo:

docs.italia.it/<publisher>/<progetto>/<nome-documento>.

La `roadmap di Docs Italia <https://trello.com/b/jQUgRzRe/docs-italiasviluppo>`__ è disponibile online, espressa attraverso una board di Trello.

Architettura dell’informazione
------------------------------

Pagina publisher
~~~~~~~~~~~~~~~~

Da aggiungere successivamente.

Pagina progetto
~~~~~~~~~~~~~~~

La Figura 2 mostra un esempio di pagina progetto. Vengono visualizzati tutti i documenti associati e una descrizione del progetto e dei suoi scopi.

+-----------------------------------------------+
| |Schermata 2017-11-13 alle 23.03.55.png|      |
|                                               |
| Figura 2. Una pagina progetto su Docs Italia. |
+-----------------------------------------------+

Pagina documento
~~~~~~~~~~~~~~~~

Ciascun documento ha le seguenti caratteristiche (vedi Figura 3):

1. È sempre possibile scegliere la versione del documento tramite un apposito pulsante;

2. L’utente può effettuare una ricerca specifica all’interno del documento;

3. L’indice nella barra laterale consente di passare rapidamente da una sezione all’altra;

4. È sempre possibile scaricare il documento in formato .epub e in formato .pdf;

5. Il pulsante “modifica su GitHub” permette di accedere al repository su GitHub dove è ospitato il documento e consente a chiunque di proporre delle modifiche al contenuto.

+--------------------------------+
| |image2|                       |
|                                |
| Figura 3. Una pagina documento |
+--------------------------------+

Oltre a queste caratteristiche,

-  L’ambiente di Docs Italia è *responsive*, ovvero consente una perfetta fruizione dei documenti su tutti i dispositivi, compreso lo smartphone (vedi Figura 4);

-  Le àncore in corrispondenza dei capitoli consentono di ottenere facilmente il link di un paragrafo (vedi Figura 5);

-  Le funzionalità dei box colorati e delle note permettono di segnalare informazioni importanti, esempi, casi di studio e interpretazioni del testo (vedi Figura 6).

+--------------------------------------------------------------+
| |image3|                                                     |
|                                                              |
| Figura 4. Ambiente responsive della piattaforma Docs Italia. |
+--------------------------------------------------------------+

+--------------------------------------------------+
| |image4|                                         |
|                                                  |
| Figura 5. Àncora in corrispondenza di un titolo. |
+--------------------------------------------------+

+---------------------------------------------------+
| |image5|                                          |
|                                                   |
| Figura 6. Box e note in una pagina del documento. |
+---------------------------------------------------+

La piattaforma
~~~~~~~~~~~~~~

-  La piattaforma di Docs Italia è basata sui progetti open source `Sphinx <http://sphinx-doc.org/>`__ e `Read the Docs <https://readthedocs.org/>`__. I documenti pubblicati sono redatti in `formato reStructuredText <http://docutils.sourceforge.net/rst.html>`__.

-  Docs Italia si presta a una ottimizzazione SEO, facilitando la ricerca dei documenti pubblici anche attraverso i motori di ricerca.

-  Docs Italia è integrato con `Forum Italia <http://forum.italia.it>`__ (a sua volta basato sul progetto open source `Discourse <https://discourse.org/>`__) per consentire di commentare i documenti.

Starter kit
===========

Prima di cominciare la lettura di questa guida, `scarica lo Starter kit <https://github.com/atorin/starter-kit-docs-italia>`__.

Per agevolare la creazione dei documenti, infatti, Docs Italia ha predisposto un kit contenente tutti i file necessari. Al suo interno, troverai:

-  Un **repository di configurazione**;

-  Un **repository di un documento**;

-  Le **istruzioni** per l’uso e la modifica dei file.

Puoi utilizzare il kit come riferimento per le procedure descritte qui di seguito. Apportando le opportune modifiche ai file, sarai in grado di pubblicare rapidamente i tuoi documenti su Docs Italia.

Come partecipare
================

Prerequisiti
------------

Docs Italia si basa su `GitHub <https://github.com/>`__ come strumento per pubblicare i documenti (e gestirne le versioni).

Per pubblicare un documento, è necessario avere:

1. Un **account utente su GitHub** (obbligatorio);

2. Un’\ **organizzazione su GitHub** (facoltativa).

Account utente su GitHub
~~~~~~~~~~~~~~~~~~~~~~~~

Se fai parte o lavori per un Ente pubblico e vuoi pubblicare i tuoi documenti su Docs Italia, hai bisogno prima di tutto di un account su GitHub. La registrazione è gratuita e può essere completata seguendo le `istruzioni nella pagina ufficiale <https://help.github.com/articles/signing-up-for-a-new-github-account/>`__.

L’account su GitHub consente l’identificazione dell’utente e permette di effettuare tutte le operazioni in maniera sicura e tracciabile.

Organizzazione su GitHub
~~~~~~~~~~~~~~~~~~~~~~~~

L’Ente pubblico può essere associato a un’\ `organizzazione su GitHub <https://github.com/blog/674-introducing-organizations>`__, o può decidere di `crearne una <https://github.com/organizations/new>`__. Un’organizzazione è un insieme di repository gestiti da più utenti GitHub che collaborano a progetti comuni.

L’organizzazione rappresenta una modalità efficiente di raggruppare tutti i progetti digitali di un Ente pubblico. Offre, inoltre, alcuni vantaggi nella gestione dei permessi degli utenti e opzioni di sicurezza e amministrazione avanzate. Anche l’account organizzazione è gratuito e permette un numero illimitato di repository e collaboratori.

La Figura 7 mostra la pagina dell’organizzazione Developers Italia su GitHub. È possibile notare il numero di repository aperti, le persone che collaborano con l’organizzazione e i team.

+---------------------------------------------------------+
| |image6|                                                |
|                                                         |
| Figura 7. L’organizzazione Developers Italia su GitHub. |
+---------------------------------------------------------+

**Se il mio Ente non ha un’organizzazione su GitHub...**

Avere un account di organizzazione non è obbligatorio per poter pubblicare i tuoi documenti su Docs Italia, anche se è fortemente consigliato. Agli Enti che non hanno e non possono creare un’organizzazione su GitHub, **Docs Italia mette a disposizione gratuitamente uno spazio su GitHub Italia** dove ospitare i documenti.

Conoscenza di base su Git
~~~~~~~~~~~~~~~~~~~~~~~~~

Docs Italia usa il `version control system <https://it.wikipedia.org/wiki/Controllo_versione>`__ di `Git <https://git-scm.com/>`__, che permette di gestire le diverse versioni di un documento. La pubblicazione su Docs Italia richiede una conoscenza di base di Git e di alcuni termini collegati. Consulta il `Glossario minimo <#glossario-minimo>`__ in Appendice.

Come pubblicare un documento
----------------------------

La pubblicazione di un documento su Docs Italia avviene secondo le seguenti fasi:

1. Procedure di autorizzazione iniziale;

2. Inizializzazione dell’account;

3. Caricamento e modifica dei file nel repository di configurazione;

4. Caricamento e modifica dei file nel repository del documento.

I primi due punti (autorizzazione e inizializzazione) sono richiesti soltanto al primo accesso a Docs Italia. Il caricamento e la modifica dei file contenuti nei repository di configurazione e di documento rientrano, invece, in un processo iterativo, che può essere svolto anche in maniera collaborativa.

Procedure di autorizzazione e di inizializzazione
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Le procedure di autorizzazione e di inizializzazione sono **diverse per l’account utente e l’account organizzazione**. In entrambi i casi, però, tali procedure servono a verificare le credenziali dell’utente

**Opzione 1. Account organizzazione**

L’Ente ha un’organizzazione su GitHub e la documentazione viene ospitata presso l’account dell’organizzazione.

1. Un amministratore dell’account organizzazione invia una richiesta di autorizzazione alla pubblicazione su Docs Italia, tramite l’indirizzo email `contatti@docs.italia.it <mailto:contatti@docs.italia.it>`__.

2. Gli amministratori di Docs Italia, effettuate le opportune verifiche, autorizzano l’organizzazione alla pubblicazione.

3. Un amministratore dell’account organizzazione crea un apposito repository di configurazione (che serve a creare le pagine progetto e i documenti). `Maggiori informazioni sul repository di configurazione <#repository-di-configurazione>`__ sono disponibili nel capitolo dedicato alla pubblicazione. Un esempio di repository di configurazione si trova nello `Starter kit <#starter-kit>`__ fornito.

4. Un amministratore dell’account organizzazione crea un repository per il documento. Il nome del repository deve rispettare le `convenzioni sui nomi di Docs Italia <#nome-del-repository-del-documento>`__. Successivamente, l’utente può caricare i file secondo le modalità indicate nella sezione `Repository del documento <#repository-del-documento>`__. Un esempio completo di repository del documento è contenuto nello `Starter kit <#starter-kit>`__.

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Esempio. Processo di autorizzazione per organizzazioni GitHub**                                                                                                          |
|                                                                                                                                                                            |
| Il Ministero dell’Interno vuole pubblicare su Docs Italia un documento chiamato “Modalità di subentro”, relativo al progetto ANPR.                                         |
|                                                                                                                                                                            |
| Il Ministero dell’Interno ha un’organizzazione su GitHub, la cui amministratrice è Giulia Rossi.                                                                           |
|                                                                                                                                                                            |
| Giulia Rossi invia la richiesta di autorizzazione alla pubblicazione su Docs Italia, e la sua richiesta viene approvata.                                                   |
|                                                                                                                                                                            |
| Giulia Rossi crea, quindi, un repository di configurazione presso l’organizzazione GitHub del Ministero dell’Interno.                                                      |
|                                                                                                                                                                            |
| Giulia Rossi crea, infine, un repository del documento presso l’organizzazione GitHub del Ministero dell’Interno, dove inserirà tutti i file relativi alla documentazione. |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

**Opzione 2. Account utente**

L’Ente non ha un’organizzazione su GitHub e la documentazione viene ospitata presso l’account di Docs Italia.

1. L’utente invia una richiesta di autorizzazione alla pubblicazione su Docs Italia, tramite l’indirizzo email `contatti@docs.italia.it <mailto:contatti@docs.italia.it>`__.

2. Gli amministratori di Docs Italia, effettuate le opportune verifiche, autorizzano l’utente alla pubblicazione.

3. Il repository di configurazione, necessario a pubblicare le pagine del progetto e i documenti, è già presente nell’account GitHub di Docs Italia. In questo caso, l’inserimento delle informazioni relative al publisher e all’eventuale progetto sono a carico degli amministratori di Docs Italia.

4. Gli amministratori di Docs Italia creano un repository per il documento e concedono all’utente i privilegi di scrittura.

+-----------------------------------------------------------------------------------------------------------------+
| **Nota.**                                                                                                       |
|                                                                                                                 |
| Per l’account utente, tale procedura dovrà essere ripetuta per ciascun nuovo documento inserito su Docs Italia. |
+-----------------------------------------------------------------------------------------------------------------+

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Esempio. Processo di autorizzazione per utenti GitHub**                                                                                                                                                                                                        |
|                                                                                                                                                                                                                                                                  |
| Mario Bianchi, il Presidente della Commissione Parlamentare XX, vuole pubblicare su Docs Italia un documento chiamato “Relazione sull’Informatica nella Pubblica Amministrazione”.                                                                               |
|                                                                                                                                                                                                                                                                  |
| La Commissione Parlamentare XX non ha un’organizzazione su GitHub, ma Mario Bianchi ha un proprio account utente.                                                                                                                                                |
|                                                                                                                                                                                                                                                                  |
| Mario Bianchi invia la richiesta di autorizzazione alla pubblicazione su Docs Italia, e la sua richiesta viene approvata.                                                                                                                                        |
|                                                                                                                                                                                                                                                                  |
| Gli amministratori di Docs Italia inseriscono nel repository di configurazione presso l’organizzazione GitHub Italia, tutte le informazioni relative alla Commissione Parlamentare XX e alla relativa Relazione.                                                 |
|                                                                                                                                                                                                                                                                  |
| Gli amministratori di Docs Italia creano, infine, un repository del documento presso l’organizzazione GitHub Italia, concedendo i privilegi di scrittura a Mario Bianchi. In questo modo, Mario Bianchi potrà caricare nel repository la propria documentazione. |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Nome del repository del documento
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Nel caso sia tua responsabilità creare il `repository del documento <#repository-del-documento>`__, scegli un nome con questo formato: **nomeprogetto-nomedocumento-docs**.

Per esempio, un documento dal titolo “Istruzioni per il cambio di residenza” all’interno del progetto ANPR potrebbe essere ospitato nel repository **anpr-cambioresidenza-docs**.

Il nome deve sempre finire con **-docs** per segnalare che il repository contiene della documentazione.

Passi successivi
~~~~~~~~~~~~~~~~

Dopo aver creato i repository, è possibile caricare i file per generare la documentazione. Le procedure sono descritte nel capitolo `Pubblicare un documento <#pubblicare-un-documento>`__.

Amministratori di Docs Italia e assistenza
------------------------------------------

Docs Italia ha dei maintainer con dei privilegi di amministrazione che permettono loro qualsiasi intervento all’interno della piattaforma. Un maintainer di Docs Italia può, per esempio, gestire gli utenti e rimuovere dei documenti già pubblicati.

Tuttavia, nel caso in cui siano chiamati a supportare la creazione di un documento ospitato in un repository di un’organizzazione GitHub, i maintainer devono farsi autorizzare dagli amministratori del repository specifico.

Le attività di pubblicazione utilizzando GitHub e Docs Italia sono a carico dell’organizzazione o dell’utente. In caso di problemi, è possibile chiedere supporto al **servizio assistenza di Docs Italia** all’indirizzo: `contatti@docs.italia.it <mailto:contatti@docs.italia.it>`__.

Scrivere un documento
=====================

Il formato reStructuredText (RST)
---------------------------------

I testi di partenza per la pubblicazione su Docs Italia devono essere in `formato reStructuredText <https://it.wikipedia.org/wiki/ReStructuredText>`__ (di seguito anche .rst o RST). Si tratta di file di testo redatti secondo `specifiche regole sintattiche <http://docutils.sourceforge.net/rst.html>`__. La formattazione è ottenuta tramite speciali combinazioni di caratteri, che vengono interpretate da Docs Italia durante la creazione delle pagine.

L’esempio nella Tabella 1 illustra come è possibile indicare il titolo del documento e una sezione, nonché come ottenere testo in grassetto e in corsivo. Consulta una `guida rapida alla sintassi RST <http://docutils.sourceforge.net/docs/user/rst/quickref.html>`__, oppure la `lista completa delle specifiche del linguaggio <http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html>`__.

Tabella 1. Confronto fra testo RST e testo interpretato.

+------------------------------+-----------------------------+
| **Testo in formato RST**     | **Testo interpretato**      |
+==============================+=============================+
| \***********************\*   | **Il titolo del documento** |
|                              |                             |
| Il titolo del documento      | Lorem ipsum…                |
|                              |                             |
| \***********************\*   | **Una sezione**             |
|                              |                             |
| Lorem ipsum…                 | Una frase **in grassetto**. |
|                              |                             |
| Una sezione                  | Una frase *in corsivo*.     |
|                              |                             |
| ==============               |                             |
|                              |                             |
| Una frase \**in grassetto**. |                             |
|                              |                             |
| Una frase \*in corsivo*.     |                             |
+------------------------------+-----------------------------+

Strumenti utili
---------------

Editor di testo
~~~~~~~~~~~~~~~

Per la creazione e la modifica dei file RST è sufficiente un editor di testo. In linea di principio, qualsiasi editor può essere usato, anche se alcuni programmi risultano più efficaci di altri. Ecco alcuni suggerimenti.

**Atom**

`Atom <https://atom.io/>`__ è un editor di testo avanzato, open source e sviluppato da GitHub, che permette la creazione e modifica, fra gli altri, di documenti in formato .rst. Atom consente di evidenziare adeguatamente il markup RST.

Questo editor è disponibile per varie piattaforme: Linux, Windows, MacOS.

**Notepad++**

`Notepad++ <https://notepad-plus-plus.org/>`__ è un editor di testo open source disponibile per il sistema operativo Windows. Come Atom, permette la creazione e modifica di documenti in formato .rst con visualizzazione del linguaggio di markup RST.

**Online Editor**

Oltre agli editor stand alone, è disponibile anche il seguente editor online `rst.ninjs.org <http://rst.ninjs.org/>`__ che permette di creare, modificare e visualizzare istantaneamente documenti in formato .rst secondo la logica WYSIWYG (What You See Is What You Get).

**Tabelle .rst**

Per realizzare le tabelle in formato .rst è possibile utilizzare un `editor di tabelle online <http://truben.no/table/>`__.

Convertitore di testi: pandoc
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`pandoc <https://pandoc.org/>`__ è un programma da linea di comando che permette di convertire documenti in formato DOCX e ODT verso diversi `formati di markup <https://it.wikipedia.org/wiki/Linguaggio_di_markup>`__, incluso il formato .rst.

Questo programma permette di migrare su Docs Italia la documentazione prodotta in altri formati, limitando l’intervento manuale. Le operazioni necessarie e i possibili problemi sono descritti nella sezione `Migrazione su Docs Italia di documentazione esistente <#migrazione-su-docs-italia-di-documentazione-esistente>`__.

Per l’installazione del convertitore, puoi fare riferimento alla `pagina ufficiale <https://pandoc.org/installing.html>`__.

Creazione di documenti in formato RST
-------------------------------------

Il primo aspetto rilevante per scrivere una documentazione efficace è `adottare il punto di vista degli utenti che la useranno <https://gdstechnology.blog.gov.uk/2016/10/28/writing-documentation-for-developers/>`__, in questo caso in particolare funzionari e tecnici della Pubblica Amministrazione e dei suoi fornitori. Scrivi il tuo testo seguendo i suggerimenti sulla struttura e sul linguaggio illustrati nella style guide in `Appendice <#appendice-2.-guida-di-stile>`__. Puoi includere nel tuo documento titoli, tabelle, immagini e link esterni, utilizzando la sintassi opportuna.

Il contenuto del tuo testo può essere diviso in vari file .rst per facilitare l’organizzazione e la lettura. Tale divisione può avvenire tipicamente a livello di capitolo o di sezione (vedi anche `Struttura del repository <#struttura-del-repository>`__). Docs Italia combinerà insieme i file per creare l’intero documento, rispettando i link interni e la struttura.

+-----------------------------------------------------------------------------------------------+
| **Nota.**                                                                                     |
|                                                                                               |
| File separati diventeranno pagine HTML separate, facilitando la lettura da parte dell’utente. |
+-----------------------------------------------------------------------------------------------+

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Procedura.**                                                                                                                                                                  |
|                                                                                                                                                                                 |
| -  Scrivi il testo utilizzando il tuo editor preferito o `uno di quelli suggeriti da noi <#editor-di-testo>`__. Utilizza la sintassi RST per titoli, sottotitoli, liste e link. |
|                                                                                                                                                                                 |
| -  Salva il tuo file in formato .rst. In alcuni editor, specie su Windows, potrebbe essere necessario selezionare “Tutti i file” e aggiungere l’estensione manualmente.         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Migrazione su Docs Italia di documentazione esistente
-----------------------------------------------------

Nel caso in cui si abbiano già dei documenti di partenza (per esempio, in formato DOCX o PDF), questi devono essere convertiti in RST per poter essere pubblicati su Docs Italia. La conversione è in parte automatica ma necessita di una revisione manuale.

Conversione con pandoc
~~~~~~~~~~~~~~~~~~~~~~

Lo strumento di conversione principale verso RST è `pandoc <https://pandoc.org/>`__, uno strumento gratuito open-source.

+---------------------------------------------------------------------+
| **Nota.**                                                           |
|                                                                     |
| -  pandoc accetta documenti in formato DOCX, ma non in formato DOC. |
|                                                                     |
| -  pandoc non accetta documenti in formato PDF.                     |
+---------------------------------------------------------------------+

+-----------------------------------------------------------------------------------------+
| **Procedura. Conversione di un documento**                                              |
|                                                                                         |
| -  Se il documento di partenza è un PDF, è necessaria una prima conversione verso DOCX. |
|                                                                                         |
|    -  In Adobe Acrobat, seleziona File -> Export to -> Microsoft Word -> Word Document. |
|                                                                                         |
|    -  Scegli il nome del file e clicca su Save.                                         |
|                                                                                         |
| -  Da linea di comando, esegui                                                          |
|                                                                                         |
| pandoc <percorso/documento> -t rst -o output.rst                                        |
|                                                                                         |
| dove <percorso/documento> è il percorso al documento in formato DOCX.                   |
|                                                                                         |
| -  Controlla la conversione automatica ed esegui una revisione manuale del testo        |
+-----------------------------------------------------------------------------------------+

Supporto alla conversione
~~~~~~~~~~~~~~~~~~~~~~~~~

Oltre al processo di conversione illustrato di seguito, Docs Italia mette a disposizione un supporto alla conversione gratuito. L’utente può inviare un’email all’indirizzo `contatti@docs.italia.it <mailto:contatti@docs.italia.it>`__ con i documenti da convertire in allegato. Docs Italia provvederà a rimandare un documento RST corretto e sintatticamente valido. Rimane però responsabilità dell’utente verificare che i contenuti siano corretti.

Revisione dei contenuti e correzione degli errori
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

La revisione del testo è necessaria perché la conversione automatica può presentare degli errori di sintassi. Talvolta, le tabelle costituiscono un elemento problematico, specie quelle con struttura non regolare (ad es., presenza di celle multiple o tabelle annidate).

Per correggere gli errori, è necessaria una **revisione manuale del file** utilizzando uno degli editor di documenti RST già presentati. Alcuni editor consentono di visualizzare un’anteprima automatica delle modifiche al testo (consulta la sezione `Editor di testo <#editor-di-testo>`__). Correggi uno a uno gli errori di formattazione che si presentano, assicurandoti di rispettare la `sintassi dei documenti .rst <http://docutils.sourceforge.net/docs/user/rst/quickref.html>`__.

Eliminati gli errori di sintassi, è necessario uniformare il documento allo `stile di Docs Italia <https://design-italia.readthedocs.io/it/stable/>`__. Consulta la `Guida di stile contenuta nell’Appendice 2 <#_9wmw4pl7p9dy>`__ per maggiori informazioni.

Pubblicare un documento
=======================

Dopo aver scritto la documentazione in formato RST, è possibile avviare la fase di pubblicazione.

In questo capitolo vengono forniti alcuni chiarimenti sul repository di configurazione, sul repository del documento e sul backend di Docs Italia.

Repository di configurazione
----------------------------

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Nota.**                                                                                                                                                                                                                                              |
|                                                                                                                                                                                                                                                        |
| Questa sezione è riservata ai publisher che pubblicano documenti tramite la propria organizzazione. Se utilizzi un account utente, invece, le operazioni descritte qui verranno effettuate per tuo conto da parte degli amministratori di Docs Italia. |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Il repository di configurazione contiene le informazioni (metadati) relative al publisher, ai progetti e ai documenti correlati che appaiono in vari punti all’interno delle pagine su Docs Italia.

Puoi modificare i file nel repository di configurazione presente nello Starter kit come descritto qui sotto. Successivamente, dovrai **caricare i file sul repository remoto** creato in precedenza (vedi `Come pubblicare un documento <#come-pubblicare-un-documento>`__) usando `una delle due procedure descritte in Appendice <#procedure-di-caricamento-sul-repository-remoto>`__.

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Esempio. Repository di configurazione di prova**                                                                                                                    |
|                                                                                                                                                                       |
| Lo `Starter kit <#starter-kit>`__ contiene un esempio di repository di configurazione. Consulta le istruzioni contenute nel kit per conoscere come modificare i file. |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Contenuto del repository
~~~~~~~~~~~~~~~~~~~~~~~~

Il repository di configurazione contiene due file principali:

1. **publisher_settings.yml**, per i metadati relativi al publisher;

2. **projects_settings.yml**, per i metadati relativi ai progetti.

In questi file vengono specificati, per esempio, quali progetti appartengono al publisher e quali repository del documento appartengono a un determinato progetto. In aggiunta, nel repository di configurazione possono essere inclusi i loghi del publisher o dei progetti.

Oltre ai metadati liberamente modificabili, esiste un **set di tag tratti da un vocabolario controllato**, condiviso fra Docs Italia e Forum Italia. Tramite questi tag (almeno 5 per ciascun publisher o progetto) si stabilisce un collegamento fra i contenuti di Docs Italia e gli argomenti nel Forum, permettendo agli utenti di trovare più rapidamente quello che cercano.

Le Tabelle 2 e 3 illustrano alcuni dei possibili metadati che è possibile specificare nei file di configurazione. Gli esempi associati mostrano come formattare i file di configurazione. Per maggiori informazioni è possibile consultare le istruzioni allegate allo `Starter kit <#starter-kit>`__.

Metadati del publisher
~~~~~~~~~~~~~~~~~~~~~~

Tabella 2. Alcuni dei metadati associati al publisher.

+-------------------------+------------------------------------------------------------------------------+
| **Parametro**           | **Descrizione**                                                              |
+=========================+==============================================================================+
| name                    | Il nome per esteso dell’Ente associato al publisher                          |
+-------------------------+------------------------------------------------------------------------------+
| short-name              | Il nome abbreviato dell’Ente associato al publisher o l’acronimo (opzionale) |
+-------------------------+------------------------------------------------------------------------------+
| motto                   | Il motto o una breve frase che contraddistingue l’Ente (opzionale)           |
+-------------------------+------------------------------------------------------------------------------+
| description             | Una descrizione estesa delle funzioni e degli scopi dell’Ente                |
+-------------------------+------------------------------------------------------------------------------+
| logo                    | L’URL del logo (può essere contenuto nel repository di configurazione)       |
+-------------------------+------------------------------------------------------------------------------+
| website                 | L’URL del sito dell’Ente (opzionale)                                         |
+-------------------------+------------------------------------------------------------------------------+
| address                 | L’indirizzo della sede dell’Ente (opzionale)                                 |
+-------------------------+------------------------------------------------------------------------------+
| github_organization_url | L’URL del repository dell’organizzazione                                     |
+-------------------------+------------------------------------------------------------------------------+

+-------------------------------------------------------------------+
| **Esempio. File publisher_settings.yml tratto dallo Starter kit** |
|                                                                   |
| publisher:                                                        |
|                                                                   |
| name: Ministero della Documentazione Pubblica                     |
|                                                                   |
| short-name: Min. Doc. Pub.                                        |
|                                                                   |
| description: \|                                                   |
|                                                                   |
| Lorem ipsum dolor sit amet, consectetur                           |
|                                                                   |
| adipisicing elit, sed do eiusmod tempor                           |
|                                                                   |
| incididunt ut labore et dolore magna aliqua.                      |
|                                                                   |
| Ut enim ad minim veniam, quis nostrud                             |
|                                                                   |
| exercitation ullamco laboris nisi ut                              |
|                                                                   |
| aliquip ex ea commodo consequat.                                  |
|                                                                   |
| Duis aute irure dolor in reprehenderit in                         |
|                                                                   |
| voluptate velit esse cillum dolore eu                             |
|                                                                   |
| fugiat nulla pariatur. Excepteur sint                             |
|                                                                   |
| occaecat cupidatat non proident, sunt in                          |
|                                                                   |
| culpa qui officia deserunt mollit anim id                         |
|                                                                   |
| est laborum.                                                      |
|                                                                   |
| website: www.ministerodocumentazione.gov.it                       |
|                                                                   |
| github_organization_url: github.com/organization_name             |
|                                                                   |
| tags:                                                             |
|                                                                   |
| - documents                                                       |
|                                                                   |
| - public                                                          |
|                                                                   |
| - amazing publisher                                               |
|                                                                   |
| assets:                                                           |
|                                                                   |
| logo: assets/images/logo.svg                                      |
+-------------------------------------------------------------------+

Metadati dei progetti
~~~~~~~~~~~~~~~~~~~~~

Tabella 3. Alcuni dei metadati associati a ciascun progetto.

+---------------+------------------------------------------------------------------------------------------------------------------+
| **Parametro** | **Descrizione**                                                                                                  |
+===============+==================================================================================================================+
| title         | Il nome per esteso del progetto                                                                                  |
+---------------+------------------------------------------------------------------------------------------------------------------+
| short-title   | Il nome abbreviato del progetto o l’acronimo (opzionale)                                                         |
+---------------+------------------------------------------------------------------------------------------------------------------+
| description   | Una descrizione estesa delle funzioni e degli scopi del progetto                                                 |
+---------------+------------------------------------------------------------------------------------------------------------------+
| logo          | L’URL del logo (può essere contenuto nel repository di configurazione)                                           |
+---------------+------------------------------------------------------------------------------------------------------------------+
| website       | L’URL del sito del progetto (opzionale)                                                                          |
+---------------+------------------------------------------------------------------------------------------------------------------+
| start-date    | La data di inizio del progetto (opzionale)                                                                       |
+---------------+------------------------------------------------------------------------------------------------------------------+
| end-date      | La data di fine del progetto (opzionale)                                                                         |
+---------------+------------------------------------------------------------------------------------------------------------------+
| documents     | La lista dei documenti collegati al progetto, identificati tramite l’URL del repository del documento associato. |
|               |                                                                                                                  |
|               | Per ciascun documento, devono essere specificati:                                                                |
|               |                                                                                                                  |
|               | -  title: il titolo del documento;                                                                               |
|               |                                                                                                                  |
|               | -  repository: il nome del repository che contiene il documento                                                  |
+---------------+------------------------------------------------------------------------------------------------------------------+

+-----------------------------------------------------------------+
| **Esempio. File projects_setting.yml tratto dallo Starter kit** |
|                                                                 |
| projects:                                                       |
|                                                                 |
| - title: Progetto Documentato Pubblicamente                     |
|                                                                 |
| short-name: PDP                                                 |
|                                                                 |
| description: \|                                                 |
|                                                                 |
| Lorem ipsum dolor sit amet, consectetur                         |
|                                                                 |
| adipisicing elit, sed do eiusmod tempor                         |
|                                                                 |
| incididunt ut labore et dolore magna aliqua.                    |
|                                                                 |
| Ut enim ad minim veniam, quis nostrud                           |
|                                                                 |
| exercitation ullamco laboris nisi ut                            |
|                                                                 |
| aliquip ex ea commodo consequat.                                |
|                                                                 |
| Duis aute irure dolor in reprehenderit in                       |
|                                                                 |
| voluptate velit esse cillum dolore eu                           |
|                                                                 |
| fugiat nulla pariatur. Excepteur sint                           |
|                                                                 |
| occaecat cupidatat non proident, sunt in                        |
|                                                                 |
| culpa qui officia deserunt mollit anim id                       |
|                                                                 |
| est laborum.                                                    |
|                                                                 |
| website: progetto.ministerodocumentazione.gov.it                |
|                                                                 |
| tags:                                                           |
|                                                                 |
| - digital                                                       |
|                                                                 |
| - citizenship                                                   |
|                                                                 |
| - amazing project                                               |
|                                                                 |
| documents:                                                      |
|                                                                 |
| - title: Documento del progetto                                 |
|                                                                 |
| repository: project-document-doc                                |
|                                                                 |
| - title: Un altro documento del progetto                        |
|                                                                 |
| repository: another-project-document-doc                        |
+-----------------------------------------------------------------+

Repository del documento
------------------------

Docs Italia genera automaticamente la pagina del documento e il relativo URL alla creazione del repository. **Se il repository del documento è vuoto, tuttavia, la pagina associata risulterà vuota** e verrà visualizzato il messaggio “Documento in fase di creazione”. La pagina del documento verrà creata automaticamente non appena l’utente caricherà nel repository tutti i file necessari alla compilazione, come descritto qui di seguito.

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Esempio. Repository del documento di prova**                                                                                                                    |
|                                                                                                                                                                   |
| Lo `Starter kit <#starter-kit>`__ contiene un esempio di repository del documento. Consulta le istruzioni contenute nel kit per conoscere come modificare i file. |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Prima di pubblicare il documento su Docs Italia, l’utente deve:

1. Modificare il file README.md, descrivendo il contenuto del repository;

2. Modificare il file index.rst e la cartella \_docs, inserendo i file della documentazione;

3. Modificare il file conf.py con le informazioni sul documento;

4. Modificare il file LICENSE;

5. Modificare il file document_settings.yml.

Consulta le sezioni seguenti per maggiori informazioni su come modificare questi file.

Struttura del repository
~~~~~~~~~~~~~~~~~~~~~~~~

Lo `Starter kit <#_j9gyyh2rj92t>`__ suggerisce l’uso di una struttura del repository del documento di questo tipo:

+---------------------------------------+
| **Esempio. Struttura del repository** |
|                                       |
| .                                     |
|                                       |
| +-- README.md                         |
|                                       |
| +-- index.rst                         |
|                                       |
| +-- \_docs/                           |
|                                       |
| \| +-- \_img/                         |
|                                       |
| \| \| +-- cap1_img1.jpg               |
|                                       |
| \| \| +-- cap2_img1.jpg               |
|                                       |
| \| \| ...                             |
|                                       |
| \| +-- cap1.rst                       |
|                                       |
| \| +-- cap2.rst                       |
|                                       |
| \| …                                  |
|                                       |
| +-- conf.py                           |
|                                       |
| +-- LICENSE                           |
|                                       |
| +-- AUTHORS                           |
|                                       |
| +-- requirements.txt                  |
|                                       |
| +-- document_settings.yml             |
+---------------------------------------+

Il repository dovrà comprendere, come requisito minimo:

1. Un file **README.md**, che serve da homepage del repository su GitHub e in cui viene descritto il contenuto del repository stesso.

2. Un file **index.rst**, che corrisponderà alla pagina principale del sito della documentazione.

3. Una cartella **\_docs**, che contiene tutti i file .rst ed eventuali immagini relativi alla documentazione.

4. Un file **conf.py**, che specifica i metadati necessari alla compilazione della documentazione.

5. Un file **requirements.txt**, necessario alla compilazione e che non necessita di essere modificato.

6. I file **LICENSE** e **AUTHORS**, che specificano la licenza d’uso associata al repository e l’attribuzione dei diritti d’autore.

7. Un file **document_settings.yml**, che specifica i metadati associati al documento.

File README.md
~~~~~~~~~~~~~~

Il file README.md rappresenta la prima pagina che gli utenti vedono quando accedono a un repository su GitHub. Deve fornire le informazioni sul contenuto del repository stesso e viene redatto usando la `sintassi Markdown <https://guides.github.com/features/mastering-markdown/>`__, che differisce dal formato RST discusso in precedenza. Puoi consultare l’esempio contenuto nello `Starter kit <#_j9gyyh2rj92t>`__.

Il file README.md comincia con un titolo con il seguente formato:

# Nome_Progetto, Nome_Documento

Il segno # indica un titolo e Nome_Documento (obbligatorio) serve a distinguere diversi documenti relativi, per esempio, ad aspetti diversi di uno stesso progetto.

All’inizio del README, indica il **link alla documentazione** su Docs Italia, assieme al/ai **link ai testi di partenza**, se presenti.

File index.rst
~~~~~~~~~~~~~~

Il file index.rst corrisponde alla **home page del documento** e serve ad almeno tre scopi:

1. Visualizzare il titolo del documento;

2. Fornire un’introduzione al testo;

3. Visualizzare un indice di tutte le pagine contenute.

Per i primi due punti, la stesura deve seguire le considerazioni fatte in precedenza sulla `sintassi RST <#il-formato-restructuredtext-rst>`__.

Per quanto riguarda il terzo punto, invece, l’inclusione delle pagine nel documento avviene tramite la `direttiva toctree <http://www.sphinx-doc.org/en/stable/markup/toctree.html>`__\ *.* Prendendo ad esempio la `struttura del repository illustrata in precedenza <#struttura-del-repository>`__, un possibile index.rst viene costruito come di seguito.

+------------------------------------+
| **Esempio. index.rst con toctree** |
|                                    |
| Il titolo del documento            |
|                                    |
| ======================             |
|                                    |
| Una breve introduzione al testo.   |
|                                    |
| .. toctree::                       |
|                                    |
| \_docs/cap1.rst                    |
|                                    |
| \_docs/cap2.rst                    |
|                                    |
| ...                                |
+------------------------------------+

Cartella \_docs
~~~~~~~~~~~~~~~

Questa cartella contiene i file della documentazione creati come indicato nel capitolo `Scrivere un documento <#scrivere-un-documento>`__. Ciascun file contenuto nella cartella verrà convertito in una pagina a sé stante, e collegato alla pagina principale tramite la direttiva *toctree* illustrata nella sezione precedente.

File conf.py
~~~~~~~~~~~~

Questo file è presente in ogni repository del documento e costituisce il principale script da modificare per personalizzare il documento. I parametri che tipicamente l’utente deve modificare sono contenuti nella seguente tabella.

Tabella 4. Parametri del file conf.py.

+---------------+----------------------------------------------------------------+
| **Parametro** | **Descrizione**                                                |
+===============+================================================================+
| project       | Il nome del documento                                          |
+---------------+----------------------------------------------------------------+
| copyright     | Il tipo di copyright                                           |
+---------------+----------------------------------------------------------------+
| version       | La versione ridotta del documento                              |
+---------------+----------------------------------------------------------------+
| release       | La versione completa del documento (incluso *alfa, beta*, ecc) |
+---------------+----------------------------------------------------------------+
| language      | La lingua del documento                                        |
+---------------+----------------------------------------------------------------+

Un esempio completo di file conf.py è contenuto nel repository del documento all’interno dello `Starter kit <#starter-kit>`__.

File LICENSE e AUTHORS
~~~~~~~~~~~~~~~~~~~~~~

Il file LICENSE specifica il tipo di licenza associata alla documentazione. Le licenze sono identificate attraverso il loro `codice SPDX <https://spdx.org/licenses/>`__.

Per i documenti contenuti in Docs Italia, è obbligatorio indicare una licenza aperta. Il suggerimento è di usare una delle seguenti opzioni:

-  CC-BY-4.0 per la documentazione;

-  CC0-1.0 per le leggi, gli schemi e i documenti normativi.

Nel caso di licenza CC-BY-4.0 è obbligatorio creare un file AUTHORS che contiene l’attribuzione della proprietà dei diritti d’autore. Nel caso di licenza CC0-1.0 è possibile farlo (*MAY*) ma non è obbligatorio.

Per maggiori informazioni, è possibile consultare il `README per le licenze <https://teamdigitale.github.io/licenses/README.it.html>`__ del Team per la Trasformazione Digitale.

File requirements.txt
~~~~~~~~~~~~~~~~~~~~~

Il file requirements.txt contiene le informazioni riguardo al tema di stile delle pagine. Tipicamente, l’utente non ha bisogno di modificare questo file.

File document_settings.yml
~~~~~~~~~~~~~~~~~~~~~~~~~~

Il file document_settings.yml specifica i **metadati associati al documento**, in modo simile a quanto fatto in precedenza per `publisher <#metadati-del-publisher>`__ e `progetto <#metadati-dei-progetti>`__. Il documento eredita i metadati relativi al publisher e al progetto da quelli presenti nei file del `repository di configurazione <#repository-di-configurazione>`__, se presenti.

I metadati facilitano la ricerca delle informazioni da parte degli utenti. In particolare, anche per i documenti è previsto l’uso di **tag tratti da un vocabolario controllato** per permettere l’integrazione fra Docs Italia e il Forum (vedi anche `Repository di configurazione <#repository-di-configurazione>`__).

La Tabella 5 mostra un elenco dei possibili metadati e una loro descrizione. L’esempio successivo mostra il file *document_settings.yml* contenuto nello `Starter kit <#starter-kit>`__.

Tabella 5. Alcuni dei metadati associati a ciascun documento.

+------------------+---------------------------------------------------------------------------------------------------------+
| **Parametro**    | **Descrizione**                                                                                         |
+==================+=========================================================================================================+
| name             | Il nome per esteso del documento                                                                        |
+------------------+---------------------------------------------------------------------------------------------------------+
| short-name       | Il nome abbreviato del documento (se presente)                                                          |
+------------------+---------------------------------------------------------------------------------------------------------+
| description      | Una descrizione estesa delle funzioni e degli scopi del documento                                       |
+------------------+---------------------------------------------------------------------------------------------------------+
| author           | Chi ha creato il documento (account GitHub)                                                             |
+------------------+---------------------------------------------------------------------------------------------------------+
| contributors     | Chi ha collaborato alla stesura del testo (nomi e cognomi, se presenti)                                 |
+------------------+---------------------------------------------------------------------------------------------------------+
| published        | La data in cui il documento è stato pubblicato per la prima volta                                       |
+------------------+---------------------------------------------------------------------------------------------------------+
| expiration       | La data in cui la documentazione diventa obsoleta. Si può usare per marcare i documenti non più validi. |
+------------------+---------------------------------------------------------------------------------------------------------+
| id               | Un identificativo univoco della documentazione                                                          |
+------------------+---------------------------------------------------------------------------------------------------------+
| license          | Il tipo di licenza associato al documento                                                               |
+------------------+---------------------------------------------------------------------------------------------------------+
| origin           | L’URL del documento di partenza                                                                         |
+------------------+---------------------------------------------------------------------------------------------------------+
| software-website | L’URL del software a cui la documentazione si riferisce (se applicabile)                                |
+------------------+---------------------------------------------------------------------------------------------------------+
| audience         | A chi è rivolto il documento (ad es. cittadini, comuni, software house, ecc)                            |
+------------------+---------------------------------------------------------------------------------------------------------+
| type             | Il tipo di documento (ad es. linee guida, documentazione tecnica, leggi, procedure, ecc)                |
+------------------+---------------------------------------------------------------------------------------------------------+

+------------------------------------------------------------------+
| **Esempio. File document_settings.yml tratto dallo Starter kit** |
|                                                                  |
| document:                                                        |
|                                                                  |
| name: Titolo del documento                                       |
|                                                                  |
| description: \|                                                  |
|                                                                  |
| Lorem ipsum dolor sit amet, consectetur                          |
|                                                                  |
| adipisicing elit, sed do eiusmod tempor                          |
|                                                                  |
| incididunt ut labore et dolore magna aliqua.                     |
|                                                                  |
| Ut enim ad minim veniam, quis nostrud                            |
|                                                                  |
| exercitation ullamco laboris nisi ut                             |
|                                                                  |
| aliquip ex ea commodo consequat.                                 |
|                                                                  |
| Duis aute irure dolor in reprehenderit in                        |
|                                                                  |
| voluptate velit esse cillum dolore eu                            |
|                                                                  |
| fugiat nulla pariatur. Excepteur sint                            |
|                                                                  |
| occaecat cupidatat non proident, sunt in                         |
|                                                                  |
| culpa qui officia deserunt mollit anim id                        |
|                                                                  |
| est laborum.                                                     |
|                                                                  |
| tags:                                                            |
|                                                                  |
| - topic                                                          |
|                                                                  |
| - related topic                                                  |
|                                                                  |
| - amazing project                                                |
+------------------------------------------------------------------+

Funzione commenti con Forum Italia
----------------------------------

Per attivare la funzione commenti, inserisci questo script (e gli id necessari, che ti verranno forniti dagli amministratori di Docs Italia) in ciascuna delle sezioni che vuoi rendere commentabili. I commenti saranno visibili anche su Forum Italia.

Docs Italia è completamente integrato con `Forum Italia <https://forum.italia.it/>`__, la piattaforma di discussione sui progetti digitali della Pubblica Amministrazione.

Tramite le funzionalità di `Discourse <https://discourse.org/>`__, è possibile aggiungere dei commenti ai propri documenti. Ciascun commento inserito su Docs Italia è automaticamente visibile anche su uno specifico topic in Forum Italia. Viceversa, quando vengono inseriti dei commenti nel topic sul Forum, questi sono subito visibili anche nel documento su Docs Italia.

Aggiungere i commenti nel documento
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Al momento, è possibile aggiungere un thread di commenti per ciascuna pagina. Questo corrisponde a un singolo topic nel Forum.

Quando richiedi l’autorizzazione a pubblicare un documento su Docs Italia, gli amministratori creeranno per te una Categoria nel Forum dove verranno visualizzati i commenti al tuo documento.

Per ciascun argomento nel Forum, ti verrà assegnato un <topic-id> dagli amministratori. Per creare i commenti in una pagina, copia lo script seguente alla fine del file RST corrispondente:

.. discourse::

:topic_identifier: <topic-id>

sostituendo <topic-id> con il codice opportuno.

+---------------------------------------------------+
| **Esempio.**                                      |
|                                                   |
| Il codice da inserire per il topic con ID 1234 è: |
|                                                   |
| .. discourse::                                    |
|                                                   |
| :topic_identifier: 1234                           |
+---------------------------------------------------+

Ripetendo questa procedura, è possibile collegare ciascuna pagina del documento con il corrispondente argomento sul Forum. In caso di problemi, è possibile `contattare gli amministratori di Docs Italia <#amministratori-di-docs-italia-e-assistenza>`__.

Caricare i file sul repository remoto
-------------------------------------

Tutti i file necessari alla creazione del documento su Docs Italia devono essere caricati nel repository del documento remoto, in modo che Docs Italia possa aggiornare la pagina del documento, `attualmente vuota <#_9olvs463oysi>`__. Ogni documento su Docs Italia viene aggiornato automaticamente ogni qual volta viene effettuata una modifica al repository di configurazione o del documento.

Le `procedure da utilizzare <#procedure-di-caricamento-sul-repository-remoto>`__ per caricare i file sono descritte in Appendice.

Backend di Docs Italia
----------------------

Docs Italia possiede una modalità di backend, ovvero una piattaforma accessibile dagli utenti autorizzati dove è possibile eseguire alcune attività di amministrazione avanzata (vedi Figura 8).

L’utente può accedere al backend di Docs Italia con il proprio account GitHub.

+---------------------------------------------------------------+
| |image7|                                                      |
|                                                               |
| Figura 8. Il backend di Docs Italia per gestire un documento. |
+---------------------------------------------------------------+

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Nota.**                                                                                                                                                                                                                           |
|                                                                                                                                                                                                                                     |
| Al primo accesso, l’utente deve autorizzare a sua volta la piattaforma a interagire con la propria organizzazione GitHub: tale operazione è necessaria per consentire l’aggiornamento del documento a ogni modifica del repository. |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Il backend permette di modificare le impostazioni avanzate, come l’attivazione o meno di determinate versioni di un documento o l’aggiornamento manuale delle pagine. Da qui, l’utente potrà gestire tutti i documenti corrispondenti ai repository di una determinata organizzazione per i quali ha i permessi di scrittura.

Dal backend sarà possibile accedere ad alcuni widget relativi al publisher, ai progetti o ai documenti. Per esempio, la lista dei progetti, la lista dei documenti e l’indice di un documento.

Nome del documento
~~~~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Nota.**                                                                                                                                                                                                       |
|                                                                                                                                                                                                                 |
| Le istruzioni contenute in questa sezione sono valide finché non entrerà in vigore il nuovo formato per gli URL presentato nella sezione `Stiamo lavorando alle seguenti funzionalità <#nuove-funzionalità>`__. |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Nel backend di Docs Italia, è possibile impostare il nome che appare nell’URL del documento. Scegli lo stesso nome utilizzato per il nome del repository del documento, senza la parte finale **-docs**.

Così, per il documento “Istruzioni per il cambio di residenza” ospitato nel repository **anpr-cambioresidenza-docs**, il nome nell’URL diventa **anpr-cambioresidenza**.

Anteprima del documento
~~~~~~~~~~~~~~~~~~~~~~~

Docs Italia prevede la possibilità di creare un’anteprima dei documenti privata, non raggiungibile tramite i collegamenti all’interno della piattaforma, in modo da poterla controllare prima di renderla pubblica.

I documenti privati sono raggiungibili dal publisher usando URL predittivi (ad es. docs.italia.it/<publisher>/test/<nome_repo>). Tali documenti possono essere resi pubblici in un secondo tempo tramite un’apposita impostazione nel backend di Docs Italia.

La Figura 9 mostra com’è possibile impostare un documento privato su Docs Italia.

+------------------------------------------------------------------------------+
| |image8|                                                                     |
|                                                                              |
| Figura 9. Il backend di Docs Italia permette di impostare documenti privati. |
+------------------------------------------------------------------------------+

Documenti in lingue multiple
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Docs Italia permette di gestire i documenti e le loro traduzioni. L’utente può leggere il documento in un’altra lingua in qualsiasi pagina si trovi, semplicemente selezionando il pulsante corrispondente.

Per creare un documento multilingue è necessario creare i documenti nelle diverse lingue seguendo le procedure descritte in precedenza e, successivamente, impostare un documento come “principale” e indicare gli altri come traduzioni di questo.

Per esempio, un documento in italiano chiamato *anpr-modalitasubentro* potrebbe essere il documento principale. Per indicarne il documento *anpr-modalitasubentro-eng* come la traduzione inglese, segui la seguente procedura.

+----------------------------------------------------------------------------------------------------------------------------------------+
| **Procedura. Impostare la traduzione di un documento**                                                                                 |
|                                                                                                                                        |
| -  Accedi al backend di Docs Italia corrispondente al documento principale, *anpr-modalitasubentro*.                                   |
|                                                                                                                                        |
| -  Dal pannello di amministrazione, seleziona la voce **Translations**.                                                                |
|                                                                                                                                        |
| -  Nel riquadro **Project**, indica il nome del documento corrispondente alla traduzione. In questo caso, *anpr-modalitasubentro-eng*. |
|                                                                                                                                        |
| -  Clicca sul pulsante **Submit**.                                                                                                     |
+----------------------------------------------------------------------------------------------------------------------------------------+

La Figura 10 mostra il backend di Docs Italia relativo alla selezione dei documenti di traduzione.

Per problemi con la creazione di documenti multilingue è possibile contattare gli amministratori di Docs Italia all’indirizzo: `contatti@docs.italia.it <mailto:contatti@docs.italia.it>`__.

+-----------------------------------------------------------------------------------+
| |image9|                                                                          |
|                                                                                   |
| Figura 10. Il backend di Docs Italia permette di impostare documenti multilingue. |
+-----------------------------------------------------------------------------------+

Gestione dei documenti
======================

Visibilità del documento
------------------------

Dopo aver pubblicato il documento su Docs Italia, è utile eseguire le seguenti operazioni per aumentarne la visibilità.

Presentazione sul proprio sito web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

È opportuno inserire i link ai documenti nel proprio sito web, creando una sezione *ad hoc*, se necessario.

Docs Italia sta lavorando alla creazione di alcuni widget che permetteranno di pubblicare in modo semplice sul proprio sito la lista dei link ai propri documenti e, per ciascun testo, l’indice completo.

Pubblicazione sulla home page di Docs Italia
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I documenti più recenti vengono visualizzati automaticamente nella home page di Docs Italia.

Aggiungere i metadati e indicare l’eventuale progetto di riferimento può aiutare gli utenti a trovare più facilmente il tuo documento.

Divulgazione su Forum Italia
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

È possibile dare visibilità ai nuovi documenti utilizzando `Forum Italia <https://forum.italia.it/>`__, il forum di discussione sui progetti digitali della Pubblica Amministrazione. Per farlo, basta andare su Forum Italia e aprire un topic (è richiesta la registrazione) in corrispondenza del Progetto cui fa riferimento il documento.

La Figura 11 mostra l’annuncio su Forum Italia relativo alla pubblicazione del Codice dell’amministrazione digitale.

+------------------------------------------------+
| |image10|                                      |
|                                                |
| Figura 11. Annuncio di un documento sul Forum. |
+------------------------------------------------+

Se il documento non è associato ad alcun Progetto, è possibile usare la categoria `Community & Altro <https://forum.italia.it/c/community-feedback>`__.

Promozione sui canali social
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Un’ulteriore promozione del documento può avvenire attraverso i **canali social**. `Twitter <https://twitter.com>`__ è un ottimo modo per condividere il link e aumentare il traffico verso il proprio sito.

Alcuni dei documenti verranno promossi sulla **newsletter** di `Developers Italia <http://developers.italia.it>`__. Anche in questo caso, è necessario contattare il Team per stabilire la strategia più appropriata.

Operazioni di manutenzione
--------------------------

Dopo la pubblicazione, sono necessarie alcune operazioni per **mantenere i documenti aggiornati**. Le modifiche possono essere necessarie a seguito di cambi nella legislazione, di segnalazioni degli utenti tramite issue su GitHub e Forum, o semplicemente per migliorare la documentazione stessa.

Modifiche alla documentazione
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Qualsiasi modifica alla documentazione avviene modificando i file all’interno del repository GitHub. La procedura è identica a quella descritta nella sezione `Caricare i file sul repo <#_7dw9rr6ypvdv>`__. Una modifica alla documentazione effettuata tramite un commit sul repository genererà automaticamente la documentazione aggiornata su Docs Italia.

**È buona pratica rivedere il contenuto dei testi con scadenza periodica**, in modo da evitare che le informazioni diventino obsolete o addirittura errate.

Le modifiche sostanziali alla documentazione, a seguito per esempio di un cambiamento nella legislazione o nel software di riferimento, devono essere associate a una versione differente (vedi l’\ `Appendice <#appendice-1.-il-versionamento>`__ sul versionamento).

Issues e pull requests
~~~~~~~~~~~~~~~~~~~~~~

Lo sviluppo collaborativo della documentazione tramite GitHub si avvale di due funzionalità: `issues <https://help.github.com/articles/about-issues/>`__ e `pull requests <https://help.github.com/articles/about-pull-requests/>`__.

Le *issues* (letteralmente “problemi”) servono a indicare ai responsabili del progetto dei possibili problemi con la documentazione, dai semplici refusi nel testo agli errori fattuali nei contenuti.

Le *pull requests* servono invece per proporre direttamente delle modifiche che, dopo una revisione da parte del publisher, possono essere integrate direttamente nel progetto.

Questi strumenti permettono agli utenti di segnalare eventuali errori e possibili correzioni, garantendo quindi un alto standard di qualità per la documentazione.

.. _section-1:

Appendice 1. Il versionamento
=============================

Introduzione
------------

Il `version control <https://it.wikipedia.org/wiki/Controllo_versione>`__ o versionamento consente di tracciare i cambiamenti occorsi a un file o a un insieme di file. Permette, tra le altre cose, di riportare i file o l’intero progetto a uno stadio precedente, visualizzare le modifiche nel corso del tempo, sviluppare più linee di lavoro in parallelo e identificare gli autori delle modifiche.

I sistemi di controllo versione sono usati abitualmente nei progetti di sviluppo software. Questi sistemi possono essere applicati anche alla documentazione: con un approccio di tipo “\ `docs as code <https://gdstechnology.blog.gov.uk/2017/08/25/why-we-use-a-docs-as-code-approach-for-technical-documentation/>`__\ ” (documentazione come codice), è possibile tracciare i cambiamenti puntuali dei vari file e definire delle versioni.

Glossario minimo
----------------

**repository**

Il repository è una cartella in cui vengono conservati tutti i file di un progetto. Questa cartella può essere salvata localmente o ospitata su una piattaforma online come `GitHub <https://github.com/>`__ (repository remoto).

**commit**

Un commit è una *fotografia* del progetto e di tutti i file in un determinato istante. Eseguire un commit significa essenzialmente congelare lo stato del progetto per poterlo recuperare in futuro.

**tag**

Il tag è un’etichetta che punta a uno specifico commit. Può essere usato per identificare degli stadi particolari nell’evoluzione del progetto (ad es. le *release*, ovvero i rilasci del software o della documentazione).

Tipi di versionamento
---------------------

Docs Italia utilizza il sistema di controllo versione di GitHub: per ogni documento, esiste una traccia pubblica di tutte le modifiche effettuate e dei relativi autori.

Il versionamento adotta un **sistema di release basato sui tag**, che varia in base al tipo di documento.

**Documentazione di un progetto software**

Il versionamento del codice e della relativa documentazione vanno di pari passo.

Dal momento che non è possibile imporre una singola strategia di versionamento, le versioni della documentazione avranno formati diversi a seconda del tipo di versionamento usato per il software.

**Linee guida**

La versione viene indicata dall’anno e da un numero progressivo, nel formato **AAAA.N**. Ad esempio, la versione numero 1 dell’anno 2018 sarà indicata con 2018.1. È possibile `estendere il processo di versionamento <#estensione-del-processo-di-versionamento>`__ alle fasi di consultazione e approvazione.

**Testo legislativo**

La versione del documento è determinata dalle modifiche introdotte nel corso dell’iter legislativo.

La versione viene indicata dalla data in cui è approvata una modifica al testo, nel formato **vAAAA-MM-GG**. Ad esempio, un testo modificato tramite Decreto Legislativo del 13 dicembre 2017 sarà associato alla versione v2017-12-13.

Vedi il `Codice dell’amministrazione digitale <http://cad.readthedocs.io>`__ per un esempio.

Estensione del processo di versionamento
----------------------------------------

Per tenere conto di alcune esigenze relative al procedimento amministrativo, è possibile estendere il versionamento del documento descritto sopra. In particolare, per ciascun documento sono previste diverse fasi di sviluppo.

**Documento in fase di creazione**

Il documento non è ancora pubblico. Su Docs Italia esiste solo il titolo, con l’etichetta “Documento in fase di creazione”. Il documento può essere contenuto in un repository pubblico o privato di GitHub. La stesura si potrebbe iniziare già su GitHub, che supporta perfettamente un approccio collaborativo.

**Documento in bozza (versione alfa, con tag)**

Il documento è pubblicato come bozza, in consultazione. I nuovi contenuti e le modifiche ai contenuti esistenti, dopo essere approvati, vengono pubblicati nella versione alfa del documento. Vengono resi disponibili per una discussione pubblica e una revisione da parte della community, anche se questa è priva di valore ufficiale.

**Documento firmato, in attesa di parere (versione beta, con tag)
**\ Il documento è firmato, in attesa di parere positivo. In Docs Italia sarà presente, oltre al PDF del documento, anche il PDF firmato relativo allo stesso documento in pubblicazione.

**Documento approvato (release, con tag)**

Il documento ha ricevuto parere positivo e viene pubblicato in via ufficiale. Su Docs Italia appare anche come **versione stable**.

**Successive modificazioni (versione latest)**

Le modifiche intermedie apportate al documento, quando non esplicitamente associate a una versione come descritto sopra, vengono indicate con la generica versione **latest**. In questo caso vengono visualizzate le modifiche più recenti, senza però che il documento abbia valore ufficiale.

+--------------------------------------+
| **Esempio. Flusso di versionamento** |
|                                      |
| |image11|                            |
+--------------------------------------+

Appendice 2. Guida di stile
===========================

Questa appendice fornisce alcune indicazioni sull’organizzazione dei contenuti e lo stile dei documenti su Docs Italia e integra le indicazioni fornite nelle `Linee guida di design per i servizi web della PA <https://design-italia.readthedocs.io>`__.

Organizzazione dei contenuti
----------------------------

**Il tuo testo verrà letto principalmente online.**

Inserisci le informazioni più importanti all’inizio del testo, in modo da fornire subito a chi legge le informazioni che cerca. Utilizza i paragrafi successivi per ulteriori spiegazioni.

Usa il grassetto o il corsivo per mettere in evidenza i punti più importanti e attirare l’attenzione.

**Usa una struttura modulare.**

Una struttura ben definita aiuta a comprendere meglio il testo. Separa le varie sezioni in paragrafi con un titolo rilevante. A volte, un’immagine o una tabella possono fornire più informazioni di un testo.

Nell’organizzare i contenuti, utilizza la seguente struttura modulare:

-  Acronimi

-  Contenuti

-  Domande frequenti (FAQ)

Gli acronimi, se presenti, dovrebbero essere inseriti in testa alla documentazione. Si sconsiglia, nei documenti web, l’utilizzo di lunghe introduzioni: i lettori sono interessati direttamente ai contenuti.

Prima di creare una sezione di FAQ, chiediti se serve davvero [1]_: stai semplicemente duplicando le informazioni? Puoi inserire gli stessi contenuti all’interno della documentazione? Nel caso in cui sia comunque necessario creare una sezione di FAQ, le domande devono essere efficaci, sintetiche e dirette verso il fruitore della documentazione.

**Tipi di contenuti**

Per aiutarti a strutturare meglio il tuo testo, puoi **pensare alla funzione di ciascuna parte** secondo questa tabella (tipica della `documentazione DITA <https://en.wikipedia.org/wiki/Darwin_Information_Typing_Architecture#Information_typing>`__):

+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Concetti               | | Descrizioni e spiegazioni relative a un argomento.                                                                                                                                        |
|                        | | Formato: paragrafi di testo.                                                                                                                                                              |
|                        |                                                                                                                                                                                             |
|                        | Esempio: `Introduzione a PagoPA <https://pagopa-doc-overview.readthedocs.io/it/latest/introduzione.html>`__                                                                                 |
+========================+=============================================================================================================================================================================================+
| Procedure              | Lista di operazioni o di passi per ottenere un risultato.                                                                                                                                   |
|                        |                                                                                                                                                                                             |
|                        | Formato: elenco puntato o numerato.                                                                                                                                                         |
|                        |                                                                                                                                                                                             |
|                        | Esempio: `18app, Istruzioni per la compilazione di una fattura <http://guida-18app.readthedocs.io/it/latest/linee-guida-fatturazione.html#istruzioni-per-la-compilazione-di-una-fattura>`__ |
+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Liste di consultazione | Coppie di indice-valore (per esempio un glossario, lista di funzioni API, ecc).                                                                                                             |
|                        |                                                                                                                                                                                             |
|                        | | Formato: tabella a due colonne.                                                                                                                                                           |
|                        | | Esempio: `ANPR, Tabella 14. Lingue <https://anpr.readthedocs.io/en/latest/tab/tab_lingue.html>`__                                                                                         |
+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Frammenti              | Brevi frasi che fungono da connessione fra le varie parti della guida.                                                                                                                      |
|                        |                                                                                                                                                                                             |
|                        | Esempio: “Maggiori informazioni possono essere trovate su questo sito”.                                                                                                                     |
+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Stile e linguaggio
------------------

Relativamente allo stile da utilizzare, è possibile far riferimento alle `Linee Guida di Design <https://design-italia.readthedocs.io/it/stable/doc/content-design/linguaggio.html#>`__, applicando qualche ulteriore accorgimento dettagliato di seguito.

Caratteri speciali
~~~~~~~~~~~~~~~~~~

Alcuni caratteri speciali possono essere interpretati in maniera errata in fase di compilazione del documento. Per esempio, gli apici obliqui sono utilizzati per definire alcune direttive nel linguaggio RST.

Per questo motivo, utilizza doppi apici dritti invece che doppi apici obliqui, sia in apertura che in chiusura. L’apice obliquo va sostituito con l’apice dritto.

+----------------------------+-------------------------+
| **Da evitare**             | **Consigliato**         |
+============================+=========================+
| Doppi apici obliqui: “”    | Doppi apici dritti: "   |
+----------------------------+-------------------------+
| Apice obliquo singolo: ‘ ’ | Apice dritto singolo: ' |
+----------------------------+-------------------------+

Codice
~~~~~~

Il codice deve essere visualizzato con carattere *monospace*. Per poter visualizzare il codice con tale formattazione, indipendentemente dal template, è necessario usare il ruolo :code: inserendo il codice tra due apici obliqui.

+----------------------------------------------------------------+
| **Esempio. Formattazione del codice**                          |
|                                                                |
| :code:`<aux digit (1n)>[<application code> (2n)]<codice IUV>\` |
|                                                                |
| **Esempio. Codice reso nel testo**                             |
|                                                                |
| <aux digit (1n)>[<application code> (2n)]<codice IUV>          |
+----------------------------------------------------------------+

Note
~~~~

L’utilizzo delle note nei documenti web è sconsigliato: a volte, le note possono essere sostituite da `riferimenti <#riferimenti>`__ nel testo (vedi sotto). Se indispensabili, le note devono essere tutte in fondo alla pagina e non, ad esempio, dopo una tabella o alla fine di un paragrafo.

Le note hanno una numerazione indipendente in ciascuna pagina. Per un esempio, consulta il `Piano Triennale per l’Informatica nella PA 2017-2019 <https://pianotriennale-ict.readthedocs.io/it/latest/doc/01_piano-triennale-per-informatica-nella-pa.html>`__.

Riferimenti
~~~~~~~~~~~

All’interno del documento, i riferimenti ad altre parti di testo devono essere corredati da opportuni link.

Quando crei un collegamento a un sito esterno, evita di associare il link a frasi come “clicca qui” oppure “a questo link”. Usa, invece, frasi che descrivono il contenuto del collegamento, come “visita la pagina di aiuto” oppure “consulta la sintassi RST”.

Tabelle
~~~~~~~

Nelle tabelle, il testo di ogni cella inizia sempre con la lettera maiuscola, salvo il caso in cui si faccia riferimento a identificatori che inizino con la lettera minuscola. A fine riga in ciascuna tabella non serve il punto. L’intestazione delle colonne e delle righe di una tabella è in grassetto.

La tabella deve essere preceduta da una didascalia centrata che ne descriva il contenuto.

Le tabelle devono essere numerate in maniera progressiva. Per la numerazione, si può utilizzare l'auto numerazione già presente nel template di Docs Italia. La numerazione manuale è fortemente sconsigliata in quanto introduce un elemento di possibile incoerenza nel documento che si sta scrivendo o che si modificherà in futuro.

Tabella 6. Esempio di tabella in Docs Italia.

+-------------------------+-------------------------+-------------------------+-------------------------+
|                         | **Intestazione col. 1** | **Intestazione col. 2** | **Intestazione col. 3** |
+=========================+=========================+=========================+=========================+
| **Intestazione riga 1** | Testo                   | Testo                   | Testo                   |
+-------------------------+-------------------------+-------------------------+-------------------------+
| **Intestazione riga 2** | Testo                   | Testo                   | Testo                   |
+-------------------------+-------------------------+-------------------------+-------------------------+

Figure e immagini
~~~~~~~~~~~~~~~~~

Tutte le figure e le immagini devono essere seguite da opportune didascalie, centrate e numerate in maniera progressiva. Per la numerazione delle figure si può utilizzare l'auto numerazione già presente nel template di Docs Italia. La numerazione manuale è fortemente sconsigliata in quanto introduce un elemento di possibile incoerenza nel documento che si sta scrivendo o che si modificherà in futuro.

+----------------------------------------------------------+
| **Esempio di figure / immagini in Docs Italia**          |
|                                                          |
| |Systema:Users:Lcd:Desktop:TEAM-DIGITALE_logo.png|       |
|                                                          |
| Figura 12. Logo del Team per la Trasformazione Digitale. |
+----------------------------------------------------------+

Titoli
~~~~~~

Come già indicato nelle `Linee Guida di Design <https://design-italia.readthedocs.io/it/stable/doc/content-design/linguaggio.html#titoli>`__, nei titoli non dovrebbero essere presenti trattini o slash (-, /, \|).

Nel caso sia necessario utilizzare un segno divisorio, questo dovrebbe essere il punto.

+----------------------------------------+
| **Esempio. Formato del titolo**        |
|                                        |
| Appendice 1. Codici dei regimi fiscali |
+----------------------------------------+

Ottimizzazione SEO
~~~~~~~~~~~~~~~~~~

L’ottimizzazione per i motori di ricerca (in inglese, *search engine optimization* o SEO) è un aspetto importante da tenere presente nella scrittura di un documento. L’obiettivo dell’ottimizzazione SEO dei contenuti è di migliorare il posizionamento del documento fra i risultati delle ricerche degli utenti in corrispondenza di alcune parole chiave. I primi risultati, infatti, sono quelli che ricevono più click e quindi più visite.

Per maggiori informazioni sull’ottimizzazione SEO, puoi consultare il `capitolo dedicato nelle Linee guida di design per i servizi web della PA <https://design-italia.readthedocs.io/it/stable/doc/content-design/seo.html>`__, dove vengono illustrate una serie di tecniche e strategie per migliorare i contenuti dei documenti.

Appendice 3. Procedure e convenzioni su GitHub
==============================================

Procedure di caricamento sul repository remoto
----------------------------------------------

Per caricare i file presenti in un repository locale in un repository remoto, sono disponibili due strategie:

1. Upload tramite interfaccia grafica sul sito `github.com <https://github.com/>`__;

2. Upload da repository Git locale tramite i comandi *clone* e *push*.

Il primo metodo è adatto per chi ha poca familiarità con gli strumenti di controllo versione, mentre il secondo consente maggiore flessibilità ed è adatta a utenti mediamente esperti.

Upload tramite interfaccia grafica
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Procedura.**                                                                                                                                                                                                     |
|                                                                                                                                                                                                                    |
| -  Assicurati di avere tutti i file necessari elencati nella sezione precedente                                                                                                                                    |
|                                                                                                                                                                                                                    |
| -  Visita la pagina del repository su GitHub                                                                                                                                                                       |
|                                                                                                                                                                                                                    |
| -  Clicca sul pulsante **Upload files**                                                                                                                                                                            |
|                                                                                                                                                                                                                    |
| |image13|                                                                                                                                                                                                          |
|                                                                                                                                                                                                                    |
| -  Clicca su **choose your files** e seleziona tutti i file che intendi caricare                                                                                                                                   |
|                                                                                                                                                                                                                    |
| -  Nel riquadro “Commit changes”, specifica un oggetto del commit nel primo box, e opzionalmente un testo di spiegazione, secondo le modalità descritte nella sezione `Messaggi di commit <#messaggi-di-commit>`__ |
|                                                                                                                                                                                                                    |
| -  Clicca sul pulsante **Commit changes**                                                                                                                                                                          |
|                                                                                                                                                                                                                    |
| |image14|                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Upload da un repository Git locale
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Procedura.**                                                                                                                                                |
|                                                                                                                                                               |
| -  Assicurati di avere tutti i file necessari elencati nella sezione precedente                                                                               |
|                                                                                                                                                               |
| -  Visita la pagina del repository su GitHub                                                                                                                  |
|                                                                                                                                                               |
| -  Clicca sul pulsante **Clone or download**                                                                                                                  |
|                                                                                                                                                               |
| -  Clicca sul pulsante **Copy to clipboard** accanto all’URL del repo                                                                                         |
|                                                                                                                                                               |
| |image15|                                                                                                                                                     |
|                                                                                                                                                               |
| Da linea di comando, esegui                                                                                                                                   |
|                                                                                                                                                               |
| -  cd alla cartella con i file della documentazione                                                                                                           |
|                                                                                                                                                               |
| -  git clone <URL>, dove <URL> è l’URL del repo. Puoi ottenerlo facendo semplicemente incolla (CTRL + v oppure CMD + v)                                       |
|                                                                                                                                                               |
| -  git add \*                                                                                                                                                 |
|                                                                                                                                                               |
| -  git commit                                                                                                                                                 |
|                                                                                                                                                               |
| -  All’apertura dell’editor di testo, scrivi il messaggio di commit, secondo le modalità descritte nella sezione `Messaggi di commit <#messaggi-di-commit>`__ |
|                                                                                                                                                               |
| -  git push origin master                                                                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

Messaggi di commit
------------------

Ogni volta che si effettua una modifica nel repository, è necessario utilizzare un commit. Questo viene accompagnato da un messaggio che descrive le modifiche apportate.

Il messaggio di commit si compone di due parti:

1. oggetto del commit (obbligatorio)

2. testo di spiegazione del commit (opzionale)

L’\ **oggetto del commit** è sempre obbligatorio e indica in maniera succinta le modifiche apportate al testo o al codice.

-  Indica *cosa* hai fatto, non *come* o *perché*.

-  Usa uno stile diretto e conciso, spiegando con un’unica frase il commit.

-  Elimina gli articoli e le preposizioni, se necessario (se la frase è troppo lunga).

-  Un buon oggetto di commit dovrebbe completare la frase: “Con questo commit, ho…”.

+------------------------------------------+
| **Esempio. Con questo commit, ho …**     |
|                                          |
| -  modificato la funzione,               |
|                                          |
| -  corretto il bug, migliorato lo stile, |
|                                          |
| -  rimosso variabili inutilizzate,       |
|                                          |
| -  aggiunto paragrafo dopo introduzione  |
+------------------------------------------+

Nell’oggetto del commit si dovrebbe indicare il tipo di commit fra i seguenti:

-  Docs: modifiche alla documentazione

-  Stile: formattazione, riformulazione di frasi, ecc

-  Struttura: modifiche alla struttura del testo

-  Refusi: correzione di piccoli refusi

+---------------------------------------------------------+
| **Esempio. Oggetto del commit**                         |
|                                                         |
| -  Stile: diviso frase troppo lunga                     |
|                                                         |
| -  Docs: creato documentazione                          |
|                                                         |
| -  Struttura: aggiunto abstract prima dell’introduzione |
+---------------------------------------------------------+

Il **testo di spiegazione** del commit è opzionale, e può essere usato per fornire ulteriori dettagli riguardo alle modifiche effettuate. Dev’essere separato dall’oggetto del commit da una linea vuota.

Se il commit risolve una o più issue, è obbligatorio indicarne il numero all’interno del testo di spiegazione.

.. [1]
   GOV.UK, nelle proprie linee guida, sconsiglia l’uso delle FAQ: https://www.gov.uk/guidance/content-design/writing-for-gov-uk#dont-use-faqs

.. |image0| image:: media/image30.png
   :width: 6.11458in
   :height: 3.82813in
.. |Schermata 2017-11-13 alle 23.03.55.png| image:: media/image25.png
   :width: 6.11458in
   :height: 5.47222in
.. |image2| image:: media/image24.png
   :width: 6.11458in
   :height: 4.90278in
.. |image3| image:: media/image14.png
   :width: 1.78493in
   :height: 3.59896in
.. |image4| image:: media/image31.png
   :width: 6.11458in
   :height: 1.97222in
.. |image5| image:: media/image23.png
   :width: 6.11458in
   :height: 3.25in
.. |image6| image:: media/image15.png
   :width: 6.11458in
   :height: 3.41667in
.. |image7| image:: media/image28.png
   :width: 5.54504in
   :height: 5.31771in
.. |image8| image:: media/image20.png
   :width: 3.86458in
   :height: 4.5702in
.. |image9| image:: media/image17.png
   :width: 5.70313in
   :height: 3.65311in
.. |image10| image:: media/image29.png
   :width: 6.11458in
   :height: 2.83333in
.. |image11| image:: media/image32.png
   :width: 5.14583in
   :height: 4.53172in
.. |Systema:Users:Lcd:Desktop:TEAM-DIGITALE_logo.png| image:: media/image22.png
   :width: 6.11458in
   :height: 1.31944in
.. |image13| image:: media/image33.png
   :width: 3.74479in
   :height: 0.36363in
.. |image14| image:: media/image26.png
   :width: 5.14618in
   :height: 3.50521in
.. |image15| image:: media/image21.png
   :width: 3.50521in
   :height: 1.52868in
