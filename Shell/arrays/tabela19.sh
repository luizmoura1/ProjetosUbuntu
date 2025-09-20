#!/usr/bin/env bash
# Autor: Luiz, com suporte do ChatGPT
# Objetivo: criar tabela com arrays

declare -a colunas=(iden nome sexo nota)
declare -A tabela
l=0

abrir_arquivo(){
    nomear_arquivo
    [[ -f "$arquivo" ]] || touch "$arquivo"
    [[ -s "$arquivo" ]] && ler_arquivo
}

nomear_arquivo(){
    read -p "Nome do arquivo (ENTER para padrão): " arquivo
    arquivo="${arquivo:-registros.txt}"
    [[ "$arquivo" != *.txt ]] && arquivo="${arquivo}.txt"
}

ler_arquivo(){
    printf "\nLendo arquivo...\n"
    while read -ra tokens; do
    	for c in "${!colunas[@]}"; do
    		tabela["$l,${colunas[c]}"]="${tokens[c]}"
    	done
    	((l++))	
    done < "$arquivo"
}

ler_teclado(){
    printf "\nPressione ENTER em 'iden:' para encerrar sem adicionar registros.\n"
    while :; do
    	read -rp "${colunas[0]}: " valor
        [[ -z "$valor" ]] && break
        tabela["$l,${colunas[0]}"]="$valor"
        
        for c in "${colunas[@]:1}"; do
        	read -rp "$c: " valor
     		tabela["$l,$c"]="$valor"
    	done
    	((l++))
    	printf "%s\n"
    done
}

escrever_tela_arquivo(){
    printf "\nSalvando a tabela...\n"
    for c in "${colunas[@]}"; do
    	printf "%s\t" "$c"
    done
    printf "%s\n"

    for ((r=0; r<l; r++)); do     
        for c in "${colunas[@]}"; do
        	printf "%s\t" "${tabela["$r,$c"]}"
    	done
    	printf "%s\n"
    done | tee "$arquivo"
    printf "\nTotal de células na tabela: %d\n" "${#tabela[@]}"
}
                                                                                                                                      
clear
abrir_arquivo
ler_teclado
escrever_tela_arquivo
unset colunas tabela

