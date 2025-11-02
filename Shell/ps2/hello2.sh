#!/bin/bash
# Programa: Manipulacao de Texto - Capitulo 1 (Bash)
# Ambiente: Bash

SAUDACAO="Oi, "   # Definição de constante; Outras formas com prefixo readonly | declare -r
nome=             # Definição de variável com atribuição de valor vazio; Formas de declaração: declare | typeset nome

echo -e "\nLITERAL CLASSICA HELLOWORLD:"
echo -e "\033[7mOi, mundo!\033[0m"

echo -e "\nVALOR PADRAO DA VARIAVEL ANTES DA INICIALIZACAO:"
echo "nome = \"${nome}\""
echo "${SAUDACAO}${nome}"

nome="Ana"
echo -e "\nINICIALIZACAO:"
echo "nome = \"${nome}\""
echo "${SAUDACAO}${nome}"

nome="Bela"
echo -e "\nNOVA ATRIBUICAO:"
echo "nome = \"${nome}\""
echo "${SAUDACAO}${nome}"

echo -e "\nENTRADA INTERATIVA:"
read -p "Digite seu nome: " nome        # outra nova atribuição; com outra variável seria outra forma de definição
echo "${SAUDACAO}${nome}"

echo -e "\nENTRADA VIA ARGUMENTO:\n${SAUDACAO}$1"	# [ -n "$1" ] && 

echo -e "\nRESUMO:"
echo -e "Constante:\tSAUDACAO = \"${SAUDACAO}\""
echo -e "Variavel:\tnome = \"${nome}\""
echo -e "Concatenacao:\t${SAUDACAO}${nome}"
echo -e "\nMensagem com atribuicao da variavel"
echo -e "nome:\t\t${SAUDACAO}${nome}"
echo -e "\$1:\t\t${SAUDACAO}$1"				# [ -n "$1" ] && 

