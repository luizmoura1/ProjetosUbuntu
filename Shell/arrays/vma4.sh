#!/usr/bin/env bash
# Autor: Luiz
# Exemplo: variável array associativo
clear
echo 'A R R A Y  A S S O C I A T I V O'
echo "com 'declare -A nome_do_array' e laços for para entrada e saída dos dados"
echo '--------------------------------------------------------------------------------------------------------------------------'
#unset vma
declare -A vma
echo 'Informe os dados na sequência nome e idade:'
for l in {0..1}; do
	for c in {0..3}; do
		read -p "$l,$c: " val
		vma[$l,$c]=$val
	done
done
echo '--------------------------------------------------------------------------------------------------------------------------'
echo -ne "Lista chaves\t\techo \${!vma[@]}\t\t\t\t\t\t\t"; echo ${!vma[@]}
echo -ne "Lista valores\t\techo \${vma[@]}\t\t\t\t\t\t\t"; echo ${vma[@]}
echo -ne "Lista chaves valores\tfor _ in \${!vma[@]};do echo -n \"\$_ \${vma[\$_]} \";done;echo\t"; for _ in ${!vma[@]}; do echo -n "$_ ${vma[$_]} "; done; echo
echo '--------------------------------------------------------------------------------------------------------------------------'
for l in {0..1}; do
	for c in {0..3}; do
		printf "%-10s" ${vma[$l,$c]}
	done
	echo
done
