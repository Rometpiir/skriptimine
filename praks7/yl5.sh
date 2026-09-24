#!/bin/bash
# Skript väljastab kujundi, kus reas on tärnid paremas servas ning vasakul 'o' sümbolid

echo -n "Sisesta ridade arv: "
read rida

for (( i = 1; i <= rida; i++ )); do
    echo -n "$i. "
    for (( j = 1; j <= rida; j++ )); do
        if (( j <= rida - i )); then
            echo -n "o "
        else
            echo -n "* "
        fi
    done
    echo ""
done
