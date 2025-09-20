#!/usr/bin/env bash
#texto="Olá, como vai?
#Vou bem, obrigado!"
texto="texto1.txt"
dados=()
cols=2
echo -e "\nLendo arquivo..."
while read -ra linha
do
	dados+=("${linha[@]}")
done < "$texto"

for ((i=0; i<${#dados[@]}; i+=cols)); do
	colunas=($i $((i+1)))
	for _ in "${colunas[@]}"; do
		printf "%s\t" "${dados[$_]}"
	done
	printf "%s\n"	
done

exit


exit

for ((i=0; i<${#dados[@]}; i+=2)); do
    col1=${dados[i]}
    col2=${dados[i+1]:-}  # se não existir, fica vazio
    echo "$col1 $col2"
done
