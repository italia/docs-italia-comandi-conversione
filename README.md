
# Comandi per la conversione dei documenti nel formato di Docs Italia

> Script e comandi basati su pandoc per la conversione dei documenti
> nel formato di Docs Italia.
> Per tutti quelli che hanno familiarità con la riga di comando e non
> hanno paura di _sporcarsi le mani_. 

## Contenuto del repository

Questo repository contiene una serie di
[comandi](https://it.wikipedia.org/wiki/Shell_(informatica)#Shell_testuali)
da installare sul proprio computer che permettono di convertire dei
documenti di testo verso una serie di formati, tra cui quello previsto
dalla piattaforma di [Docs Italia](https://docs.italia.it).

Rispetto al [convertitore
web](https://github.com/italia/docs-italia-convertitore-web), i
comandi offrono un controllo più fine, prestazioni migliori,
l'automatizzazione di alcuni compiti ripetitivi, e la soluzione di
alcuni problemi specifici. Lo svantaggio è una maggiore complessità di
installazione.

## Requisiti

Questi comandi sono compatibili con Linux e Mac OS (ovvero richiedono
un sistema operativo compatibile con
[Posix](https://it.wikipedia.org/wiki/POSIX)). L'uso dei comandi con
un sistema Windows è attualmente in fase di studio.

I comandi sono consigliati agli utenti che abbiano familiarità con
l'uso della riga di comando o vogliano acquisirla.

## Maggiori informazioni

Per eseguire la [conversione del formato di un
documento](http://guida-docs-italia.readthedocs.io/it/latest/index/scrivere-un-documento.html#migrazione-su-docs-italia-di-documentazione-esistente)
facciamo affidamento principalmente sul comando
[`pandoc`](https://pandoc.org) di cui forniamo un [_fork
italiano_](doc/fork-italiano.md), cioè una versione migliorata dagli
sviluppatori del Team Digitale.

L'installazione locale di questo repository comprende:

- [`pandoc`](doc/comandi/pandoc.md), il principale comando di conversione;
- [`pandoc-to-sphinx`](doc/comandi/pandoc-to-sphinx.md) per
  dividere un documento RST in più pagine da pubblicare su Docs Italia;
- [`pandoc-font-to-style`](doc/comandi/pandoc-font-to-style.md) per
  tenere conto della font nella conversione (e convertire
  correttamente i blocchi di codice, per esempio);
- [`converti`](doc/comandi/converti.md), un'alternativa a `pandoc` che
  applica automaticamente le [buone pratiche di traduzione con
  pandoc](doc/buone-pratiche.md)

I comandi hanno nomi e documentazione in inglese qualora ne sia
immaginabile l'uso al di fuori del contesto italiano.

## Installazione

Potete installare questi comandi con
[stack](https://docs.haskellstack.org/en/stable/README/#how-to-install)
e `git` nei seguenti passi:

    $ git clone https://github.com/italia/docs-italia-comandi-conversione.git
    $ cd docs-italia-comandi-conversione
    $ stack install

Il comando `converti` fa uso dei nostri [filtri
pandoc](https://github.com/italia/docs-italia-pandoc-filters), quindi
per usare quel comando è necessario [installare prima i
filtri](https://github.com/italia/docs-italia-pandoc-filters#installazione).

### Distribuzione eseguibili per ubuntu

La procedura d'installazione spiegata sopra richiede alcuni gigabytes
di spazio sul disco. Se disponete di un sistema Ubuntu 16.04 potete
risparmiare spazio ed ottenere un'installazione più rapida utilizzando
le versioni eseguibili dei comandi che distribuiamo [su
Github](https://github.com/italia/docs-italia-comandi-conversione/releases).

Per installarli scegliete la versione più recente, scaricare
l'archivio `comandi-conversione.zip` e salvate gli eseguibili lì
contenuti in una cartella che sia sul vostro
[`$PATH`](doc/aggiornamento-path.md#cos%C3%A8-il-path).

Alcuni utenti hanno usato i comandi con successo anche su Ubuntu 14.04

## Come contribuire allo sviluppo dei comandi

Qualsiasi contributo o suggerimento è benvenuto e può essere proposto
tramite le
[issues](https://github.com/italia/pandoc-docs2rst/issues). Chi è
interessato a contribuire al codice può dare un'occhiata alle [note di
sviluppo](sviluppo.md).

## Riconoscimenti

Fra i molti collaboratori si ringraziano Alberto Torin
([@atorin](https://github.com/atorin)) per la guida ed il contributo
costante allo sviluppo della logica di conversione, e Pablo Persico
([@pablopers](https://github.com/pablopers)) per l'instancabile
attività di test, l'entusiasmo ed il cricicismo costruttivo

---

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
