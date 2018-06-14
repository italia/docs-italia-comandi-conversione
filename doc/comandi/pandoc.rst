Sinossi
=======

``pandoc`` [*opzioni*] [*file da convertire*] -o [*file risultato*]

Descrizione
===========

Pandoc è un
`comando <https://it.wikipedia.org/wiki/Shell_(informatica)#Shell_testuali>`__
per la conversione da un formato all’altro.

Pandoc può convertire fra diversi formati di *markup* e formati binari
incluso diversi dialetti di
`Markdown <http://daringfireball.net/projects/markdown/>`__,
`HTML <http://www.w3.org/html/>`__, `LaTeX <http://latex-project.org>`__
e `Word docx <https://en.wikipedia.org/wiki/Office_Open_XML>`__. Per la
lista completa dei formati di ingresso ed uscita, si vedano le opzioni
``--from`` e ``--to`` [più avanti][Opzioni generali].

Pandoc ha una struttura modulare: è composto da un’insieme di lettori
che interpretano un documento scritto in un formato e ne estraggono gli
elementi principali. Questi vengono passati ad uno degli scrittori al
fine di produrre un documento del formato desiderato. Grazie a
quest’idea, è facile supportare nuovi formati sviluppando semplicemente
uno scrittore o un lettore. Inoltre gli utenti possono eseguire
`filtri <http://pandoc.org/filters.html>`__ personalizzati per
modificare la struttura di un documento.

L’idea di estrarre gli elementi a comune da documenti di formato diverso
ha come conseguenza la perdita di alcune caratteristiche. Gli elementi
traducibili sono sempre meno espressivi rispetto a tutti quelli
supportati da un formato specifico: per esempio rST non permette di
specificare il carattere del testo, il che è invece possibile con
OpenXML.

Per maggiori dettagli rimandiamo alla `documentazione ufficiale di
pandoc (in inglese) <pandoc.org>`__.
