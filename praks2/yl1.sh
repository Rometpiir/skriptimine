#!/bin/bash
# Skript väljastab kasutajale tervituse "Tere, Kasutajanimi !"

echo -n "Tere, "
kasutaja=$(whoami)
echo -n "$kasutaja"
echo "!"
