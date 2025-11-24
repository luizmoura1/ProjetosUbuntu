#!/bin/bash
# Programa: Manipulacao de Números - Capitulo 2 (Bash)
# Ambiente: Ubuntu / gedit

K1=$((RANDOM % 9 + 1))	# ainda é variável, podendo ser 'constante' se não houver atribuições
readonly K1		# Definição de constante: ( declare -r [-i] | typeset -r [-i] | readonly )    nome_da_constante { = valor_inicial }
n1=			# Definição de variável:  { declare  [-i] | typeset  [-i] } nome_da_variavel  { = [ valor_inicial] }

echo -e "\x1b[32mLITERAL, CONSTANTE K1 e VARIAVEL n1\x1b[0m"

echo -e "\nLITERAL NUMERICA:"
echo -e "\033[7m"41"\033[0m"

echo -e "\n\x1b[32m============ ATRIBUICOES EM DESIGN-TIME ============\x1b[0m"

echo -e "\nVALOR PADRAO DA VARIAVEL ANTES DA INICIALIZACAO:"
echo "n1 = ${n1}"

n1=7
echo -e "\nINICIALIZACAO:"
echo "n1 = ${n1}"

n1=10	# alternativas: com -i na declaração, n1=n1+3 ; sem -i na declaração, n1=$((n1+3))
echo -e "\nNOVA ATRIBUICAO:"
echo "n1 = ${n1}"

echo -e "\n\x1b[32m========== ATRIBUICOES EM INVOCATION-TIME ==========\x1b[0m"
echo -e "\n5 - ENTRADA POR ARGUMENTO:"
n1=$1							# [ -n "$1" ] && 
echo "n1 = ${n1}"

echo -e "\n\x1b[32m============== ATRIBUICOES EM RUNTIME ==============\x1b[0m"
echo -e "\nATRIBUICAO INTERATIVA:"
read -p "Digite um valor (0-9): " x
n1=$x
echo "n1 = ${n1}"

echo -e "\n\x1b[32m============== OPERACOES ARITMETICAS ===============\x1b[0m"
echo  "n1 + K1 = " $((n1 + K1))
echo  "n1 - K1 = " $((n1 - K1))
echo  "n1 * K1 = " $((n1 * K1))
echo  "n1 / K1 = " $((n1 / K1))
echo  "n1 % K1 = " $((n1 % K1))

# echo -n "n1 opr K1 = "; expr $n1 opr $K1 <- forma só aceita com inicialização não vazia exceto se opr for '+'
# expr exige operandos não vazios; '+' é ambíguo (às vezes unário) e pode não falhar

echo -e "\n\x1b[32m===================== DESAFIO ======================\x1b[0m\n"
read -p "Adivinhe o valor da constante K1 (1-9): " x
(( x == K1 )) && echo "Parabéns, você acertou! Era ${K1}." || echo "Não foi desta vez! Era ${K1}."

