
# Convert Docs Italia

> See [README-en](README-en.md) for a description in English

Questo comando semplifica la conversione di documenti `.docx` o `.odt`
per la pubblicazione in [Docs Italia](http://docs.italia.it/). Se hai
familiarità con [pandoc](pandoc.org) ed i principi di base di Docs
Italia, questo comando è un buon punto di partenza per semplificare il
tuo processo.

#### Compatibilità

Questi script richiedono un sistema operativo compatibile con Posix,
il che include Linux e Mac. L'uso degli script con un sistema Windows
è attualmente in fase di studio. 

#### Alternative

Questo software è un prototipo evolutivo che continuiamo a modificare
per migliorarlo. Se preferite lavorare con software più stabile potete
scegliere fra diverse alternative.

`convert-docs-italia` permette di semplificare il processo di
conversione eseguendo diversi passaggi con un solo
comando. L'alternativa più semplice è quella di eseguire i passaggi
separatamente, come descritto in questa breve
[guida](https://github.com/italia/pandoc-docs2rst/blob/master/guida.md).

Esistono anche altri modi di semplificare processi basati su pandoc,
come [panzer](https://github.com/msprev/panzer) e gli altri tool
descritti [nella sezione _workflow_ del wiki di pandoc](
https://github.com/jgm/pandoc/wiki/Pandoc-Extras#workflow)

## Come convertire un file

Prima di tutto, [esegui l'installazione](#installazione).

Per convertire un file `.docx` o `.odt` chiamato `nome-file.ext`,

- salva il file nella cartella `input/loose`

- `cd` alla cartella di `docs2rst`

- da linea di comando, esegui:

      $ stack exec convert-docs-italia input/loose/nome-file.ext

Se non si verificano errori, troverai i files `.rst` nella cartella
`output/loose/nome-file`.

Tenete a mente che usando la riga di comando, i nomi di files vanno
scritti fra apici se contengono spazi, così:

      $ stack exec convert-docs-italia "input/loose/file con spazi.ext"

### Documento convertito e file strutturati

L'intero documento verrà convertito in un file chiamato `document.rst`. 

A partire da quello proviamo anche a strutturare automaticamente i
contenuti in un formato adatto a Docs Italia, dividendo il documento di origine
in file separati a livello di sezioni. A questo scopo vengono prodotti un file
`index.rst` e altri files `.rst` collegati ad esso.

Se i files strutturati in sezioni ti soddisfano puoi semplicemente
ignorare o rimuovere `document.rst`. In caso contrario puoi partire da
`document.rst` e strutturare manualmente i files per Docs Italia.

In ogni caso, ti invitiamo a segnalare ogni errore di conversione o
strutturazione tramite le issues.

### Conversione di intere cartelle

Per convertire una cartella piena di documenti, puoi
salvare la cartella in `input` ed eseguire `$ . update all`

## Installazione

Puoi installare questo comando con
[stack](https://docs.haskellstack.org/en/stable/README/#how-to-install)
e `git` nei seguenti passi:

    $ git clone https://github.com/italia/pandoc-docs2rst.git
    $ cd pandoc-docs2rst
    $ git clone https://github.com/italia/pandoc-filters.git
    $ stack install

Il repository dei filtri dovrebbe essere contenuto nel primo così:

    pandoc-docs2rst/
        pandoc-filters/

## Funzionalità opzionali

### Test dell'ambiente di conversione

Questo repository contiene anche dei documenti di esempio già convertiti. 

Per essere certi che gli script di conversione funzionino come ci si
aspetta, è possibile eseguire `$ . update-all.sh`. Il comando
convertirà nuovamente tutti i documenti presenti (l'operazione
potrebbe richiedere un po' di tempo).

L'operazione non dovrebbe produrre alcun output e dopo l'esecuzione il 
comando `git status` non dovrebbe mostrare alcun cambiamento.

Se riscontri delle differenze c'è qualcosa che non va: puoi
segnalarcelo aprendo una issue o una pull request. La tua copia del
repo potrebbe contenere documenti su cui stai ancora lavorando, quindi
fai attenzione a fare commit solo di ciò che è pubblicabile.

I documenti sono tradotti includendo i collegamenti automatici alla
normativa, come descritto nel prossimo paragrafo. Se non hai
configurato i collegamenti automatici riscontrerai sicuramente delle
differenze nel risultato.

### Collegamenti automatici alla normativa

Questa funzionalità è disponibile solo per utenti Linux. È possibile
trovare i dettagli
[qui](https://github.com/italia/pandoc-docs2rst/blob/master/link-normattiva.md).

## Contribuire

Qualsiasi contributo o suggerimento è benvenuto e può
essere proposto tramite le [issues](https://github.com/italia/pandoc-docs2rst/issues).

## Documents License

Sample documents are collected from the forum at docs.italia.it or
from other public domain sources. Where not specified differently, the
license is CC-BY 3.0 as written
[here](https://developers.italia.it/en/note-legali/)

## Software License

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
