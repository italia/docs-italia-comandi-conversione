% Guida all'uso di Pandoc
% Francesco Occhipinti, Pablo Persico, Alberto Torin, ...
% Giugno 2018

Sinossi
=======

`pandoc` [*opzioni*] [*file da convertire*] -o [*file risultato*]

Descrizione
===========

Pandoc è un
[comando](https://it.wikipedia.org/wiki/Shell_(informatica)#Shell_testuali)
per la conversione da un formato all'altro.

Pandoc può convertire fra diversi formati di _markup_ e formati binari
incluso diversi dialetti di [Markdown], [HTML], [LaTeX] e [Word
docx]. Per la lista completa dei formati di ingresso ed uscita, si
vedano le opzioni `--from` e `--to` [più avanti][Opzioni generali].

Pandoc ha una struttura modulare: è composto da un'insieme di lettori
che interpretano un documento scritto in un formato e ne estraggono
gli elementi principali. Questi vengono passati ad uno degli scrittori
al fine di produrre un documento del formato desiderato. Grazie a
quest'idea, è facile supportare nuovi formati sviluppando
semplicemente uno scrittore o un lettore. Inoltre gli utenti possono
eseguire [filtri] personalizzati per modificare la struttura di un
documento.

L'idea di estrarre gli elementi a comune da documenti di formato
diverso ha come conseguenza la perdita di alcune caratteristiche. Gli
elementi traducibili sono sempre meno espressivi rispetto a tutti
quelli supportati da un formato specifico: per esempio rST non
permette di specificare il carattere del testo, il che è invece
possibile con OpenXML.

Per maggiori dettagli rimandiamo alla [documentazione ufficiale di
pandoc (in inglese)](pandoc.org).

[filtri]: http://pandoc.org/filters.html
[Markdown]: http://daringfireball.net/projects/markdown/
[CommonMark]: http://commonmark.org
[PHP Markdown Extra]: https://michelf.ca/projects/php-markdown/extra/
[GitHub-Flavored Markdown]: https://help.github.com/articles/github-flavored-markdown/
[MultiMarkdown]: http://fletcherpenney.net/multimarkdown/
[reStructuredText]: http://docutils.sourceforge.net/docs/ref/rst/introduction.html
[S5]: http://meyerweb.com/eric/tools/s5/
[Slidy]: http://www.w3.org/Talks/Tools/Slidy/
[Slideous]: http://goessner.net/articles/slideous/
[HTML]: http://www.w3.org/html/
[HTML5]: http://www.w3.org/TR/html5/
[polyglot markup]: https://www.w3.org/TR/html-polyglot/
[XHTML]: http://www.w3.org/TR/xhtml1/
[LaTeX]: http://latex-project.org
[`beamer`]: https://ctan.org/pkg/beamer
[Beamer User's Guide]: http://ctan.math.utah.edu/ctan/tex-archive/macros/latex/contrib/beamer/doc/beameruserguide.pdf
[ConTeXt]: http://www.contextgarden.net/
[Rich Text Format]: http://en.wikipedia.org/wiki/Rich_Text_Format
[DocBook]: http://docbook.org
[JATS]: https://jats.nlm.nih.gov
[txt2tags]: http://txt2tags.org
[EPUB]: http://idpf.org/epub
[OPML]: http://dev.opml.org/spec2.html
[OpenDocument]: http://opendocument.xml.org
[ODT]: http://en.wikipedia.org/wiki/OpenDocument
[Textile]: http://redcloth.org/textile
[MediaWiki markup]: https://www.mediawiki.org/wiki/Help:Formatting
[DokuWiki markup]: https://www.dokuwiki.org/dokuwiki
[ZimWiki markup]: http://zim-wiki.org/manual/Help/Wiki_Syntax.html
[TWiki markup]: http://twiki.org/cgi-bin/view/TWiki/TextFormattingRules
[TikiWiki markup]: https://doc.tiki.org/Wiki-Syntax-Text#The_Markup_Language_Wiki-Syntax
[Haddock markup]: https://www.haskell.org/haddock/doc/html/ch03s08.html
[Creole 1.0]: http://www.wikicreole.org/wiki/Creole1.0
[groff man]: http://man7.org/linux/man-pages/man7/groff_man.7.html
[groff ms]: http://man7.org/linux/man-pages/man7/groff_ms.7.html
[Haskell]: https://www.haskell.org
[GNU Texinfo]: http://www.gnu.org/software/texinfo/
[Emacs Org mode]: http://orgmode.org
[AsciiDoc]: http://www.methods.co.nz/asciidoc/
[DZSlides]: http://paulrouget.com/dzslides/
[Word docx]: https://en.wikipedia.org/wiki/Office_Open_XML
[PDF]: https://www.adobe.com/pdf/
[reveal.js]: http://lab.hakim.se/reveal-js/
[FictionBook2]: http://www.fictionbook.org/index.php/Eng:XML_Schema_Fictionbook_2.1
[InDesign ICML]: http://wwwimages.adobe.com/www.adobe.com/content/dam/acom/en/devnet/indesign/sdk/cs6/idml/idml-cookbook.pdf
[TEI Simple]: https://github.com/TEIC/TEI-Simple
[Muse]: https://amusewiki.org/library/manual
[PowerPoint]: https://en.wikipedia.org/wiki/Microsoft_PowerPoint
[Vimwiki]: https://vimwiki.github.io
