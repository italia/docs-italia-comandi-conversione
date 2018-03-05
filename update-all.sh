k=$( ls input-docx )
cd ~/docs2rst/
filters=$(ls filters/ | while read f; do echo -n " --filter filters/${f}"; done)
a="--wrap none ${filters}"
d=input-docx; for s in ${k[@]}; do c=$d/$s/; ls $c | while read f; do ./fork $c/$f $a -o output-rst/$s/${f%.docx}.rst; done; done;

