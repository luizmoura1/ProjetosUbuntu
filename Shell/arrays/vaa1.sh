#!/usr/bin/env bash
# Autor: Luiz
# Exemplo: variável array associativo
clear
echo 'A R R A Y  A S S O C I A T I V O'
echo -e "Declaração:\t\tdeclare -A vaa\t\t"; declare -A vaa
echo -ne "Lista chaves:\t\techo \${!vaa[@]}\t\t"; echo ${!vaa[@]}	# ${!vaa[*]} causa erro
echo -ne "Lista valores:\t\techo \${vaa[@]}\t\t"; echo ${vaa[@]}	# ${vaa[*]} não causa erro, mas não é usado
echo -ne "Tamanho:\t\techo \${#vaa[@]}\t\t"; echo ${#vaa[@]}		# ${#vaa[*]} não causa erro, mas não é usado
echo -e "Remoção:\t\tunset vaa\t"; unset vaa
echo '-------------------------------------------------------'
echo -e "Definição:\t\tdeclare -A vaa=(a 0 b 1)\t\t"; declare -A vaa=(a 0 b 1)
echo -ne "Lista chaves:\t\techo \${!vaa[@]}\t\t"; echo ${!vaa[@]}
echo -ne "Lista valores:\t\techo \${vaa[@]}\t\t"; echo ${vaa[@]}
echo -ne "Tamanho:\t\techo \${#vaa[@]}\t\t"; echo ${#vaa[@]}
echo -ne "1o valor:\t\techo \${vaa[a]}\t\t"; echo ${vaa[a]}
echo -ne "2o valor:\t\techo \${vaa[b]}\t\t"; echo ${vaa[b]}
echo -ne "3o valor:?\t\techo \${vaa[c]}\t\t"; echo ${vaa[c]}
echo '-------------------------------------------------------'
echo -e "Modificar valor:\tvaa[a]=9\t\t"; vaa[a]=9
echo -ne "Lista chaves:\t\techo \${!vaa[@]}\t\t"; echo ${!vaa[@]}
echo -ne "Lista valores:\t\techo \${vaa[@]}\t\t"; echo ${vaa[@]}
echo -ne "Tamanho:\t\techo \${#vaa[@]}\t\t"; echo ${#vaa[@]}
echo -ne "1o valor:\t\techo \${vaa[a]}\t\t"; echo ${vaa[a]}
echo -ne "2o valor:\t\techo \${vaa[b]}\t\t"; echo ${vaa[b]}
echo '-------------------------------------------------------'
echo -e "Remover valor:\t\tunset vaa[a]\t\t"; unset vaa[a]
echo -ne "Lista chaves:\t\techo \${!vaa[@]}\t\t"; echo ${!vaa[@]}
echo -ne "Lista valores:\t\ttecho \${vaa[@]}\t\t"; echo ${vaa[@]}
echo -ne "Tamanho:\t\techo \${#vaa[@]}\t\t"; echo ${#vaa[@]}
echo -ne "1o valor:\t\techo \${vaa[a]}\t\t"; echo ${vaa[a]}
echo -ne "2o valor:\t\techo \${vaa[b]}\t\t"; echo ${vaa[b]}
echo '-------------------------------------------------------'
echo -e "Adicionar valor:\tvaa[a]=1\t\t"; vaa[a]=0
echo -ne "Lista chaves:\t\techo \${!vaa[@]}\t\t"; echo ${!vaa[@]}
echo -ne "Lista valores:\t\techo \${vaa[@]}\t\t"; echo ${vaa[@]}
echo -ne "Tamanho:\t\techo \${#vaa[@]}\t\t"; echo ${#vaa[@]}
echo -ne "1o valor:\t\techo \${vaa[a]}\t\t"; echo ${vaa[a]}
echo -ne "2o valor:\t\techo \${vaa[b]}\t\t"; echo ${vaa[b]}
echo '-------------------------------------------------------'
echo -e "Adicionar valor:\tvaa[d]=3\t\t"; vaa[d]=3
echo -ne "Lista chaves:\t\techo \${!vaa[@]}\t\t"; echo ${!vaa[@]}
echo -ne "Lista valores:\t\techo \${vaa[@]}\t\t"; echo ${vaa[@]}
echo -ne "Tamanho:\t\techo \${#vaa[@]}\t\t"; echo ${#vaa[@]}
echo -ne "1o valor:\t\techo \${vaa[a]}\t\t"; echo ${vaa[a]}
echo -ne "2o valor:\t\techo \${vaa[b]}\t\t"; echo ${vaa[b]}
echo -ne "3o valor:?\t\techo \${vaa[c]}\t\t"; echo ${vaa[c]}
echo -ne "4o valor:\t\techo \${vaa[d]}\t\t"; echo ${vaa[d]}
echo -ne "5o valor:?\t\techo \${vaa[e]}\t\t"; echo ${vaa[e]}
echo '-------------------------------------------------------'
echo -e "Adicionar valores:\tvaa+=(f 5 g 6 h 7)\t\t"; vaa+=(f 5 g 6 h 7)
echo -ne "Lista chaves:\t\techo \${!vaa[@]}\t\t"; echo ${!vaa[@]}
echo -ne "Lista valores:\t\techo \${vaa[@]}\t\t"; echo ${vaa[@]}
echo -ne "Lista valores:\t\techo \${vaa[@]:2}\t"; echo ${vaa[@]:2}	# ${!vaa[@]:2} causa erro
echo -ne "Lista valores:\t\techo \${vaa[@]:2:3}\t"; echo ${vaa[@]:2:3}	# ${!vaa[@]:2:4} causa erro
echo -ne "Tamanho:\t\techo \${#vaa[@]}\t\t"; echo ${#vaa[@]}
echo -ne "1o valor:\t\techo \${vaa[a]}\t\t"; echo ${vaa[a]}
echo -ne "2o valor:\t\techo \${vaa[b]}\t\t"; echo ${vaa[b]}
echo -ne "3o valor:?\t\techo \${vaa[c]}\t\t"; echo ${vaa[c]}
echo -ne "4o valor:\t\techo \${vaa[d]}\t\t"; echo ${vaa[d]}
echo -ne "5o valor:?\t\techo \${vaa[e]}\t\t"; echo ${vaa[e]}
echo -ne "6o valor:\t\techo \${vaa[f]}\t\t"; echo ${vaa[f]}
echo -ne "7o valor:\t\techo \${vaa[g]}\t\t"; echo ${vaa[g]}
echo -ne "8o valor:\t\techo \${vaa[h]}\t\t"; echo ${vaa[h]}
echo -ne "9o valor:?\t\techo \${vaa[i]}\t\t"; echo ${vaa[i]}
echo -e "Remoção:\t\tunset vaa\t"; unset vaa
echo '-------------------------------------------------------'
echo -e "Declaração:\t\tdeclare -A vaa\t\t"; declare -A vaa
echo -e "Inicialização:\t\tvaa=([b]=1 [d]=3)\t\t"; vaa=([b]=1 [d]=3)
echo -ne "Lista chaves:\t\techo \${!vaa[@]}\t\t"; echo ${!vaa[@]}
echo -ne "Lista valores:\t\techo \${vaa[@]}\t\t"; echo ${vaa[@]}
echo -ne "Tamanho:\t\techo \${#vaa[@]}\t\t"; echo ${#vaa[@]}
echo -ne "1o valor:?\t\techo \${vaa[a]}\t\t"; echo ${vaa[a]}
echo -ne "2o valor:\t\techo \${vaa[b]}\t\t"; echo ${vaa[b]}
echo -ne "3o valor:?\t\techo \${vaa[c]}\t\t"; echo ${vaa[c]}
echo -ne "4o valor:\t\techo \${vaa[d]}\t\t"; echo ${vaa[d]}
echo -ne "5o valor:?\t\techo \${vaa[e]}\t\t"; echo ${vaa[e]}
echo '-------------------------------------------------------'
echo -e "Adicionar valores:\tvaa+=([a]=0 [c]=2 [e]=4)\t\t"; vaa+=([a]=0 [c]=2 [e]=4)
echo -ne "Lista chaves:\t\techo \${!vaa[@]}\t\t"; echo ${!vaa[@]}
echo -ne "Lista valores:\t\techo \${vaa[@]}\t\t"; echo ${vaa[@]}
echo -ne "Lista valores:\t\techo \${vaa[@]:2}\t"; echo ${vaa[@]:2}
echo -ne "Lista valores:\t\techo \${vaa[@]:1:3}\t"; echo ${vaa[@]:1:3}
echo -ne "Tamanho:\t\techo \${#vaa[@]}\t\t"; echo ${#vaa[@]}
echo -ne "1o valor:\t\techo \${vaa[a]}\t\t"; echo ${vaa[a]}
echo -ne "2o valor:\t\techo \${vaa[b]}\t\t"; echo ${vaa[b]}
echo -ne "3o valor:\t\techo \${vaa[c]}\t\t"; echo ${vaa[c]}
echo -ne "4o valor:\t\techo \${vaa[d]}\t\t"; echo ${vaa[d]}
echo -ne "5o valor:\t\techo \${vaa[e]}\t\t"; echo ${vaa[e]}
echo -ne "6o valor:?\t\techo \${vaa[f]}\t\t"; echo ${vaa[f]}
