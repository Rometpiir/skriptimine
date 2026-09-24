#!/bin/bash
# Skript tükeldab stringi komakoha järgi IFS muutuja abil

tekst="koer;kass;hiir"
vana_ifs=$IFS
IFS=';'

for loom in $tekst; do
    echo "Loom: $loom"
done

IFS=$vana_ifs
