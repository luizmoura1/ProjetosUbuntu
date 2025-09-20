#!/usr/bin/env bash
# Autor: Luiz, com suporte do chatGPT
# Objetivo: criar tabela ou simular banco de dados (?)

declare -A tabela
declare -a colunas=(iden nome sexo nota)
l=0

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

# Lê o arquivo e monta tabela[l,col]
# Pula o cabeçalho se a 1ª linha for exatamente os nomes em ${colunas[@]}
ler_arquivo(){
    echo -e "\nLendo arquivo..."
    local primeira=1
    while IFS= read -r linha; do
        # tokeniza por espaço/tab (funciona para header com espaço ou tab)
        read -ra campos <<< "$linha"

        if (( primeira )); then
            primeira=0
            # checa se é cabeçalho
            local eh_header=1
            for ((c=0; c<${#colunas[@]}; c++)); do
                [[ "${campos[c]}" != "${colunas[c]}" ]] && { eh_header=0; break; }
            done
            (( eh_header )) && continue
        fi

        # escreve campos da linha l na tabela
        for ((c=0; c<${#colunas[@]}; c++)); do
            tabela["$l,${colunas[c]}"]="${campos[c]}"
        done
        ((l++))
    done < "$arquivo"
}

# Pergunta uma coluna por vez; ENTER em "iden" encerra
ler_teclado(){
    echo -e "\nDigite os registros (ENTER vazio em 'iden' para encerrar):"
    while true; do
        read -rp "iden: " v0
        [[ -z "$v0" ]] && break
        read -rp "nome: " v1
        read -rp "sexo: " v2
        read -rp "nota: " v3

        tabela["$l,iden"]="$v0"
        tabela["$l,nome"]="$v1"
        tabela["$l,sexo"]="$v2"
        tabela["$l,nota"]="$v3"
        ((l++))
        echo
    done
}

escrever_tela(){
    echo -e "\nExibição dos dados"
    echo "Conteúdo do arquivo '$arquivo':"
    echo "-------------------------------------"
    printf "%s\t%s\t%s\t%s\n" "${colunas[@]}"
    for ((r=0; r<l; r++)); do
        printf "%s\t%s\t%s\t%s\n" \
            "${tabela["$r,iden"]}" \
            "${tabela["$r,nome"]}" \
            "${tabela["$r,sexo"]}" \
            "${tabela["$r,nota"]}"
    done
    echo "-------------------------------------"
}

# Sobrescreve o arquivo com cabeçalho + linhas
escrever_arquivo(){
    echo -e "\nSalvando arquivo..."
    : > "$arquivo"  # limpa
    printf "%s\t%s\t%s\t%s\n" "${colunas[@]}" >> "$arquivo"
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
escrever_tela
escrever_arquivo

