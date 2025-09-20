#!/usr/bin/env bash
#Objetivo: variável dados sempre sendo um array

echo 'Fase 1: uso de atribuição com ='

texto="Olá, como vai?
Vou bem, obrigado!"
dados=()

echo -e "\nLendo string..."
while read -ra linha
do
	dados=("${linha[@]}")
done <<< "$texto"
#echo $dados#echo "$dados"#echo ${dados[@]}
echo "${dados[@]}"

echo '--------------------------------'

texto="texto1.txt"
dados=()

echo -e "\nLendo arquivo..."
while read -ra linha; do
	dados=("${linha[@]}")
done < "$texto"
echo "${dados[@]}"

echo
echo 'Fase 2: uso de atribuição com +='

texto="Olá, como vai?
Vou bem, obrigado!"
dados=()

echo -e "\nLendo string..."
while read -ra linha
do
	dados+=("${linha[@]}")
done <<< "$texto"
echo "${dados[@]}"

echo '--------------------------------'

texto="texto1.txt"
dados=()

echo -e "\nLendo arquivo..."
while read -ra linha; do
	dados+=("${linha[@]}")
done < "$texto"
echo "${dados[@]}"

echo '--------------------------------'
unset dados

