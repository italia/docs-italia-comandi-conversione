FATTURAZIONE
------------

.. _header-added-by-pandoc-7:

header added by pandoc
~~~~~~~~~~~~~~~~~~~~~~

Agli esercenti viene riconosciuto un credito per ogni buono riscosso da dichiarare in sede di fatturazione elettronica.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

L’esercente dovrà preparare la fattura in formato elettronico secondo il tracciato stabilito per la fatturazione elettronica verso la pubblica amministrazione (“Schema del file xml FatturaPA - versione 1.1” reperibile nel sito `www.fatturapa.gov.it, <http://www.fatturapa.gov.it/>`__ sezione Norme e regole, Documentazione FatturaPA).

La valorizzazione degli elementi del tracciato xml dovrà rispettare i requisiti formali e di obbligatorietà previsti e, con particolare riferimento al blocco 2.2.1 <DettaglioLinee>, dovrà tener conto delle indicazioni riportate nel documento “\ **Linee guida fatturazione esercente**\ ” disponibili nell’applicazione 18app.

APPLICAZIONE 18APP ALLEGATO

LINEE GUIDA PER ESERCENTI PAG. 8 DI 26

ALLEGATO 1
''''''''''

**Allegato 1 – Specifica WS online**

APPLICAZIONE 18APP ALLEGATO

LINEE GUIDA PER ESERCENTI PAG. 9 DI 26

18app
=====

**Servizio Web per verifica voucher degli esercenti**

Gli esercenti registrati al servizio “\ **18app**\ ” per la vendita online potranno validare nei propri sistemi i voucher di acquisto di beni da parte dei 18enni utilizzando uno specifico servizio web di cui si forniscono di seguito le specifiche di utilizzo.

**In merito agli endpoint, si precisa che al momento l’indirizzo referenziato nel wsdl (**\ `http://bonus.mibact.it/VerificaVoucher\\ <http://bonus.mibact.it/VerificaVoucher\>`__ **) è provvisorio.**

Il servizio web di **verifica del voucher** da parte degli esercenti rende disponibili 2 principali operazioni (“**Check**\ ” e “\ **Confirm**\ ”). La seguente descrizione delle operazioni è necessaria per valorizzare adeguatamente i campi di input. Pertanto le operazioni esposte dall’interfaccia wsdl possono essere descritte come segue: