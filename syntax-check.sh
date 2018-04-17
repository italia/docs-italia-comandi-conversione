e=/tmp/syntax-check-errors
: > $e
lt output/*/*/document.rst | while read f
do
    rst2html "$f" > /dev/null 2>> $e
done
cut -d':' -f1,3 < $e | sort | uniq -c
echo "errors details in $e"

