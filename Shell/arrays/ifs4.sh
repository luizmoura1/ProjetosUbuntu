#!/usr/bin/env bash
#texto="Olá, como vai?
#Vou bem, obrigado!"
texto="texto1.txt"
dados=()
echo -e "\nLendo arquivo..."
# Trocando operador += por operador =
#echo -e "Imprime:\t\t\t\ttipo:\t\ttokens:"
#1
while read -ra linha; do
	dados=("${linha[@]}")
done < "$texto"
echo "${dados[@]}"
unset dados
#2
while read -ra linha; do
	dados=(${linha[@]})
done < "$texto"
echo ${dados[@]}
unset dados
#3
while read -ra linha; do
	dados="${linha[@]}"
done < "$texto"
echo "${dados[@]}"
unset dados
#4
while read -ra linha; do
	dados=${linha[@]}
done < "$texto"
echo ${dados[@]}
unset dados
echo '------------------------------------------------'
#5
while read -ra linha; do
	dados=("$linha")
done < "$texto"
echo "$dados"
unset dados
#6
while read -ra linha; do
	dados=($linha)
done < "$texto"
echo $dados
unset dados 
#7
while read -ra linha; do
	dados="$linha"
done < "$texto"
echo "$dados"
unset dados
#8
while read -ra linha; do
	dados=$linha
done < "$texto"
echo $dados
unset dados

echo -e "\n* só considera última linha:"
echo '------------------------------------------------'
echo 'COM ASPAS'
#3
while read -ra linha; do
	dados="${linha[@]}"
done < "$texto"
echo "${dados[@]}"
unset dados

while read -ra linha; do
	dados="${linha[@]}"
done < "$texto"
echo ${dados[@]}
unset dados

echo '------------------------------------------------'
echo 'SEM ASPAS'
#4
while read -ra linha; do
	dados=${linha[@]}
done < "$texto"
echo ${dados[@]}
unset dados

while read -ra linha; do
	dados=${linha[@]}
done < "$texto"
echo "${dados[@]}"
unset dados


