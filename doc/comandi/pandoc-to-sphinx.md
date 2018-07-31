
## `pandoc-to-sphinx`

This is a [_pandoc consumer_](../pandoc-producers-and-consumers.md)
turning a pandoc-compatible document into a set of files ready to be
published on ReadTheDocs

#### Usage

Given a `document.ext` file in a format supported by pandoc, running:

    $ pandoc document.ext -t json | pandoc-to-sphinx --level 2

Will produce an `index.rst` file pointing to other `.rst` files
depending on the selected level

#### `level` option

This is used to choose how to divide the files. For example, with
`--level 2`, every second level section will be turned into an `.rst`
file in the `index/` folder

#### Splitting level logic

A document could be split in files containing sections at level 1, 2
or higher. Documents could contain just one section belonging to a
given level which would make the split pointless.

When the `--level` option is omitted, `pandoc-to-sphinx` selects the
first level containing multiple sections.

#### Status

This is pre-alpha at the moment, it's an usable evolutionary prototype

