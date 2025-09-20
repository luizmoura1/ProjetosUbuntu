#!/usr/bin/env bash
# Autor: Luiz
# Exemplo: variável array indexado
clear
echo 'A R R A Y  I N D E X A D O'
echo -e "Declaração:\t\tdeclare -a vai\t\t"; declare -a vai
echo -ne "Lista índices:\t\techo \${!vai[@]}\t\t"; echo ${!vai[@]}	# ${!vai[*]} causa erro
echo -ne "Lista elementos:\techo \${vai[@]}\t\t"; echo ${vai[@]}	# ${vai[*]} não causa erro, mas não é usado
echo -ne "Tamanho:\t\techo \${#vai[@]}\t\t"; echo ${#vai[@]}		# ${#vai[*]} não causa erro, mas não é usado
echo -e "Remoção:\t\tunset vai\t"; unset vai
echo '-------------------------------------------------------'
echo -e "Definição:\t\t|declare -a| vai=(1 2 3)\t\t"; vai=(1 2 3)
echo -ne "Lista índices:\t\techo \${!vai[@]}\t\t"; echo ${!vai[@]}
echo -ne "Lista elementos:\techo \${vai[@]}\t\t"; echo ${vai[@]}
echo -ne "Tamanho:\t\techo \${#vai[@]}\t\t"; echo ${#vai[@]}
echo -ne "1o elemento:\t\techo \${vai[0]}\t\t"; echo ${vai[0]}
echo -ne "2o elemento:\t\techo \${vai[1]}\t\t"; echo ${vai[1]}
echo -ne "3o elemento:\t\techo \${vai[2]}\t\t"; echo ${vai[2]}
echo -ne "4o elemento:?\t\techo \${vai[3]}\t\t"; echo ${vai[3]}
echo '-------------------------------------------------------'
echo -e "Modificar elemento:\tvai[0]=9\t\t"; vai[0]=9
echo -ne "Lista índices:\t\techo \${!vai[@]}\t\t"; echo ${!vai[@]}
echo -ne "Lista elementos:\techo \${vai[@]}\t\t"; echo ${vai[@]}
echo -ne "Tamanho:\t\techo \${#vai[@]}\t\t"; echo ${#vai[@]}
echo -ne "1o elemento:\t\techo \${vai[0]}\t\t"; echo ${vai[0]}
echo -ne "2o elemento:\t\techo \${vai[1]}\t\t"; echo ${vai[1]}
echo -ne "3o elemento:\t\techo \${vai[2]}\t\t"; echo ${vai[2]}
#echo -ne "4o elemento:?\t\techo \${vai[3]}\t\t"; echo ${vai[3]}
echo '-------------------------------------------------------'
echo -e "Remover elemento:\tunset vai[0]\t\t"; unset vai[0]
echo -ne "Lista índices:\t\techo \${!vai[@]}\t\t"; echo ${!vai[@]}
echo -ne "Lista elementos:\techo \${vai[@]}\t\t"; echo ${vai[@]}
echo -ne "Tamanho:\t\techo \${#vai[@]}\t\t"; echo ${#vai[@]}
echo -ne "1o elemento:\t\techo \${vai[0]}\t\t"; echo ${vai[0]}
echo -ne "2o elemento:\t\techo \${vai[1]}\t\t"; echo ${vai[1]}
echo -ne "3o elemento:\t\techo \${vai[2]}\t\t"; echo ${vai[2]}
#echo -ne "4o elemento:?\t\techo \${vai[3]}\t\t"; echo ${vai[3]}
echo '-------------------------------------------------------'
echo -e "Adicionar elemento:\tvai[0]=1\t\t"; vai[0]=1
echo -ne "Lista índices:\t\techo \${!vai[@]}\t\t"; echo ${!vai[@]}
echo -ne "Lista elementos:\techo \${vai[@]}\t\t"; echo ${vai[@]}
echo -ne "Tamanho:\t\techo \${#vai[@]}\t\t"; echo ${#vai[@]}
echo -ne "1o elemento:\t\techo \${vai[0]}\t\t"; echo ${vai[0]}
echo -ne "2o elemento:\t\techo \${vai[1]}\t\t"; echo ${vai[1]}
echo -ne "3o elemento:\t\techo \${vai[2]}\t\t"; echo ${vai[2]}
#echo -ne "4o elemento:?\t\techo \${vai[3]}\t\t"; echo ${vai[3]}
echo '-------------------------------------------------------'
echo -e "Adicionar elemento:\tvai[4]=5\t\t"; vai[4]=5
echo -ne "Lista índices:\t\techo \${!vai[@]}\t\t"; echo ${!vai[@]}
echo -ne "Lista elementos:\techo \${vai[@]}\t\t"; echo ${vai[@]}
echo -ne "Tamanho:\t\techo \${#vai[@]}\t\t"; echo ${#vai[@]}
echo -ne "1o elemento:\t\techo \${vai[0]}\t\t"; echo ${vai[0]}
echo -ne "2o elemento:\t\techo \${vai[1]}\t\t"; echo ${vai[1]}
echo -ne "3o elemento:\t\techo \${vai[2]}\t\t"; echo ${vai[2]}
echo -ne "4o elemento:?\t\techo \${vai[3]}\t\t"; echo ${vai[3]}
echo -ne "5o elemento:\t\techo \${vai[4]}\t\t"; echo ${vai[4]}
echo -ne "6o elemento:?\t\techo \${vai[5]}\t\t"; echo ${vai[5]}
echo '-------------------------------------------------------'
echo -e "Adicionar elementos:\tvai+=(6 7 8)\t\t"; vai+=(6 7 8)
echo -ne "Lista índices:\t\techo \${!vai[@]}\t\t"; echo ${!vai[@]}
echo -ne "Lista elementos:\techo \${vai[@]}\t\t"; echo ${vai[@]}
echo -ne "Lista elementos:\techo \${vai[@]:2}\t"; echo ${vai[@]:2}	# ${!vai[@]:2} causa erro
echo -ne "Lista elementos:\techo \${vai[@]:2:3}\t"; echo ${vai[@]:2:3}	# ${!vai[@]:2:4} causa erro
echo -ne "Tamanho:\t\techo \${#vai[@]}\t\t"; echo ${#vai[@]}
echo -ne "1o elemento:\t\techo \${vai[0]}\t\t"; echo ${vai[0]}
echo -ne "2o elemento:\t\techo \${vai[1]}\t\t"; echo ${vai[1]}
echo -ne "3o elemento:\t\techo \${vai[2]}\t\t"; echo ${vai[2]}
echo -ne "4o elemento:?\t\techo \${vai[3]}\t\t"; echo ${vai[3]}
echo -ne "5o elemento:\t\techo \${vai[4]}\t\t"; echo ${vai[4]}
echo -ne "6o elemento:\t\techo \${vai[5]}\t\t"; echo ${vai[5]}
echo -ne "7o elemento:\t\techo \${vai[6]}\t\t"; echo ${vai[6]}
echo -ne "8o elemento:\t\techo \${vai[7]}\t\t"; echo ${vai[7]}
echo -ne "9o elemento:?\t\techo \${vai[8]}\t\t"; echo ${vai[8]}
echo -e "Remoção:\t\tunset vai\t"; unset vai
echo '-------------------------------------------------------'
echo -e "Declaração:\t\t|declare -a vai|\t\t"; declare -a vai
echo -e "Inicialização:\t\tvai=([1]=2 [4]=5)\t\t"; vai=([1]=2 [4]=5)
echo -ne "Lista índices:\t\techo \${!vai[@]}\t\t"; echo ${!vai[@]}
echo -ne "Lista elementos:\techo \${vai[@]}\t\t"; echo ${vai[@]}
echo -ne "Tamanho:\t\techo \${#vai[@]}\t\t"; echo ${#vai[@]}
echo -ne "1o elemento:\t\techo \${vai[0]}\t\t"; echo ${vai[0]}
echo -ne "2o elemento:\t\techo \${vai[1]}\t\t"; echo ${vai[1]}
echo -ne "3o elemento:\t\techo \${vai[2]}\t\t"; echo ${vai[2]}
echo -ne "4o elemento:?\t\techo \${vai[3]}\t\t"; echo ${vai[3]}
echo -ne "5o elemento:\t\techo \${vai[4]}\t\t"; echo ${vai[4]}
echo -ne "6o elemento:?\t\techo \${vai[5]}\t\t"; echo ${vai[5]}
echo '-------------------------------------------------------'
echo -e "Adicionar elementos:\tvai+=([0]=1 [2]=3 [3]=4)\t\t"; vai+=([0]=1 [2]=3 [3]=4)
echo -ne "Lista índices:\t\techo \${!vai[@]}\t\t"; echo ${!vai[@]}
echo -ne "Lista elementos:\techo \${vai[@]}\t\t"; echo ${vai[@]}
echo -ne "Lista elementos:\techo \${vai[@]:2}\t"; echo ${vai[@]:2}
echo -ne "Lista elementos:\techo \${vai[@]:1:3}\t"; echo ${vai[@]:1:3}
echo -ne "Tamanho:\t\techo \${#vai[@]}\t\t"; echo ${#vai[@]}
echo -ne "1o elemento:\t\techo \${vai[0]}\t\t"; echo ${vai[0]}
echo -ne "2o elemento:\t\techo \${vai[1]}\t\t"; echo ${vai[1]}
echo -ne "3o elemento:\t\techo \${vai[2]}\t\t"; echo ${vai[2]}
echo -ne "4o elemento:\t\techo \${vai[3]}\t\t"; echo ${vai[3]}
echo -ne "5o elemento:\t\techo \${vai[4]}\t\t"; echo ${vai[4]}
#echo -ne "6o elemento:?\t\techo \${vai[5]}\t\t"; echo ${vai[5]}







