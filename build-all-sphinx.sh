buildExistingSphinx () {
    mv index.rst /tmp/build-existing-sphinx.rst
    sphinx-quickstart -p test -a test -v test -q
    mv -f /tmp/build-existing-sphinx.rst index.rst
    make html
    echo "make html"
    firefox _build/html/index.html &
}
ls output/*/* -d | while read d; do cd "$d"; buildExistingSphinx ; cd -; done
