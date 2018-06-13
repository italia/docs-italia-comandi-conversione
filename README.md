
# Comandi per la Conversione

Qui trovate alcuni
[comandi](https://it.wikipedia.org/wiki/Shell_(informatica)#Shell_testuali)
per la conversione di documenti da un formato all'altro, sviluppati
all'interno del progetto Docs Italia. Se non avete familiarità con il
tema della conversione di formato,
[questo](http://guida-docs-italia.readthedocs.io/it/latest/index/scrivere-un-documento.html#migrazione-su-docs-italia-di-documentazione-esistente)
è un buon punto di partenza per imparare di più.

Il comando principale che forniamo è [`pandoc`](https://pandoc.org),
qui incluso nella sua versione italiana modificata, il _fork
italiano_. Ecco l'elenco completo dei comandi che otterrete dopo
l'installazione:

- [`pandoc`](pandoc.org) il principale comando di conversione
- [`pandoc-to-sphinx`](doc/comandi/pandoc-font-to-style.md) per
  dividere un documento rST in più pagine da pubblicare
- [`pandoc-font-to-style`](doc/comandi/pandoc-font-to-style.md) per
  tenere conto del carattere nella conversione
- [`converti`](doc/comandi/converti.md) un'alternativa a `pandoc`
  consigliabile per gli utenti più esperti, applica automaticamente le
  buone pratiche

Prima di intraprendere l'uso di altri comandi consigliamo di
familiarizzarsi con l'uso di [pandoc](https://pandoc.org). Qui trovate
anche un breve testo sulle [buone pratiche di traduzione con
pandoc](doc/buone-pratiche.md).

I comandi hanno nomi e documentazione in inglese qualora ne sia
immaginabile l'uso al di fuori del contesto italiano.

#### Compatibilità

Questi script richiedono un sistema operativo compatibile con Posix,
il che include Linux e Mac. L'uso degli script con un sistema Windows
è attualmente in fase di studio. 

## Installazione

Puoi installare questi comandi con
[stack](https://docs.haskellstack.org/en/stable/README/#how-to-install)
e `git` nei seguenti passi:

    $ git clone https://github.com/italia/docs-italia-comandi-conversione.git
    $ cd docs-italia-comandi-conversione
    $ stack install

Il comando `converti` fa uso dei nostri [filtri
pandoc](https://github.com/italia/docs-italia-pandoc-filters), quindi
per usare quel comando è necessario [installare prima i
filtri](https://github.com/italia/docs-italia-pandoc-filters#installazione).

## Contribuire

Qualsiasi contributo o suggerimento è benvenuto e può
essere proposto tramite le [issues](https://github.com/italia/pandoc-docs2rst/issues).

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
