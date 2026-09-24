#!/bin/bash
# Skript loendab 1 kuni 10 ja katkeb, kui väärtus jõuab 7-ni

for (( i=1; i<=10; i++ )); do
    if [[ $i -eq 7 ]]; then
        echo "Katkestan tsükli, kuna väärtus on 7"
        break
    fi
    echo "Arv: $i"
done
