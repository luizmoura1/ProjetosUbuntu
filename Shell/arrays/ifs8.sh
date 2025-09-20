#!/usr/bin/env bash
#Objetivo: variável dados sempre sendo um array
texto="texto1.txt"

echo '---------------------------------'
dados=()
echo -e "\nLendo arquivo como array e com at"
while read -ra linha; do
	dados+=("${linha[@]}")
done < "$texto"
for _ in "${!dados[@]}"; do
	echo -e "$_\t${dados[$_]}"
done

echo '---------------------------------'
dados=()
echo -e "\nLendo arquivo como array e sem at"
while read -ra linha; do
	dados+=("${linha}")
done < "$texto"
for _ in "${!dados[@]}"; do
	echo -e "$_\t${dados[$_]}"
done

echo '---------------------------------'
dados=()
echo -e "\nLendo arquivo como string e com at"
while read -r linha; do
	dados+=("${linha[@]}")
done < "$texto"
for _ in "${!dados[@]}"; do
	echo -e "$_\t${dados[$_]}"
done

echo '---------------------------------'
dados=()
echo -e "\nLendo arquivo como string e sem at"
while read -r linha; do
	dados+=("${linha}")
done < "$texto"
for _ in "${!dados[@]}"; do
	echo -e "$_\t${dados[$_]}"
done

echo '---------------------------------'
unset dados

