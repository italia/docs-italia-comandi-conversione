
# Notes about evolving features

here i keep short notes about features that are in a changing
state. eventually these notes could make it into the README or be
deleted with the related features

### returned structure

we want to separate `convert-docs-italia` from the regression tests
here. while they share the same repo, the structure of the result in
the `output` folders is a bit complex:

- `document.rst` converted and linked document
- `index.rst` and the files in `index/` are an attempt to structure the document for ReadTheDocs
- `document-unlinked.rst`, `document.native` are extra info for the devs


