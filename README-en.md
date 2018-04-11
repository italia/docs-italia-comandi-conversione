# pandoc-docs2rst

> establishing a workflow for converting documents to RST

This repo collects small scripts to automate the translation using the
italian fork of pandoc and a set of custom options and filters. It is
using a set of filters from
[italia/pandoc-filters](https://github.com/italia/pandoc-filters)
which is expected to be cloned in this repo's root directory, so you
want to have the two repos nested like this:

    pandoc-docs2rst/
        pandoc-filters/

#### Sample documents

Some sample documents are included here to test the translation, help
finding regression errors, or to keep track of use cases that we want
to improve

#### Current syntax status

The following command

    $ . syntax-check.sh

Will try to convert all RST documents to HTML, counting detected syntax errors
