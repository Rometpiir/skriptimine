#!/bin/bash
# Skript lahendab ruutvõrrandi Ax^2 + Bx + C = 0 käsurea argumentide alusel

# 1. Kontrollime, et sisestatud on täpselt 3 argumenti
if [ "$#" -ne 3 ]; then
    echo "Viga: Palun sisesta täpselt 3 kordajat: A, B ja C."
    echo "Kasutamine: $0 A B C"
    exit 1
fi

A=$1
B=$2
C=$3

# 2. Kontrollime, et A ei oleks 0 (uute/vanade versioonide ühilduvus)
is_zero=$(echo "$A == 0" | bc -l)
if [ "$is_zero" -eq 1 ]; then
    echo "Viga: Kordaja A ei tohi olla 0 (see pole ruutvõrrand)."
    exit 1
fi

# 3. Arvutame diskriminandi D = B^2 - 4AC
D=$(echo "$B * $B - 4 * $A * $C" | bc -l)

# 4. Kontrollime diskriminandi väärtust
is_negative=$(echo "$D < 0" | bc -l)
is_equal_zero=$(echo "$D == 0" | bc -l)

if [ "$is_negative" -eq 1 ]; then
    echo "Reaalarvulised lahendid puuduvad (D < 0)."
elif [ "$is_equal_zero" -eq 1 ]; then
    # Üks lahend: x = -B / (2A)
    x=$(echo "scale=10; -1 * ($B) / (2 * ($A))" | bc -l)
    printf "Võrrandil on üks lahend: x = %.5f\n" "$x"
else
    # Kaks lahendit: x1 = (-B + sqrt(D)) / (2A) ja x2 = (-B - sqrt(D)) / (2A)
    x1=$(echo "scale=10; (-1 * ($B) + sqrt($D)) / (2 * ($A))" | bc -l)
    x2=$(echo "scale=10; (-1 * ($B) - sqrt($D)) / (2 * ($A))" | bc -l)
    printf "Võrrandil on kaks lahendit:\n"
    printf "x1 = %.5f\n" "$x1"
    printf "x2 = %.5f\n" "$x2"
fi
