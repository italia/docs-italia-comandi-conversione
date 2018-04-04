18app
=====

**Servizio Web per verifica voucher degli esercenti**

Gli esercenti registrati al servizio “\ **18app**\ ” per la vendita
online potranno validare nei propri sistemi i voucher di acquisto di
beni da parte dei 18enni utilizzando uno specifico servizio web di cui
si forniscono di seguito le specifiche di utilizzo.

**In merito agli endpoint, si precisa che al momento l’indirizzo
referenziato nel wsdl
(**\ `http://bonus.mibact.it/VerificaVoucher <http://bonus.mibact.it/VerificaVoucher>`__\ **)
è provvisorio.**

Il servizio web di **verifica del voucher** da parte degli esercenti
rende disponibili 2 principali operazioni (“**Check**\ ” e
“\ **Confirm**\ ”). La seguente descrizione delle operazioni è
necessaria per valorizzare adeguatamente i campi di input. Pertanto le
operazioni esposte dall’interfaccia wsdl possono essere descritte come
segue:

.. _header-added-by-pandoc-8:

header added by pandoc
----------------------

.. _header-added-by-pandoc-9:

header added by pandoc
~~~~~~~~~~~~~~~~~~~~~~

.. _header-added-by-pandoc-10:

header added by pandoc
^^^^^^^^^^^^^^^^^^^^^^

Check
'''''

+-------+-----------------------------------+--------------------------+
| INPUT | tipo operazione                   | *“1”, “2”*               |
| :     |                                   |                          |
+=======+===================================+==========================+
| OUTPU | codice voucher nominativo         | *CF o Nome e Cognome*    |
| T:    | beneficiario                      |                          |
+-------+-----------------------------------+--------------------------+
|       | partita IVA esercente ambito      | *cinema, teatro,         |
|       |                                   | libreria…*               |
+-------+-----------------------------------+--------------------------+
|       | bene                              | *libri, spettacoli…*     |
+-------+-----------------------------------+--------------------------+
|       | importo                           | *importo totale del      |
|       |                                   | voucher*                 |
+-------+-----------------------------------+--------------------------+

Se **tipo operazione** verrà valorizzato con **“1”**, il check del
voucher restituerà all’esercente i campi previsti in output senza
consumare il voucher e quindi senza scalare l’importo dal borsellino del
beneficiario. Questa modalità di utilizzo dell’operazione non è
obbligatoria, ma lascia all’esercente la possibilità di eseguire un
controllo tra il nominativo del beneficiario e quello del suo cliente in
sessione.

Se **tipo operazione** verrà valorizzato con **“2”**, il check del
voucher consumerà direttamente l’importo, scalandolo dal borsellino del
beneficiario, e restituerà comunque le informazioni previste in output.
L’esercente potrà scegliere di usare direttamente questa modalità oppure
effettuare due chiamate successive: la prima per il controllo del
beneficiario e la seconda per l’effettivo utilizzo del voucher.

Il sequence diagram seguente descrive ad alto livello l’interazione tra
i vari sistemi coinvolti, nei casi fin qui descritti:

|image0|

APPLICAZIONE 18APP ALLEGATO

LINEE GUIDA PER ESERCENTI PAG. 10 DI 26

Confirm
'''''''

+--------+-----------------------+------------------------------------+
| INPUT: | tipo operazione       | *“1”*                              |
+========+=======================+====================================+
|        | codice voucher        | *importo confermato                |
|        | importo               | dall’esercente*                    |
+--------+-----------------------+------------------------------------+
| OUTPUT | esito                 |                                    |
| :      |                       |                                    |
+--------+-----------------------+------------------------------------+

In questa versione del servizio il **tipo operazione** verrà valorizzato
sempre con **“1”** e l’esercente potrà comunicare la quota utilizzata
rispetto all’importo totale del voucher, momentaneamente impegnato. Il
sistema scalerà l’importo dal borsellino del beneficiario,
riaccreditando la parte non utilizzata, calcolata come differenza tra il
valore totale del voucher e l’importo comunicato dall’esercente.

L’\ **esito** dell’operazione (**“OK”** / **“KO”**) sarà restituito
all’esercente che potrà eventualmente fornire un feedback al
beneficiario.

APPLICAZIONE 18APP ALLEGATO

LINEE GUIDA PER ESERCENTI PAG. 11 DI 26

.. |image0| image:: media/media/image1.png
