
#### Status

This is pre-alpha at the moment, i observed some syntax errors which
seemed introduced by the execution of the script

## pandoc-font-to-style

this command works as a [pandoc
filter](http://pandoc.org/filters.html) for Open XML (`.docx`)
documents enabling you to turn fonts into semantic
information. currently it can turn fonts into code with the
`--as-code` option as follows:

    $ pandoc-font-to-style --as-code "Courier New" < in.json > out.json

it's easy to extend the filter in order to support more options like
`--as-emph`, `--as-strong` etcetera.

### list fonts from the document

to help selecting values for the `--as-code` option, the filter
supports a `--list` option which produces a summary of the fonts found
in the document:

    $ pandoc document.docx -t json --font-attributes | pandoc-font-to-style --list
    the document contains the following fonts:
    "Courier New", 2 occurrences

### format text as code before converting a document

when used with the `--as-code` option, the command produces the
modified document serialised as JSON so that it can be piped through
other filters or passed to pandoc again

    $ pandoc doc.docx -o in.json --font-attributes
    $ pandoc-font-to-style --as-code "Courier New" < in.json > out.json
    $ pandoc out.json -o doc.rst

you can also do this in a single command with pipes like in `pandoc
... -t json | pandoc-font-to-style ... | pandoc -f json ...`.

if `doc.docx` contains multimedia files, the `--extract-media` option
can be used in the first line so that media can be found also in the
resulting `doc.rst`. All pandoc options can be used either in the
first or the last line, using this command just to transform the JSON
document

##### license

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
