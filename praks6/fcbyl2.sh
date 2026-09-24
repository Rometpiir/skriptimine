#!/bin/bash
# Skript küsib numbreid seni, kuni sisestatakse 0. Negatiivsed numbrid jäetakse vahele.

while true; do
    echo -n "Sisesta number (0 lõpetab): "
    read nr
    
    if [[ $nr -eq 0 ]]; then
        echo "Lõpetan töö."
        break
    fi
    
    if [[ $nr -lt 0 ]]; then
        echo "Negatiivne arv, jätan vahele."
        continue
    fi
    
    echo "Sisestati positiivne arv: $nr"
done
