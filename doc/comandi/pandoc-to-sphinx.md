
# `pandoc-to-sphinx`

This is a [_pandoc source_](../pandoc-sinks-and-sources.md) producing
a set of files ready to be published on ReadTheDocs

#### Splitting level logic

A document could be split in files containing sections at level 1, 2
or higher. Documents could contain just one section belonging to a
given level which would make the split pointless. In order to
determine the level to use for the split, `pandoc-to-sphinx` selects
the first level containing multiple sections.

#### Status

This is pre-alpha at the moment, it's an usable evolutionary prototype

