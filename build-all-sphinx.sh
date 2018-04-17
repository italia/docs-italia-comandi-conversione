source build-existing-sphinx.sh
ls output/*/* -d | while read d; do cd "$d"; buildExistingSphinx ; cd -; done
