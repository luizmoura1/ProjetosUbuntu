#!/usr/bin/env bash
# Autor: Luiz, com suporte do chatGPT
# Objetivo: criar tabela ou simular banco de dados (?)

clear
nomear_arquivo(){
    read -p "Nome do arquivo (ENTER para padrão): " arquivo
    arquivo="${arquivo:-registros.txt}"
    [[ "$arquivo" != *.txt ]] && arquivo="${arquivo}.txt"
}

ler_arquivo(){
	#RAM <- ROM; input; entrada; leitura; <; from
	# exec 3< $arquivo	#?
}

escrever_arquivo(){
	#RAM -> ROM; output; saída; (sobr)escrita; >; to	
	# exec 3> $arquivo	#?
}

ler_teclado(){
	#RAM <- TECLADO; input; entrada; leitura; <; from
	#qual comando? # read? # exec o<	#???
}

escrever_tela(){
	#RAM -> TELA; output; saída; (sobr)escrita; >; to
	#qual comando? # echo? # exec 1>	#???
}

nomear_arquivo
ler_arquivo
escrever_tela
ler_teclado
escrever_tela
escrever_arquivo

