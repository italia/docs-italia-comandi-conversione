# Comandi per la conversione dei documenti nel formato di Docs Italia

> Script e comandi basati su pandoc per la conversione dei documenti
> nel formato di Docs Italia.
> Per tutti quelli che hanno familiarità con la riga di comando e non
> hanno paura di _sporcarsi le mani_. 

## Contenuto del repository

Questo repository contiene una serie di [script e
comandi](https://it.wikipedia.org/wiki/Shell_(informatica)#Shell_testuali) da
installare sul proprio computer che permettono di convertire dei documenti di
testo verso una serie di formati, tra cui quello previsto dalla piattaforma di
[Docs Italia](https://docs.italia.it). 

Il vantaggio è che questi script permettono di semplificare la conversione
dei documenti applicando filtri e correzioni avanzate dei possibili errori.

Questi script vengono eseguiti da riga di comando. 


## Requisiti

Questi script sono compatibili con Linux e Mac OS (ovvero richiedono un sistema operativo compatibile con [Posix](https://it.wikipedia.org/wiki/POSIX)). L'uso degli script con un sistema Windows è attualmente in fase di studio. 

Prima di usare i comandi contenuti in questo repository consigliamo di
familiarizzarsi con l'uso di [pandoc](https://pandoc.org). 

## Maggiori informazioni

Questi script eseguono una [conversione del formato di un documento](http://guida-docs-italia.readthedocs.io/it/latest/index/scrivere-un-documento.html#migrazione-su-docs-italia-di-documentazione-esistente) in maniera automatica. 

Tutti gli script si basano sul _fork italiano_ di [`pandoc`](https://pandoc.org),
che verrà scaricato localmente durante l'installazione. 

L'installazione local di questo repository comprende:

- [`pandoc`](https://pandoc.org), il principale comando di conversione;
- [`pandoc-to-sphinx`](doc/comandi/pandoc-to-sphinx.md) per
  dividere un documento RST in più pagine da pubblicare su Docs Italia;
- [`pandoc-font-to-style`](doc/comandi/pandoc-font-to-style.md) per
  tenere conto della font nella conversione (e convertire correttamente i blocchi di codice, per esempio);
- [`converti`](doc/comandi/converti.md), un'alternativa a `pandoc`
  consigliabile per gli utenti più esperti, che applica automaticamente le
  [buone pratiche di traduzione con pandoc](doc/buone-pratiche.md)


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

La procedura d'installazione spiegata sopra richiede alcuni gigabytes di spazio sul disco,  Se disponete di un sistema Ubuntu 16.04 potete risparmiare tempo e
spazio sul disco utilizzando le versioni eseguibili dei comandi che
distribuiamo [su
Github](https://github.com/italia/docs-italia-comandi-conversione/releases).

Per installarli scegliete la versione più recente, scaricare
l'archivio `comandi-conversione.zip` e salvate gli eseguibili lì
contenuti in una cartella che sia sul vostro
[`$PATH`](doc/aggiornamento-path.md#cos%C3%A8-il-path)

## Convertire un documento

[DA COMPLETARE]


## Come contribuire allo sviluppo dei comandi

Qualsiasi contributo o suggerimento è benvenuto e può
essere proposto tramite le [issues](https://github.com/italia/pandoc-docs2rst/issues).

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
