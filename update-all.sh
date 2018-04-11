k=$( ls input )
for s in ${k[@]}
do
    ls input/$s/* | while read f
    do
        ./convert.hs "$f"
    done
done

