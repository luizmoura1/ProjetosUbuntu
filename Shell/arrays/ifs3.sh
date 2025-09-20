#!/usr/bin/env bash
#texto="Olá, como vai?
#Vou bem, obrigado!"
texto="texto1.txt"

echo -e "\nLendo arquivo..."

echo "=== while read ==="
while read -ra linha; do
    printf '[%s]\n' "${linha[@]}"
done < "$texto"
echo '-----------------------------'

echo "=== for var in ... ==="
for _ in $(<"$texto"); do
    printf '[%s]\n' "$_"
done


