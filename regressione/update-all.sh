k=$( ls input )
for s in ${k[@]}
do
    ls input/$s/* | while read f
    do
        echo $f
        stack exec convert-docs-italia "$f"
    done
done

