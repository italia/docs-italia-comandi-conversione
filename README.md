# pandoc-docs2rst

> establishing a workflow for converting documents to RST

This repo collects small scripts to automate the translation using the
italian fork of pandoc and a set of custom options and filters. It is
intended to be cloned in a directory containing also
[italia/pandoc-filters](https://github.com/italia/pandoc-filters), so
for example if you keep your Github repos in a `repos/` directory you
want to have:

    repos/
        pandoc-docs2rst/
        pandoc-filters/

So that the commands in `pandoc-docs2rst` can find the filters where
they expec them to be

#### Sample documents

Some sample documents are included here to test the translation, help
finding regression errors, or to keep track of use cases that we want
to improve

#### Current syntax status

The following command

    $ . syntax-check.sh

Will try to convert all RST documents to HTML, counting detected syntax errors

##### Documents License

Sample documents are collected from the forum at docs.italia.it or
from other public domain sources. Where not specified differently, the
license is CC-BY 3.0 as written
[here](https://developers.italia.it/en/note-legali/)

##### Software License

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
