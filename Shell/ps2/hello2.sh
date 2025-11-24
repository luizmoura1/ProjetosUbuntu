#!/bin/bash
# Programa: Manipulacao de Texto - Capitulo 1 (Bash)
# Ambiente: Ubuntu / gedit

declare -r SAUDACAO="Oi, "				# readonly
declare nome						# typeset nome / nome=

echo -e "\x1b[32mLITERAIS, CONSTANTE SAUDACAO e VARIAVEL nome\x1b[0m"

echo -e "\n1 - LITERAL CLASSICA HELLOWORLD:"
echo -e "\033[7mOi, mundo!\033[0m"

echo -e "\n\x1b[32m============ ATRIBUICOES EM DESIGN-TIME ============\x1b[0m"
echo -e "\n2 - VALOR PADRAO DA VARIAVEL ANTES DA INICIALIZACAO:"
echo "nome = \"${nome}\""
echo "${SAUDACAO}${nome}"				# justaposição, simula concatenação

nome="Ana"
echo -e "\n3 - INICIALIZACAO:"
echo "nome = \"${nome}\""
echo "${SAUDACAO}${nome}"

nome="Bela"
echo -e "\n4 - NOVA ATRIBUICAO:"
echo "nome = \"${nome}\""
echo "${SAUDACAO}${nome}"

echo -e "\n\x1b[32m========== ATRIBUICOES EM INVOCATION-TIME ==========\x1b[0m"
echo -e "\n5 - ENTRADA POR ARGUMENTO:"
nome=$1							# [ -n "$1" ] && 
echo "${SAUDACAO}${nome}"

echo -e "\n\x1b[32m============== ATRIBUICOES EM RUNTIME ==============\x1b[0m"
echo -e "\n6 - ENTRADA POR INTERACAO:"
read -p "Digite seu nome: " x        			# definição implícita, dinâmica, como a anterior (em invocation-time)
nome=$x
echo "${SAUDACAO}${nome}"

echo -e "\n\x1b[32m====================== RESUMO ======================\x1b[0m"
echo -e "Constante SAUDACAO:\t'${SAUDACAO}'"
echo -e "Variavel nome:\t\t'${nome}'"
x=${SAUDACAO}${nome}
echo -e "Concatenacao:\t\t'${x}'"
echo -e "\nMensagem com atribuicao da variavel"
echo -e "nome:\t${SAUDACAO}${nome}"
echo -e "\$1:\t${SAUDACAO}$1"				# [ -n "$1" ] && 

