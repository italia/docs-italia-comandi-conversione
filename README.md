# docs2rst

Establishing a workflow for converting documents to RST. 

#### current syntax status

the following command

    $ . syntax-check.sh

will try to convert all RST documents to HTML, which is a way to
detect RST syntax errors. current syntax errors are:

- unexpected section in Docs Italia Style Guide, due to a table
  presenting RST syntax
- many occurrences of "Inline strong start-string without end-string"

