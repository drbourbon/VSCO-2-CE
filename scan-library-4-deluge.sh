#!/bin/bash
# shopt -s globstar
find * -depth -not -empty -type d | while read d; do
    set -- "${d}"/*.wav
    if [ -f "$1" ]; then 
        echo -e "#cd \"${d}\""
        cd "$d"
        for w in *.wav; do
            echo -e "\t\t$w" ;
        done
        cd - > /dev/null
    fi
done



