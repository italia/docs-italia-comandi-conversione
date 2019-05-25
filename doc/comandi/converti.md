
# Comando `converti`

Questo comando semplifica la conversione di documenti `.docx` o `.odt`
per la pubblicazione in [Docs Italia](http://docs.italia.it/). Se
avete familiarità con [pandoc](https://pandoc.org/) ed i principi di base di
Docs Italia, questo comando è un buon punto di partenza per
semplificare il vostro processo.

## Come convertire un file

Potete convertire un file chiamato `documento.ext` lanciando:

    $ converti documento.ext

Il comando creerà una cartella `risultati-conversione/documento`
contenente i files `.rst` pronti da pubblicare:

    $ ls risultati-conversione/documento/
    documento.rst  index  index.rst  originale.docx

Tenete a mente che quando si usa la riga di comando i nomi che
contengono spazi vanno circondati da apici così:

      $ converti "un documento con spazi nel nome.ext"

Il comando fornisce diverse [opzioni, documentate
qui](converti-opzioni.md).

#### Compatibilità

Questi script richiedono un sistema operativo compatibile con Posix,
il che include Linux e Mac. L'uso degli script con un sistema Windows
è attualmente in fase di studio. 

#### Alternative

Questo software è un prototipo evolutivo che continuiamo a modificare
per migliorarlo. Se preferite lavorare con software più stabile potete
scegliere fra diverse alternative.

`converti` permette di semplificare il processo di conversione
eseguendo diversi passaggi con un solo comando. L'alternativa più
semplice è quella di eseguire i passaggi separatamente, come descritto
nelle [buone pratiche](../buone-pratiche.md).

Esistono anche altri modi di semplificare processi basati su pandoc,
come [panzer](https://github.com/msprev/panzer) e gli altri tool
descritti nella sezione
[workflow](https://github.com/jgm/pandoc/wiki/Pandoc-Extras#workflow)
e nella sezione [wrappers and
interfaces](https://github.com/jgm/pandoc/wiki/Pandoc-wrappers-and-interfaces)
del wiki di pandoc

### Contenuti della cartella risultante

La cartella `risultati-conversione/documento` conterrà diverse
versioni dello stesso documento corrispondenti a diversi stadi di
conversione.

L'ultimo stadio di conversione è quello che produce il file
`index.rst`, quindi nel caso ideale il file `index.rst` ed i contenuti
della cartella `index` saranno già di vostro gradimento e pronti per
la pubblicazione.

Può però darsi che la divisione automatica in sezioni non vi soddisfi,
in quel caso potrete partire da `documento.rst` e dividere
manualmente.

Per praticità la cartella conterrà anche una copia del file nel
formato originale.

Nel caso abbiate attivato i collegamenti automatici alla normativa
come indicato più avanti, troverete anche un file
`documento-senza-collegamenti.rst`. Il motivo è che aggiungere i
collegamenti richiede una tripla conversione e questo può causare più
errori sia in `documento.rst` che nei file suddivisi a partire da
esso.

In ogni caso vi invitiamo a segnalare ogni errore o risultato
indesiderato tramite le issues.

## Collegamenti automatici alla normativa

Questa funzionalità opzionale è disponibile solo per utenti Linux. È possibile
trovare i dettagli
[qui](../link-normattiva.md).

## Conversione di intere cartelle

Consideriamo una cartella contenente diversi documenti come nel seguente caso:

```bash
$ ls carta-docente/
condizioni-generali-esercenti.docx  linee-guida-esercenti.docx
domande-frequenti-esercenti.docx    linee-guida-fatturazione.docx
```

Possiamo facilmente eseguire `converti` su tutti i files con il
seguente ciclo:

```bash
$ find carta-docente/ | while read documento; do converti $documento; done
```

Il comando eseguirà `converti` su ciascun file. `converti` tiene conto
della cartella genitore nel salvare il file in
`risultati-conversione`, quindi i files `.rst` risultano raggruppati:

```bash
$ ls risultati-conversione/carta-docente/
linee-guida-fatturazione/
linee-guida-esercenti/
domande-frequenti-esercenti/
condizioni-generali-esercenti/
```
