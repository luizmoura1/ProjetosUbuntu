#!/bin/bash
# Programa: Manipulacao de Números - Capitulo 2 (Bash)
# Ambiente: Ubuntu / gedit

N1=$((RANDOM % 9 + 1))	# Definição de constante: [readonly | declare -r [-i]] nome_da_constante = valor_inicial
n1=			# Definição de variável:  { declare | typeset [-i] }  nome_da_variavel { = [valor_inicial] } 


echo -e "\nLITERAL NUMERICA:"
echo -e "\033[7m"41"\033[0m"

echo -e "\nVALOR PADRAO DA VARIAVEL ANTES DA INICIALIZACAO:"
echo "n1 = ${n1}"

n1=7
echo -e "\nINICIALIZACAO:"
echo "n1 = ${n1}"

n1=10
echo -e "\nNOVA ATRIBUICAO:"
echo "n1 = ${n1}"

echo -e "\nATRIBUICAO VIA ARGUMENTO:"
n1=$1						 # [ -n "$1" ] &&
echo -e "n1 = ${n1}"

echo -e "\nATRIBUICAO INTERATIVA:"
read -p "Digite um valor: " x
n1=$x
echo "n1 = ${n1}"

echo -e "\nOPERACOES ARITMETICAS:"
echo  "n1 + N1 = " $((n1 + N1))
echo  "n1 - N1 = " $((n1 - N1))
echo  "n1 * N1 = " $((n1 * N1))
echo  "n1 / N1 = " $((n1 / N1))
echo  "n1 % N1 = " $((n1 % N1))
# echo -n "n1 opr N1 = "; expr $n1 opr $N1 <- só com inicialização não vazia exceto se opr for +

echo -e "\nDESAFIO:"
read -p "Adivinhe o valor da constante N1 (1-9): " palpite
(( palpite == N1 )) && echo "Parabéns, você acertou! Era ${N1}." || echo "Não foi desta vez! Era ${N1}."



