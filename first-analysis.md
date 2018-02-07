
non potendo trovare una soluzione per la traduzione diretta da PDF a
RST, ho considerato le opzioni disponibili per svilupparne una
partendo da un parser PDF.

le conclusioni e le stime sono alla fine del documento, di seguito
descrivo i risultati della ricerca ed elenco qualche riferimento.

#### opzioni considerate

cercando PDF parsers su Github, la maggior parte dei risultati sembra
essere in python. questo ci aiuta perché le migliori librerie per
scrivere RST sono in python. abbiamo dunque un buon parser e buoni
serialiser disponibili in questo linguaggio.

un'alternativa é di estendere pandoc usando una libreria di parsing
PDF in haskell. i vantaggi sarebbero:

- minori tempi di sviluppo a parità di qualità del parser, per il type check
- riutilizzare l'infrastruttura di sviluppo di pandoc, come i tests
- un risultato parziale potrebbe più facilmente ricevere interesse e trazione
- semplicità d'uso per l'utente

fra questi vantaggi credo che il principale sia il primo

#### opzione python

le migliori opzioni per il parsing sembrano essere

- https://github.com/mstamy2/PyPDF2
- https://github.com/euske/pdfminer

entrambi i progetti hanno una comunità, PyPDF2 é stato aggiornato più
di recente.

##### pdfminer

`pdfminer` sembra avere una rappresentazione di basso livello del
documento PDF, quindi convertire in un documento formattato potrebbe
richiedere logica complessa.

in `pdfminer/converter.py` sono contenuti i renderer HTML e testo che sembrano
abbastanza succinti, il che é promettente. é un buon punto di partenza
per esplorare il modello.

il modello non sembra essere molto dettagliato. non ci sono menzioni
ad elenchi puntati, corsivo, grassetto etcetera. più che altro si
tratta di blocchi di testo.

##### PyPDF

il codice del parser é tutto in `PyPDF2/pdf.py`. il data model sembra
essere in `PyPDF/generic.py` e sembra di basso livello con oggetti
come destinazioni, dizionari, alberi eccetera.

questa libreria potrebbe essere adatta alla manipolazione di PDF, ma
non ci aiuta ad estrarne la formattazione.

#### opzione haskell

il miglior parser disponibile in questo caso é
https://github.com/Yuras/pdf-toolbox, che non sembra mantenuto molto
attivamente.

questo é il package di alto livello del toolbox
https://hackage.haskell.org/package/pdf-toolbox-document. definisce
modelli costruiti tu alberi di pagine e dizionari all'interno di
`Pdf.Document.Internal.Types`

#### altri linguaggi

nonostante javascript sia il terzo linguaggio più popolare su Github
quando si cerca "pdf", la gran parte dei progetti sono dedicati alla
generazione di PDF per il web.

##### c++

- https://github.com/Gottox/node-pdfutils i think it's low level as well
- https://github.com/flexpaper/pdf2json they have a service on this
- https://github.com/allenai/pdffigures
- https://github.com/allenai/pdffigures2

##### java

- https://github.com/JonathanLink/PDFLayoutTextStripper
- https://github.com/nisaacson/pdf-extract

#### conclusioni

da quel che mi pare di capire il parsing di documenti PDF é una
sfida. tali documenti sono più simili ad immagini che ad un testo
formattato, quindi la logica di estrazione può richiedere euristiche
più o meno complesse a seconda della qualità di formattazione
desiderata.

un caso a parte sembrano essere tabelle, figure e files dove il testo
é incluso come immagine. queste parti del documento potrebbero
richiedere tool o servizi dedicati come
[questo](https://pdftables.com/).

i parser disponibili in python sono di basso livello come quelli
disponibili in haskell. per quello che riguarda c++ e java ho
considerato le librerie solo velocemente ma credo siamo allo stesso
livello. la struttura interna di un documento PDF non contiene
informazioni di formattazione ma solo posizioni e relazioni fra gli
elementi, quindi tutte le librerie disponibili sembrano limitarsi ad
estrarre nodi di testo con posizione, il resto toccherebbe a noi.

#### stima

utilizzando la libreria haskell credo che dopo una settimana saremmo
capaci di estrarre il testo diviso in paragrafi e pagine, forse
conservando la struttura ad albero del contenuto. tradurre tabelle e
figure potrebbe presentare problemi. elenchi puntati, grassetti e
altri stili verrebbero omessi e trasformati in testo normale.

da quel momento in poi, ogni diverso tipo di formattazione da estrarre
potrebbe richiedere un tempo diverso. non mi sorprenderebbe se
riconoscere alcune strutture come tabelle, bordi o annotazioni
particolari richiedesse fino a un mese o più di lavoro, considerato
che c'é chi offre un servizio solo per le tabelle.
