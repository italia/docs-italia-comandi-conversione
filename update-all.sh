k=$( ls input-docx )
cd ~/docs2rst/
filters=$(ls filters/ | while read f; do echo -n " --filter filters/${f}"; done)
a="--wrap none ${filters}"
for s in ${k[@]}
do
    mkdir -p "output-rst/$s/"
    c="input-docx/$s/"
    ls "$c" | while read f
    do
        ./fork "$c/$f" $a -o "output-rst/$s/${f%.docx}.rst"
    done
done

