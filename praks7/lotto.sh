#!/bin/bash
# Skript genereerib 5 unikaalset lotonumbrit (1-50) ilma massiive kasutamata

# Määrame ajutise faili asukoha
ajutine_fail="/tmp/lotto_temp_$$"
touch "$ajutine_fail"

# Puhastame ajutise faili enne tegevuse lõppu (isegi katkemisel)
trap "rm -f $ajutine_fail" EXIT

# Genereerime 5 unikaalset numbrit
while [ $(wc -l < "$ajutine_fail") -lt 5 ]; do
    # Arv vahemikus 1-50
    arv=$(( ($RANDOM % 50) + 1 ))
    
    # Kontrollime, kas arv on juba ajutises failis olemas
    if ! grep -xq "$arv" "$ajutine_fail"; then
        echo "$arv" >> "$ajutine_fail"
    fi
done

# Formaattime kuupäeva ja kellaaja ning numbrid ühele reale
aeg=$(date "+%Y-%m-%d %H:%M:%S")
numbrid=$(tr '\n' ' ' < "$ajutine_fail")
tulemus="[$aeg] Lotonumbrid: $numbrid"

# Küsime kasutajalt väljundi valikut
echo "Vali tulemuse väljastus viis:"
echo "1) Kuva terminalis"
echo "2) Salvesta faili (lotto_tulemused.txt)"
echo -n "Tee valik (1 või 2): "
read valik

if [ "$valik" -eq 1 ]; then
    echo "$tulemus"
elif [ "$valik" -eq 2 ]; then
    echo "$tulemus" >> lotto_tulemused.txt
    echo "Tulemus edukalt salvestatud faili lotto_tulemused.txt"
else
    echo "Tundmatu valik. Kuvan tulemuse terminalis:"
    echo "$tulemus"
fi
