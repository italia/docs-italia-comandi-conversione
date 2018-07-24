
A _pandoc consumer_ is a command consuming a pandoc document formatted
as JSON. Similarly, a _pandoc producer_ is a command producing a
pandoc document formatted as JSON.

### Rationale and examples

The advantage of providing users with pandoc producers and consumers
is that such commands can operate from and to all formats supported by
pandoc without any information loss, like pandoc filters do.

#### Consumer example

Let's consider a consumer called `pandoc-to-links` that picks the
links from a document. We could use it to analyse links in an OpenXML
document by running:

    $ pandoc document.docx -t json | pandoc-to-links | check-links
    `gogle.com` points nowhere
    the certificate for `githb.com` cannot be verified

#### Producer example

Let's consider a command that reads the contents of a directory and
produces an explanatory report about it. We could use it to produce an
HTML report by running:

    $ dir-to-pandoc | pandoc -f json -o report.html

#### Alternatives

Consumers and producers allow us to have maximum portability for our logic
when writing a command that uses pandoc as a parsing or serialising
library. By using the JSON representation we make sure that there is
no loss of information when converting to a different format with
pandoc.

For instance if we opted to use an HTML representation for the
directory producer above, we could still produce reports formatted
differently by running:

    $ dit-to-html | pandoc -f html -o report.markdown

In comparison to the _producer_ approach, this involves an additional
HTML serialisation and HTML parsing, operations that are error-prone
and could introduce artifacts in the content

### Comparison with pandoc filters

The idea of consumers and producers stemmed from understanding the
power of pandoc filters. While filters are document transformations,
consumers are arbitrary commands consuming a document and producers
are arbitrary commands producing a document.

### Naming convention

Consumers could have names starting with `pandoc-to-...` while
producers could have names ending in `...-to-pandoc`.

### In the wild

- The `pandoc-to-sphinx` command in this repo is a consumer
- [pandoc-placetable](https://github.com/mb21/pandoc-placetable#usage)
  can be used as a producer from CSV

This idea has been presented [here in
pandoc-discuss](https://groups.google.com/forum/#!topic/pandoc-discuss/kc5wJsNe0L0)