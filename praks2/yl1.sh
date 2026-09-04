#!/bin/bash
# Skript väljastab tervituse koos suure algustähega kasutajanimega

echo -n "Tere, "
raw_user=$(whoami)
kasutaja="${raw_user^}" # Muudab esimese tähe suureks
echo -n "$kasutaja"
echo " !"
