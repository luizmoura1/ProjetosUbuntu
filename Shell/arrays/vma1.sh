#!/usr/bin/env bash
# Autor: Luiz
# Exemplo: variável array associativo
clear
echo 'A R R A Y  A S S O C I A T I V O'
echo '-------------------------------------------------------'
echo -e "Definição:\t\tdeclare -A vma=(0,0 l0c0 0,1 l0c1 1,0 l1c0 1,1 l1c1)\t\t"; declare -A vma=(0,0 l0c0 0,1 l0c1 1,0 l1c0 1,1 l1c1)
echo -ne "Lista chaves:\t\techo \${!vma[@]}\t\t\t\t\t\t\t"; echo ${!vma[@]}
echo -ne "Lista chaves:\t\tfor _ in \${!vma[@]}; do echo -n \"\$_ \"; done; echo\t\t"; for _ in ${!vma[@]}; do echo -n "$_ "; done; echo
echo -ne "Lista valores:\t\techo \${vma[@]}\t\t\t\t\t\t\t"; echo ${vma[@]}
echo -ne "Lista valores:\t\tfor _ in \${vma[@]}; do echo -n \"\$_ \"; done; echo\t\t"; for _ in ${vma[@]}; do echo -n "$_ "; done; echo
echo -ne "Lista chaves e valores:\tfor _ in \${!vma[@]}; do echo -n \"\$_ \${vma[\$_]} \"; done; echo\t"; for _ in ${!vma[@]}; do echo -n "$_ ${vma[$_]} "; done; echo
echo -ne "Tamanho:\t\techo \${#vma[@]}\t\t\t\t\t\t\t"; echo ${#vma[@]}
echo -ne "1o valor:\t\techo \${vma[0,0]}\t\t\t\t\t\t"; echo ${vma[0,0]}
echo -ne "2o valor:\t\techo \${vma[0,1]}\t\t\t\t\t\t"; echo ${vma[0,1]}
echo -ne "3o valor:\t\techo \${vma[1,0]}\t\t\t\t\t\t"; echo ${vma[1,0]}
echo -ne "4o valor:\t\techo \${vma[1,1]}\t\t\t\t\t\t"; echo ${vma[1,1]}

echo '-------------------------------------------------------'
echo -e "Remoção:\t\tunset vma\t"; unset vma
echo -e "Definição:\t\tdeclare -A vma\t\t"; declare -A vma
echo -e "Adicionar:\t\tvma[0,0]=l0c0\t\t"; vma[0,0]=l0c0
echo -e "Adicionar:\t\tvma[0,1]=l0c1\t\t"; vma[0,1]=l0c1
echo -e "Adicionar:\t\tvma[1,0]=l1c0\t\t"; vma[1,0]=l1c0
echo -e "Adicionar:\t\tvma[1,1]=l1c1\t\t"; vma[1,1]=l1c1
echo -ne "Lista chaves:\t\techo \${!vma[@]}\t\t\t\t\t\t\t"; echo ${!vma[@]}
echo -ne "Lista chaves:\t\tfor _ in \${!vma[@]}; do echo -n \"\$_ \"; done; echo\t\t"; for _ in ${!vma[@]}; do echo -n "$_ "; done; echo
echo -ne "Lista valores:\t\techo \${vma[@]}\t\t\t\t\t\t\t"; echo ${vma[@]}
echo -ne "Lista valores:\t\tfor _ in \${vma[@]}; do echo -n \"\$_ \"; done; echo\t\t"; for _ in ${vma[@]}; do echo -n "$_ "; done; echo
echo -ne "Lista chaves e valores:\tfor _ in \${!vma[@]}; do echo -n \"\$_ \${vma[\$_]} \"; done; echo\t"; for _ in ${!vma[@]}; do echo -n "$_ ${vma[$_]} "; done; echo
echo -ne "Tamanho:\t\techo \${#vma[@]}\t\t\t\t\t\t\t"; echo ${#vma[@]}
echo -ne "1o valor:\t\techo \${vma[0,0]}\t\t\t\t\t\t"; echo ${vma[0,0]}
echo -ne "2o valor:\t\techo \${vma[0,1]}\t\t\t\t\t\t"; echo ${vma[0,1]}
echo -ne "3o valor:\t\techo \${vma[1,0]}\t\t\t\t\t\t"; echo ${vma[1,0]}
echo -ne "4o valor:\t\techo \${vma[1,1]}\t\t\t\t\t\t"; echo ${vma[1,1]}



exit
echo '-------------------------------------------------------'
echo -e "Remoção:\t\tunset vma\t"; unset vma
echo -e "Definição:\t\tdeclare -A vma\t\t"; declare -A vma

for ((l = 0; l < 2; l++)); do
	for ((c = 0; c < 2; c++)); do
		read -p "Insira o valor: " val
		vma[$l,$c]=$val
	done
done
echo -ne "Lista chaves:\t\techo \${!vma[@]}\t\t\t\t\t\t\t"; echo ${!vma[@]}
echo -ne "Lista valores:\t\techo \${vma[@]}\t\t\t\t\t\t\t"; echo ${vma[@]}
echo -ne "Lista chaves e valores:\tfor _ in \${!vma[@]}; do echo -n \"\$_ \${vma[\$_]} \"; done; echo\t"; for _ in ${!vma[@]}; do echo -n "$_ ${vma[$_]} "; done; echo


exit
echo "Loop for:"
for ((l = 0; l < 2; l++)); do
	echo "Loop externo: $l"
	for ((c = 0; c < 2; c++)); do
		echo "   Loop interno: $c"	#echo -e "l$l""c$c"
	done
done
echo "Loop while:"
l=0
while [ $l -lt 2 ]; do
	echo "Loop externo: $l"
	c=0
	while [ $c -lt 2 ]; do
		echo "   Loop interno: $c"
		c=$((c+1))
	done
	l=$((l+1))
done
exit






















echo '-------------------------------------------------------'
echo -e "Remover valor:\t\tunset vma[a]\t\t"; unset vma[a]
echo -ne "Lista chaves:\t\techo \${!vma[@]}\t\t"; echo ${!vma[@]}
echo -ne "Lista valores:\t\ttecho \${vma[@]}\t\t"; echo ${vma[@]}
echo -ne "Tamanho:\t\techo \${#vma[@]}\t\t"; echo ${#vma[@]}
echo -ne "1o valor:\t\techo \${vma[a]}\t\t"; echo ${vma[a]}
echo -ne "2o valor:\t\techo \${vma[b]}\t\t"; echo ${vma[b]}
echo '-------------------------------------------------------'
echo -e "Adicionar valor:\tvma[a]=1\t\t"; vma[a]=0
echo -ne "Lista chaves:\t\techo \${!vma[@]}\t\t"; echo ${!vma[@]}
echo -ne "Lista valores:\t\techo \${vma[@]}\t\t"; echo ${vma[@]}
echo -ne "Tamanho:\t\techo \${#vma[@]}\t\t"; echo ${#vma[@]}
echo -ne "1o valor:\t\techo \${vma[a]}\t\t"; echo ${vma[a]}
echo -ne "2o valor:\t\techo \${vma[b]}\t\t"; echo ${vma[b]}
echo '-------------------------------------------------------'
echo -e "Adicionar valor:\tvma[d]=3\t\t"; vma[d]=3
echo -ne "Lista chaves:\t\techo \${!vma[@]}\t\t"; echo ${!vma[@]}
echo -ne "Lista valores:\t\techo \${vma[@]}\t\t"; echo ${vma[@]}
echo -ne "Tamanho:\t\techo \${#vma[@]}\t\t"; echo ${#vma[@]}
echo -ne "1o valor:\t\techo \${vma[a]}\t\t"; echo ${vma[a]}
echo -ne "2o valor:\t\techo \${vma[b]}\t\t"; echo ${vma[b]}
echo -ne "3o valor:?\t\techo \${vma[c]}\t\t"; echo ${vma[c]}
echo -ne "4o valor:\t\techo \${vma[d]}\t\t"; echo ${vma[d]}
echo -ne "5o valor:?\t\techo \${vma[e]}\t\t"; echo ${vma[e]}
echo '-------------------------------------------------------'
echo -e "Adicionar valores:\tvma+=(f 5 g 6 h 7)\t\t"; vma+=(f 5 g 6 h 7)
echo -ne "Lista chaves:\t\techo \${!vma[@]}\t\t"; echo ${!vma[@]}
echo -ne "Lista valores:\t\techo \${vma[@]}\t\t"; echo ${vma[@]}
echo -ne "Lista valores:\t\techo \${vma[@]:2}\t"; echo ${vma[@]:2}	# ${!vma[@]:2} causa erro
echo -ne "Lista valores:\t\techo \${vma[@]:2:3}\t"; echo ${vma[@]:2:3}	# ${!vma[@]:2:4} causa erro
echo -ne "Tamanho:\t\techo \${#vma[@]}\t\t"; echo ${#vma[@]}
echo -ne "1o valor:\t\techo \${vma[a]}\t\t"; echo ${vma[a]}
echo -ne "2o valor:\t\techo \${vma[b]}\t\t"; echo ${vma[b]}
echo -ne "3o valor:?\t\techo \${vma[c]}\t\t"; echo ${vma[c]}
echo -ne "4o valor:\t\techo \${vma[d]}\t\t"; echo ${vma[d]}
echo -ne "5o valor:?\t\techo \${vma[e]}\t\t"; echo ${vma[e]}
echo -ne "6o valor:\t\techo \${vma[f]}\t\t"; echo ${vma[f]}
echo -ne "7o valor:\t\techo \${vma[g]}\t\t"; echo ${vma[g]}
echo -ne "8o valor:\t\techo \${vma[h]}\t\t"; echo ${vma[h]}
echo -ne "9o valor:?\t\techo \${vma[i]}\t\t"; echo ${vma[i]}
echo -e "Remoção:\t\tunset vma\t"; unset vma
echo '-------------------------------------------------------'
echo -e "Declaração:\t\tdeclare -A vma\t\t"; declare -A vma
echo -e "Inicialização:\t\tvma=([b]=1 [d]=3)\t\t"; vma=([b]=1 [d]=3)
echo -ne "Lista chaves:\t\techo \${!vma[@]}\t\t"; echo ${!vma[@]}
echo -ne "Lista valores:\t\techo \${vma[@]}\t\t"; echo ${vma[@]}
echo -ne "Tamanho:\t\techo \${#vma[@]}\t\t"; echo ${#vma[@]}
echo -ne "1o valor:?\t\techo \${vma[a]}\t\t"; echo ${vma[a]}
echo -ne "2o valor:\t\techo \${vma[b]}\t\t"; echo ${vma[b]}
echo -ne "3o valor:?\t\techo \${vma[c]}\t\t"; echo ${vma[c]}
echo -ne "4o valor:\t\techo \${vma[d]}\t\t"; echo ${vma[d]}
echo -ne "5o valor:?\t\techo \${vma[e]}\t\t"; echo ${vma[e]}
echo '-------------------------------------------------------'
echo -e "Adicionar valores:\tvma+=([a]=0 [c]=2 [e]=4)\t\t"; vma+=([a]=0 [c]=2 [e]=4)
echo -ne "Lista chaves:\t\techo \${!vma[@]}\t\t"; echo ${!vma[@]}
echo -ne "Lista valores:\t\techo \${vma[@]}\t\t"; echo ${vma[@]}
echo -ne "Lista valores:\t\techo \${vma[@]:2}\t"; echo ${vma[@]:2}
echo -ne "Lista valores:\t\techo \${vma[@]:1:3}\t"; echo ${vma[@]:1:3}
echo -ne "Tamanho:\t\techo \${#vma[@]}\t\t"; echo ${#vma[@]}
echo -ne "1o valor:\t\techo \${vma[a]}\t\t"; echo ${vma[a]}
echo -ne "2o valor:\t\techo \${vma[b]}\t\t"; echo ${vma[b]}
echo -ne "3o valor:\t\techo \${vma[c]}\t\t"; echo ${vma[c]}
echo -ne "4o valor:\t\techo \${vma[d]}\t\t"; echo ${vma[d]}
echo -ne "5o valor:\t\techo \${vma[e]}\t\t"; echo ${vma[e]}
echo -ne "6o valor:?\t\techo \${vma[f]}\t\t"; echo ${vma[f]}
