#!/usr/bin/env bash
# Autor: Luiz, com suporte do chatGPT
# Objetivo: criar tabela ou simular banco de dados (?)

declare -a dados        # nosso "banco" em RAM
clear
nomear_arquivo(){
    read -p "Nome do arquivo (ENTER para padrão): " arquivo
    arquivo="${arquivo:-registros.txt}"
    [[ "$arquivo" != *.txt ]] && arquivo="${arquivo}.txt"
}

ler_arquivo(){
	#RAM <- ROM; input; entrada; leitura; <; from
	echo -e "\nLendo arquivo..."
	#dados=()
	while read -ra linha; do
		dados+=("${linha[@]}")
	done < "$arquivo"
}

escrever_arquivo(){
	#RAM -> ROM; output; saída; (sobr)escrita; >; to
	echo -e "\nSalvando arquivo..."
	echo "Rotina a ser implementada."
}

ler_teclado(){
	#RAM <- TECLADO; input; entrada; leitura; <; from
	echo -e "\nLendo teclado..."
	while read -p "Informe:" valor; do
		[[ -z "$valor" ]] && break
		dados+=("${valor}")
	done
}

escrever_tela(){
	#RAM -> TELA; output; saída; (sobr)escrita; >; to
	echo -e "Arquivo aberto: $arquivo"
	for _ in "${!dados[@]}"; do
		echo -e "$_\t${dados[$_]}"
	done
    	echo "Índices: ${!dados[@]}"
    	echo "Elementos: ${dados[@]}"
    	echo "Comprimento: ${#dados[@]}"
    	echo "Primeiro: ${dados[0]}"
    	if ((${#dados[@]})); then
    		echo "Último: ${dados[-1]}"
	fi
    	echo "Slice (a partir do 2º): ${dados[@]:1}"
    	echo "Slice (2 elementos após o 2º): ${dados[@]:1:2}"   
}

nomear_arquivo

if [[ ! -f "$arquivo" && -s "$arquivo"]]; then
    touch "$arquivo"
    ler_arquivo
    escrever_tela
fi

ler_teclado
escrever_tela
escrever_arquivo

