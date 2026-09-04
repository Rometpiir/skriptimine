#!/bin/bash
# Skript arvutab täidetud busside arvu ja maha jäänud reisijate arvu

echo -n "Sisesta reisijate arv: "
read reisijad
echo -n "Sisesta kohtade arv bussis: "
read kohad

# Arvutused expr abil
bussid=$(expr $reisijad / $kohad)
maha_jaanud=$(expr $reisijad % $kohad)

echo "Täielikult täidetud busse: $bussid"
echo "Maha jäänud inimesi: $maha_jaanud"
