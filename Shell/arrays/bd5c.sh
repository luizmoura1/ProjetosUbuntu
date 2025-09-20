#!/usr/bin/env bash
# Autor: Luiz, com suporte do chatGPT
# Objetivo: criar tabela ou simular banco de dados (?)

declare -a dados
declare -A tabela
declare -a colunas=(iden nome sexo nota)
l=0		# aqui não é melhor?
clear
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
    echo -e "\nLendo arquivo..."
    #l=0	não é melhor ficar no comeõ do script?
    while read -ra campos; do		# o que se chamava linha agora se chama campos, certo?
        c=0			# eu preciso contar c?  Não posso usar for _ in "${colunas[@]" sendo _ cada elemento nomeado?
        for col in "${colunas[@]}"; do
            tabela["$l,$col"]="${campos[$c]}"
            ((c++))		# ?
        done
        ((l++))
    done < "$arquivo"
}

ler_teclado(){
    echo -e "\nDigite os registros (vazio para encerrar):"
    while true; do
        read -rp "Iden Nome Sexo Nota > " -a campos		# prompt deveria ser individualizado
        [[ ${#campos[@]} -eq 0 ]] && break
        c=0
        for col in "${colunas[@]}"; do
            tabela["$l,$col"]="${campos[$c]}"
            ((c++))
        done
        ((l++))
    done
}

formatar(){
    # alimentar tabela com dados, sendo chave as coordenadas x (array indexado colunas) e y (só dependendo do loop de alimentação).
    echo "Formatando dados..."
    for ((i=0; i<${#dados[@]}; i+=${#colunas[@]})); do
    	for ((c=0; c<${#colunas[@]}; c++)); do
        	tabela["$l,${colunas[c]}"]="${dados[i+c]}"
    	done
    ((l++))
    done
}

escrever_tela(){
    echo -e "\nExibição dos dados"
    echo "Conteúdo do arquivo '$arquivo':"
    echo "-------------------------------------"
    printf "%s\t%s\t%s\t%s\n" "iden" "nome" "sexo" "nota"
    for ((r=0; r<l; r++)); do
        printf "%s\t%s\t%s\t%s\n" \
            "${tabela["$r,iden"]}" \
            "${tabela["$r,nome"]}" \
            "${tabela["$r,sexo"]}" \
            "${tabela["$r,nota"]}"
    done
    echo "-------------------------------------"
}

escrever_arquivo(){
    echo -e "\nSalvando arquivo..."
    #: > "$arquivo"  # limpa o arquivo antes de gravar (se quiser sobrescrever)
    for ((r=0; r<l; r++)); do
        printf "%s\t%s\t%s\t%s\n" \
            "${tabela["$r,iden"]}" \
            "${tabela["$r,nome"]}" \
            "${tabela["$r,sexo"]}" \
            "${tabela["$r,nota"]}" >> "$arquivo"
    done
}

abrir_arquivo
ler_teclado
formatar
escrever_tela
escrever_arquivo

