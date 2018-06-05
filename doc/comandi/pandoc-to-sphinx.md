`pandoc-to-sphinx`

from any pandoc-compatible document to a set of files ready to be
published on read the docs

#### Status

This is pre-alpha at the moment, it's an usable evolutionary prototype

#### Installation

This is an Haskell package and can be installed from its sources with
[stack](https://docs.haskellstack.org/en/stable/GUIDE/)

#### Usage

After installation, typing `pandoc-to-sphinx --help` will give you the
following:

```
pandoc-to-sphinx <document.ext> <output-dir>


-l --level: (optional) the section level to use for splitting the document

-s --second-split: (optional) the level for the second split

```
