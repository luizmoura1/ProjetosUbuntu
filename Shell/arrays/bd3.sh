#!/usr/bin/env bash
# Autor: Luiz, com suporte do chatGPT
# Objetivo: criar tabela ou simular banco de dados (?)

declare -a array        # nosso "banco" em RAM
clear
nomear_arquivo(){
    read -p "Nome do arquivo (ENTER para padrão): " arquivo
    arquivo="${arquivo:-registros.txt}"
    [[ "$arquivo" != *.txt ]] && arquivo="${arquivo}.txt"
    [[ ! -f "$arquivo" ]] && touch "$arquivo"
    echo -e "Arquivo aberto: $arquivo"
}

ler_arquivo(){
	#RAM <- ROM; input; entrada; leitura; <; from
	echo -e "\nLendo arquivo..."
	array=()		# precisa mesmo?
	while IFS= read -r linha; do
		array+=("$linha")
	done < "$arquivo"
}

escrever_arquivo(){
	#RAM -> ROM; output; saída; (sobr)escrita; >; to
	echo -e "\nSalvando arquivo..."
	: > "$arquivo"		# precisa mesmo?
	for elem in "${array[@]}"; do	
		echo "$elem" >> "$arquivo"	# sobrescrever
	done
}

ler_teclado(){
	#RAM <- TECLADO; input; entrada; leitura; <; from
	echo -e "\nLendo teclado..."
	while read -p "Informe:" val; do		# OBSERVAÇÃO: por ora, apenas ENTER !!!
		[ -z "$val" ] && break
		array+=("$val")
	done
}

escrever_tela(){
	#RAM -> TELA; output; saída; (sobr)escrita; >; to
	echo -e "\n=== Conteúdo atual do array ==="
    	echo "Índices: ${!array[@]}"
    	echo "Elementos: ${array[@]}"
    	echo "Comprimento: ${#array[@]}"
    	echo "Primeiro: ${array[0]}"
    	echo "Último: ${array[-1]}"
    	echo "Slice (a partir do 2º): ${array[@]:1}"
    	echo "Slice (2 elementos do 2º): ${array[@]:1:2}"   
}

nomear_arquivo
ler_arquivo
escrever_tela
ler_teclado
escrever_tela
escrever_arquivo

