#!/bin/bash
# Skript arvutab küpsisetordi valmistamiseks vajalike küpsisepakkide arvu

echo -n "Sisesta kandiku pikkus (cm): "
read kandik_p
echo -n "Sisesta kandiku laius (cm): "
read kandik_l

echo -n "Sisesta küpsise pikkus (cm): "
read kypsis_p
echo -n "Sisesta küpsise laius (cm): "
read kypsis_l

echo -n "Sisesta tordi kihtide arv: "
read kihte
echo -n "Sisesta küpsiste arv ühes pakis: "
read pakis

# Arvutused expr abil
pikkuses=$(expr $kandik_p / $kypsis_p)
laiuses=$(expr $kandik_l / $kypsis_l)
kypsiseid_kihis=$(expr $pikkuses \* $laiuses)
kypsiseid_kokku=$(expr $kypsiseid_kihis \* $kihte)

# Pakkide arvu ümardamine ülespoole: (kokku + pakis - 1) / pakis
pakkide_arv=$(expr \( $kypsiseid_kokku + $pakis - 1 \) / $pakis)

echo "Ostma peab $pakkide_arv pakki küpsiseid."
