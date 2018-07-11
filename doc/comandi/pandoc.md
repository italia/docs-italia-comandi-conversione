
# pandoc

`pandoc <https://pandoc.org/>`__ è un programma da linea di comando
che permette di convertire documenti in formato DOCX e ODT verso
diversi [formati di
markup](https://it.wikipedia.org/wiki/Linguaggio_di_markup>), incluso
il formato `.rst`.

Questo programma permette di migrare su Docs Italia la documentazione
prodotta in altri formati, limitando l’intervento manuale.

#### Limitazioni

- pandoc accetta documenti in formato DOCX, ma non in formato DOC
- pandoc non accetta documenti in formato PDF

#### Uso di pandoc

Nel caso più semplice si può usare pandoc per convertire contenuti
lanciandolo così:

    $ pandoc origine.docx -o destinazione.rst

Ci sono una serie di opzioni ed accorgimenti che è consigliabile
adottare quando si converte un documento tramite pandoc: li abbiamo
raccolti in questa pagina sulle [buone pratiche di
conversione](../buone-pratiche.md).

#### Comunità e documentazione

Gli utenti di pandoc costituiscono una comunità che collabora
migliorando la [documentazione ufficiale](http://pandoc.org/),
discutendo sulla [mailing
list](https://groups.google.com/forum/#!forum/pandoc-discuss) e
tramite le [issues su
Github](https://github.com/jgm/pandoc/issues). Il Team Digitale è in
contatto con questa comunità e collabora con essa al fine del
miglioramento di pandoc.

Nonostante abbiamo intrapreso iniziative di traduzione in Italiano
della documentazione, la comunità degli utenti di pandoc è
internazionale quindi i contenuti più aggiornati o avanzati saranno
inevitabilmente accessibili solo in inglese.

