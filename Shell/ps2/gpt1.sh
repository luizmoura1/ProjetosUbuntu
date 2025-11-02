#!/bin/bash
# Programa: Operacoes com Numeros - Capitulo 2 (Bash)
# Ambiente: Bash

NUM=5     # Definição de constante numérica; outras formas: readonly | declare -r
n=        # Definição de variável numérica com valor vazio; Formas de declaração: declare | typeset n

echo -e "\nLITERAL NUMERICA:"
echo 42

echo -e "\nVALOR PADRAO DA VARIAVEL ANTES DA INICIALIZACAO"
echo "n = \"${n}\""
# tentativa de operação com variável ainda vazia falharia

n=7
echo -e "\nINICIALIZACAO"
echo "n = ${n}"

((n=10))
echo -e "\nATRIBUICAO ARITMETICA"
echo "n = ${n}"

((soma=n+NUM))
echo -e "\nOPERACOES ARITMETICAS"
echo "n + NUM = ${soma}"

((sub=n-NUM, mul=n*NUM, div=n/NUM, mod=n%NUM))
echo "n - NUM = ${sub}"
echo "n * NUM = ${mul}"
echo "n / NUM = ${div}"
echo "n % NUM = ${mod}"

((n+=3))
echo -e "\nREATRIBUICAO"
echo "n = ${n}"

echo -e "\nENTRADA INTERATIVA"
read -p "Digite um numero: " n
((dobro=n*2))
echo "Dobro de ${n} = ${dobro}"

echo -e "\nENTRADA VIA ARGUMENTO"
((resultado=$1+10))
echo "Argumento + 10 = ${resultado}"

echo -e "\nRESUMO"
echo -e "Constante:\tNUM = ${NUM}"
echo -e "Variavel:\tn = ${n}"
echo -e "Operacoes:\tsoma=${soma}, sub=${sub}, mul=${mul}, div=${div}, mod=${mod}"
echo -e "Dobro:\t\t${dobro}"
echo -e "Arg + 10:\t${resultado}"


