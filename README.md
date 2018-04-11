
# Docs To RST

> See [README-en](README-en.md) for a description in English

Questo repo è il tuo punto di partenza se vuoi convertire un documento
`.docx` o `.odt` trasformandolo in un insieme di files `.rst` da
caricare su ReadTheDocs o su Docs Italia.

Gli script qui inclusi si basano principalmente su Pandoc, che viene
invocato con un insieme di opzioni e filtri che ci sono sembrati utili
in passato. Qualsiasi contributo o suggerimento è benvenuto e può
essere proposto tramite le issues.

#### È semplice

Vogliamo che l'utilizzo di questi script sia il più semplice
possibile. Dopo l'installazione si può tradurre un documento
salvandolo in `input-docx/loose` ed eseguendo:

    docs2rst $ ./translate.hs -i input-docx/loose/document.docx -t rst

Se non si verificano errori troverai i files `.rst` nella cartella
`output/loose/document`, se `document` era il nome del tuo documento

### Installazione

Per usare questo repo serve fondamentalmente una versione recente di
Pandoc ed il comando `stack` per gestire le dipendenze Haskell, le
istruzioni per averli sono linkate di seguito, in inglese:

- [come installare stack](https://docs.haskellstack.org/en/stable/README/#how-to-install)
- [come installare pandoc con stack](http://pandoc.org/installing.html#quick-stack-method)

Installare pandoc con stack ti permetterà di usare la versione più
recente di pandoc sulla tua macchina. Docs Italia contribuisce
costantemente al miglioramento di pandoc e le modifiche più recenti
sono disponibili solo installando in questo modo.

Quando `stack` e `pandoc` saranno disponibili sul tuo sistema basterà:

- clonare questo repo
- clonare il repo coi filtri

Clona così:

   docs2rst $ git clone git@github.com:italia/pandoc-filters.git

In modo che il secondo repo sia contenuto nel primo secondo la
seguente struttura:

    pandoc-docs2rst/
        pandoc-filters/

- test finale opzionale

Questo repo contiene anche dei documenti già convertiti. Se vuoi
essere sicur* di usare la versione più recente di pandoc e che gli
script di conversione funzionino come ci si aspetta, puoi eseguire
`docs2rst $ . update-all.sh`. Il comando impiegherà un po' di tempo
per convertire tutti i documenti di nuovo, non dovrebbe esserci nessun
output e dopo l'esecuzione il comando `git status` non dovrebbe
mostrare nessun cambiamento.

### Documents License

Sample documents are collected from the forum at docs.italia.it or
from other public domain sources. Where not specified differently, the
license is CC-BY 3.0 as written
[here](https://developers.italia.it/en/note-legali/)

### Software License

Copyright (c) the respective contributors, as shown by the AUTHORS file.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
