TEMA: Informazioni cartografiche e metainformazione 0002
--------------------------------------------------------

**Descrizione**

Definizione di ambiti territoriali con riferimento alla restituzione cartografica ed alla metainformazione

*CLASSE:* Ambito omogeneo per la metainformazione (META - 000202)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Classe con istanze monoscala**

+------------------------------+----------+
|                              | **PELL** |
+------------------------------+----------+
| **Popolamento della classe** | P        |
+------------------------------+----------+

**Definizione**

Ambito territoriale caratterizzato da informazioni omogenee rispetto ad un sottoinsieme sintetico di metadati. Ogni istanza di questa classe corrisponde alla sezione definita nel RNDT.

Visto che più classi possono interessare uno stesso ambito territoriale, una sezione può essere considerata appartenente a diversi dataset. Ne deriva che deve essere stabilita una relazione [1..n] tra ogni dataset descritto e le sezioni ad esso appartenenti. Per conseguire tale risultato è necessario aggiungere una tabella relazionale che raccoglie le sezioni appartenenti ad un certo dataset. Tale tabella prevede i seguenti attributi:

-  COD_CL – codice della classe (stringa)
-  SEZ_ID – FILE_ID dell’ambito omogeneo per la metainformazione /sezione

+---+-------------------------------+-------+------------------+----+---+
| * |                               |       |                  |    |   |
| * |                               |       |                  |    |   |
| A |                               |       |                  |    |   |
| t |                               |       |                  |    |   |
| t |                               |       |                  |    |   |
| r |                               |       |                  |    |   |
| i |                               |       |                  |    |   |
| b |                               |       |                  |    |   |
| u |                               |       |                  |    |   |
| t |                               |       |                  |    |   |
| i |                               |       |                  |    |   |
| * |                               |       |                  |    |   |
| * |                               |       |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **Attributi della classe**    | **PEL |                  |    |   |
|   |                               | L**   |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **00020201**                  | **MET | **tipo di        | ** | P |
|   |                               | A_ES* | estensione**     | En |   |
|   |                               | *     |                  | um |   |
|   |                               |       |                  | ** |   |
+---+-------------------------------+-------+------------------+----+---+
|   | definisce la tipologia di     |       |                  |    |   |
|   | estensione della porzione di  |       |                  |    |   |
|   | territorio considerata        |       |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **Dominio (Tipo di            | **PEL |                  |    |   |
|   | estensione)**                 | L**   |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **01**                        | **lim |                  | P  |   |
|   |                               | ite   |                  |    |   |
|   |                               | ammin |                  |    |   |
|   |                               | istra |                  |    |   |
|   |                               | tivo* |                  |    |   |
|   |                               | *     |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **02**                        | **tag |                  | P  |   |
|   |                               | lio   |                  |    |   |
|   |                               | carto |                  |    |   |
|   |                               | grafi |                  |    |   |
|   |                               | co**  |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **95**                        | **alt | Valore assunto   | P  |   |
|   |                               | ro**  | dall’istanza ma  |    |   |
|   |                               |       | non previsto     |    |   |
|   |                               |       | dalla specifica. |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   |                               |       |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **00020202**                  | **MET | **nome/codice**  | ** | P |
|   |                               | A_NC* |                  | St |   |
|   |                               | *     |                  | ri |   |
|   |                               |       |                  | ng |   |
|   |                               |       |                  | (1 |   |
|   |                               |       |                  | 00 |   |
|   |                               |       |                  | )* |   |
|   |                               |       |                  | *  |   |
+---+-------------------------------+-------+------------------+----+---+
|   | specifica il nome o il codice |       |                  |    |   |
|   | della porzione di territorio  |       |                  |    |   |
|   | considerata (indicata         |       |                  |    |   |
|   | nell’attributo META_ES)       |       |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **00020203**                  | **MET | **scala**        | ** | P |
|   |                               | A_SC* |                  | En |   |
|   |                               | *     |                  | um |   |
|   |                               |       |                  | ** |   |
+---+-------------------------------+-------+------------------+----+---+
|   | definisce la scala di         |       |                  |    |   |
|   | riferimento del DBT per la    |       |                  |    |   |
|   | porzione di territorio        |       |                  |    |   |
|   | considerata                   |       |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **Dominio (Scala)**           | **PEL |                  |    |   |
|   |                               | L**   |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **01**                        | **sca |                  | P  |   |
|   |                               | la    |                  |    |   |
|   |                               | 1:100 |                  |    |   |
|   |                               | 0**   |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **02**                        | **sca |                  | P  |   |
|   |                               | la    |                  |    |   |
|   |                               | 1:200 |                  |    |   |
|   |                               | 0**   |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **03**                        | **sca |                  | P  |   |
|   |                               | la    |                  |    |   |
|   |                               | 1:500 |                  |    |   |
|   |                               | 0**   |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **04**                        | **sca |                  | P  |   |
|   |                               | la    |                  |    |   |
|   |                               | 1:100 |                  |    |   |
|   |                               | 00**  |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **05**                        | **sca |                  | P  |   |
|   |                               | la    |                  |    |   |
|   |                               | 1:250 |                  |    |   |
|   |                               | 00**  |                  |    |   |
+---+-------------------------------+-------+------------------+----+---+
|   | **95**                        | **alt | Valore assunto   | P  |   |
|   |                               | ro**  | dall’istanza ma  |    |   |
|   |                               |       | non previsto     |    |   |
|   |                               |       | dalla specifica. |    |   |
+---+-------------------------------+-------+------------------+----+---+

+---+----------------------+-------+---------+------------------------+---+
|   | **Componenti         | **PEL |         |                        |   |
|   | spaziali della       | L**   |         |                        |   |
|   | classe**             |       |         |                        |   |
+---+----------------------+-------+---------+------------------------+---+
|   | **000202101**        | **MET | **Esten | **GU_CPSurface2D -     | P |
|   |                      | A_SUP | sione** | Composite Surface 2D** |   |
|   |                      | **    |         |                        |   |
+---+----------------------+-------+---------+------------------------+---+

TEMA: Illuminazione pubblica 0708
=================================

**Descrizione**

Questo tema definisce l'organizzazione del sistema di rilevamento degli impianti di illuminazione al servizio di vie e piazze pubbliche, di luoghi pubblici in genere, comprese le aree di pertinenza, i cui costi energetici e manutentivi sono sostenuti direttamente o, tramite concessione, da enti locali, compresi gli impianti corredati da sistemi di rilevazione del fabbisogno d'illuminazione e conseguenti meccanismi di regolazione dell'intensità del flusso luminoso. I concetti su cui si fonda la strutturazione del tema, riguardano le modalità con cui devono essere descritti gli elementi utili alla conoscenza ed al monitoraggio del processo gestionale delle infrastrutture e dei servizi di pubblica illuminazione.

La strutturazione in Classi considera sia l’esigenza di censire puntualmente i dati degli impianti (POD, quadri elettrici e punti luce), sia le conoscenza del contesto territoriale in cui gli stessi sono collocati (zone omogenee e altre Classi del soprasuolo) al fine di rendere più efficaci gli impianti rispondendo in maniera più efficiente alle esigenze dei cittadini e del Paese.

**Figure**

-  Schema organizzativo del tema

|image2|

.. |image2| image:: ./media/image4.jpeg
