k=$( ls input )
for s in ${k[@]}
do
    ls input/$s/* | while read f
    do
        stack exec convert-docs-italia "$f"
    done
done

