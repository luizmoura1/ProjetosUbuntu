#!/usr/bin/env bash
# array1.sh - mostra uma lista de dígitos ou uma lista de letras
# Autor:	Luiz <lcmoura@yahoo.com>
# Histórico:	
# v1.0 09/06/2025, Luiz: - Versão inicial para ilustrar listas com {..}	
echo Escolha uma lista
echo 1 - Dígitos
echo 2 - Letras
read entrada
if [ $entrada = "1" ]; then
	echo Dígitos:
	for i in {0..9}; do
		echo -n $i
	done
elif [ $entrada = "2" ]; then
	echo Letras:
	for i in {A..Z}; do
		echo -n $i
	done
else
	echo Opção Inválida
fi
echo

