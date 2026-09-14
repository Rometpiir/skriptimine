#!/bin/bash
# Skript arvutab reisijate arvu ja bussi kohtade arvu põhjal vajaliku busside arvu.

echo -n "Sisesta reisijate arv: "
read reisijad

echo -n "Sisesta kohtade arv bussis: "
read kohad

bussid=$((reisijad / kohad))

if [ $((reisijad % kohad)) -ne 0 ]; then
    bussid=$((bussid + 1))
fi

echo "Kokku on vaja $bussid bussi"
