k=$( ls input-docx )
for s in ${k[@]}
do
    mkdir -p "output-rst/$s/"
    ls input-docx/$s/* | while read f
    do
        ./translate.hs -i "$f" -t rst
    done
done

