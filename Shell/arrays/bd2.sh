#!/usr/bin/env bash
# Autor: Luiz, com suporte do chatGPT
# Objetivo: criar tabela ou simular banco de dados (?)

clear
nomear_arquivo(){
    read -p "Nome do arquivo (ENTER para padrão): " arquivo
    arquivo="${arquivo:-registros.txt}"
    [[ "$arquivo" != *.txt ]] && arquivo="${arquivo}.txt"
    [[ ! -f "$arquivo" ]] && touch "$arquivo"
}

ler_arquivo(){
	#RAM <- ROM; input; entrada; leitura; <; from
	while IFS= read -r linha; do
		echo "$linha"
	done < "$arquivo"
}

escrever_arquivo(){
	#RAM -> ROM; output; saída; (sobr)escrita; >; to	
	echo "foo" > "$arquivo"
}

ler_teclado(){
	#RAM <- TECLADO; input; entrada; leitura; <; from
	while read -p "foo bar:" val; do
		[ -z "$val" ] && break
		# armazenar val
	done
}

escrever_tela(){
	#RAM -> TELA; output; saída; (sobr)escrita; >; to
	echo "bar!"   
}

nomear_arquivo
ler_arquivo
escrever_tela
ler_teclado
escrever_tela
escrever_arquivo
