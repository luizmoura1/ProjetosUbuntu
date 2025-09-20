#!/usr/bin/env bash
texto="Olá, como vai?
Vou bem, obrigado!"
#texto="texto1.txt"
dados=()	# declare -a é facultativo porque é um array indexado
echo -e "\nLendo arquivo..."
while read -ra linha
do
	dados+=("${linha[@]}")
done <<< "$texto"

echo "---------------------------------------------------"
echo -e "Comprimento:\t\t${#dados[@]}"
echo -e "Primeiro elemento:\t${dados[0]}"
echo -e "Segundo elemento:\t${dados[1]}"
echo -e "Terceiro elemento:\t${dados[2]}"
echo -e "Último elemento:\t${dados[-1]}"

# primeira forma:
echo -e "Índices:\t\t${!dados[@]}"
# segunda forma:
echo "===Índices com for e *===" 
for _ in "${!dados[*]}"; do
	echo "$_"
done

# terceira forma:
echo "===Índices com for e @===" 
for _ in "${!dados[@]}"; do
	echo "$_"
done

# primeira forma:
echo -e "Elementos:\t\t${dados[@]}"
# segunda forma:
echo "===Elementos com for e *===" 
for _ in "${dados[*]}"; do
	echo "$_"
done

#terceira forma:
echo "===Elementos com for e @===" 
for _ in "${dados[@]}"; do
	echo "$_"
done

# quarta forma:
echo "===Índices e elementos com for e @===" 
for _ in "${!dados[@]}"; do
	echo -e "$_\t${dados[$_]}"
done


# primeira forma:
echo -e "Slice após 4º elemento:\t${dados[@]:3}"
# segunda forma:
echo "===Slice após 4º elemento com for e *===" 
for _ in "${dados[*]:3}"; do
	echo "$_"
done
# terceira forma:
echo "===Slice após 4º elemento com for e @===" 
for _ in "${dados[@]:3}"; do
	echo "$_"
done

# primeira forma:
echo -e "Slice de 3 elementos após 2º:\t${dados[@]:1:3}"
# segunda forma:
echo "===Slice de 3 elementos após 2º com for e *===" 
for _ in "${dados[*]:1:3}"; do
	echo "$_"
done
# terceira forma:
echo "===Slice de 3 elementos após 2º com for e @===" 
for _ in "${dados[@]:1:3}"; do
	echo "$_"
done


