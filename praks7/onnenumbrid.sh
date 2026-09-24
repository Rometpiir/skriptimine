#!/bin/bash
# Skript leiab kõik õnnenumbrid vahemikus 1000–9999

for (( i=1000; i<=9999; i++ )); do
    hetke_arv=$i

    # Korrame numbrite liitmist seni, kuni tulemus on suurem kui 9
    while (( hetke_arv > 9 )); do
        summa=0
        temp=$hetke_arv

        # Liidame kokku käesoleva arvu kõik numbrid
        while (( temp > 0 )); do
            viimane_number=$(( temp % 10 ))
            summa=$(( summa + viimane_number ))
            temp=$(( temp / 10 ))
        done

        # Uueks kontrollitavaks arvuks saab numbrite summa
        hetke_arv=$summa
    done

    # Kui lõplik ühekohaline summa on 7, väljastame algse arvu
    if (( hetke_arv == 7 )); then
        echo $i
    fi
done
