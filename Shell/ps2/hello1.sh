#!/bin/bash
# Programa: Manipulacao de Texto
# Ambiente: BlackRhino GNU/Linux 1.0 (PS2 bash 2.03)

# ==== DADOS ====
SAUDACAO="Oi, "
nome=""

# ==== COMANDOS ====

# ETAPA 1
echo -e "\033[33m===============VARIAVEIS================\033[0m"
echo "1 - Valor padrao antes da inicializacao"
echo -e "nome = \"${nome}\""
echo -e "\033[31m${SAUDACAO}\033[0m\033[32m${nome}\033[0m""!"
echo "-----------------------------------------"

# ETAPA 2
nome="Ana"
echo "2 - Inicializacao (primeira atribuicao)"
echo -e "nome = \"\033[32m${nome}\033[0m\""
echo -e "\033[31m${SAUDACAO}\033[0m\033[32m${nome}\033[0m""!"
echo "-----------------------------------------"

# ETAPA 3
nome="Bela"
echo "3 - Atribuicao de novo valor"
echo -e "nome = \"\033[32m${nome}\033[0m\""
echo -e "\033[31m${SAUDACAO}\033[0m\033[32m${nome}\033[0m""!"
echo "-----------------------------------------"

# ETAPA 4 - RESUMO
echo -e "\033[33m=================RESUMO=================\033[0m"
echo
echo -e "Constante:\tSAUDACAO = \"\033[31m${SAUDACAO}\033[0m\""
echo -e "Variavel:\tnome = \"\033[32m${nome}\033[0m\""
echo -e "Concatenacao:\t\033[31m${SAUDACAO}\033[0m\033[32m${nome}\033[0m""!"

