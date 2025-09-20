#!/usr/bin/env bash
#Objetivo: variável dados sempre sendo um array
texto="texto1.txt"

echo 'Fase 1: uso de atribuição com ='

dados=()
echo -e "\nLendo arquivo com at"
while read -ra linha; do
	dados=("${linha[@]}")
done < "$texto"
echo "${dados[@]}"

echo '--------------------------------'
dados=()
echo -e "\nLendo arquivo sem at"
while read -ra linha; do
	dados=("${linha}")
done < "$texto"
echo "${dados[@]}"

echo '--------------------------------'
echo
echo 'Fase 2: uso de atribuição com +='

dados=()
echo -e "\nLendo arquivo com at"
while read -ra linha; do
	dados+=("${linha[@]}")
done < "$texto"
echo "${dados[@]}"

echo '--------------------------------'
dados=()
echo -e "\nLendo arquivo sem at"
while read -ra linha; do
	dados+=("${linha}")
done < "$texto"
echo "${dados[@]}"

echo '--------------------------------'
unset dados

