#!/usr/bin/env bash
# array1.sh - mostra uma lista de dias da semana ou uma lista de meses
# Site:	https://computerlanguagesite.wordpress.com/2018/11/04/shell-script-condicoes-loops-e-arrays/
# Autor:	Luiz <lcmoura@yahoo.com>
# Histórico:
# v1.0 04/11/2018, Luiz: 
# - Versão inicial para ilustrar condições, loops e arrays (com nano)
# v1.1 09/06/2025, Luiz: 
# - Renomeado de array1.sh para lista1.sh
# - Inclusão de cabeçalho	(com gedit)
semana="domingo segunda-feira terça-feira quarta-feira
quinta-feira sexta-feira sábado"
mes="janeiro fevereiro março abril maio junho julho
agosto setembro outubro novembro dezembro"
echo Escolha uma lista
echo 1 - Dias da Semana
echo 2 - Meses do Ano
read entrada
if [ $entrada = "1" ]; then
	echo Dias da Semana:
	for i in $semana; do
		echo $i
	done
elif [ $entrada = "2" ]; then
	echo Meses do Ano:
	for i in $mes; do
		echo $i
	done
else
	echo Opção Inválida
fi
