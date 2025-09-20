#!/usr/bin/env bash
# Autor: Luiz
# Exemplo: criar tabela - versão linear pronta para modularização

clear
declare -a colunas=(iden nome)   # títulos de coluna
declare -A tab                   # hash para armazenar dados
arquivo=""

LARG_TELA=$(tput cols)
tam_campo=$((LARG_TELA/${#colunas[@]}))
echo "${LARG_TELA} = " ${LARG_TELA}
echo "${#colunas[@]} = " ${#colunas[@]}
echo "${tam_campo} = " ${tam_campo}
# 1) Nomear/abrir arquivo - nomear_arquivo()
read -p "Digite o nome do arquivo (ENTER para padrão): " nome
arquivo="${nome:-registros}.txt"

if [[ ! -f "$arquivo" ]]; then
    # Arquivo novo

    # 2) Carregar teclado (preencher hash) - carregar_teclado()
    echo "Favor informar os dados (ENTER para sair no primeiro campo):"
    for ((lin=0;; lin++)); do
        read -p "$((lin+1)),${colunas[0]}: " val
        [ -z "$val" ] && break
        tab[$lin,${colunas[0]}]=$val
        
        for col in "${colunas[@]:1}"; do
            read -p "$((lin+1)),$col: " val
            tab[$lin,$col]=$val
        done
        echo
    done
    linhas=$lin

    # 3) exibir_hash()
    clear
    { 
        # cabeçalho
        for col in "${colunas[@]}"; do
            printf "%-${tam_campo}s" "$col"
        done
        printf "\n"
        # registros
        for ((lin=0; lin<linhas; lin++)); do
            for _ in "${!colunas[@]}"; do
                printf "%-${tam_campo}s" "${tab[$lin,${colunas[$_]}]}"	# também é aceitável ${colunas[_]} !!!
            done
            printf "\n"
        done
    } | tee "$arquivo"							# > "$arquivo" não mostra na tela
    
else
    # Arquivo existente
    clear
    echo "Arquivo existente: $arquivo"

    # 4) Carregar arquivo → hash (pulando cabeçalho) - carregar_arquivo()
    lin=0
    while IFS= read -r linha; do
        [ $lin -eq 0 ] && { ((lin++)); continue; }  # pula cabeçalho
        dados=($linha)
        for _ in "${!colunas[@]}"; do
            tab[$((lin-1)),${colunas[_]}]=${dados[_]}
        done
        ((lin++))
    done < "$arquivo"
    linhas=$((lin-1))

    # 5) Exibir hash (arquivo) - exibir_hash()
    clear
    { 
        for col in "${colunas[@]}"; do
            printf "%-${tam_campo}s" "$col"
        done
        echo
        for ((lin=0; lin<linhas; lin++)); do
            for _ in "${!colunas[@]}"; do
                printf "%-${tam_campo}s" "${tab[$lin,${colunas[_]}]}"
            done
            echo
        done
    } > "$arquivo"

    # 6) Perguntar se deseja inserir novos registros - carregar_teclado()
    read -p "Deseja inserir novos registros? (s/n): " resp
    if [[ "$resp" =~ ^[sS]$ ]]; then
        # 6) Carregar teclado novamente (completar hash) - carregar_teclado()
        for ((lin=linhas;; lin++)); do
            read -p "$((lin+1)),${colunas[0]}: " val
            [ -z "$val" ] && break
            tab[$lin,${colunas[0]}]=$val
            for col in "${colunas[@]:1}"; do
                read -p "$((lin+1)),$col: " val
                tab[$lin,$col]=$val
            done
            echo
        done
        linhas=$lin

        # 7) Exibir hash atualizado - exibir_hash()
        clear
        { 
            for col in "${colunas[@]}"; do
                printf "%-${tam_campo}s" "$col"
            done
            echo
            for ((lin=0; lin<linhas; lin++)); do
                for _ in "${!colunas[@]}"; do
                    printf "%-${tam_campo}s" "${tab[$lin,${colunas[_]}]}"
                done
                echo
            done
        } > "$arquivo"
    fi
fi

