#!/bin/bash
# Skript väljastab iseenda lähtekoodi täielikult tagurpidi

cat "$0" | rev | tac
