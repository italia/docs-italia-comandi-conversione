
A _pandoc sink_ is a command consuming a pandoc document formatted as
JSON. Similarly, a _pandoc source_ is a command producing a pandoc
document formatted as JSON.

### Rationale and examples

The advantage of providing users with pandoc sinks and sources is that
such comm ands can operate from and to all formats supported by pandoc
without any information loss, like pandoc filters do.

#### Source example

Let's consider a source that reads the contents of a directory and
produces an explanatory report about it. We could use it to produce an
HTML report by running:

    $ dir-to-pandoc | pandoc -f json -o report.html

#### Sink example

Let's consider a sink called `pandoc-to-links` that picks the links
from a document. We could use it to analyse links in an OpenXML
document by running:

    $ pandoc document.docx -t json | pandoc-to-links | check-links
    `gogle.com` points nowhere
    the certificate for `githb.com` cannot be verified

#### Alternatives

Sinks and sources allow us to have maximum portability for our logic
when writing a command that uses pandoc as a parsing or serialising
library. By using the JSON representation we make sure that there is
no loss of information when converting to a different format with
pandoc.

For instance if we opted to use an HTML representation for the
directory source above, we could still produce reports formatted
differently by running:

    $ dit-to-html | pandoc -f html -o report.markdown

In comparison to the _source_ approach, this involves an additional
HTML serialisation and HTML parsing, operations that are error-prone
and could introduce artifacts in the content

### Comparison with pandoc filters

The idea of sinks and sources stemmed from understanding the power of
pandoc filters. While filters are document transformations, sinks are
arbitrary commands consuming a document and sources are arbitrary
commands producing a document.

### Naming convention

Sinks could have names starting with `pandoc-to-...` while sources
could have names ending in `...-to-pandoc`.

### In the wild

The `pandoc-to-sphinx` command in this repo is a sink