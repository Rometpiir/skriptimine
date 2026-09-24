#!/bin/bash
# Pesastatud tsüklid: sisemise tsükli väärtusel 5 katkestatakse mõlemad tsüklid

for (( i=1; i<=3; i++ )); do
    echo "Väline tsükkel i = $i"
    for (( j=1; j<=10; j++ )); do
        echo "  Sisemine tsükkel j = $j"
        if [[ $j -eq 5 ]]; then
            echo "  Sisemine tsükkel jõudis 5-ni! Katkestan mõlemad tsüklid (break 2)."
            break 2
        fi
    done
done
