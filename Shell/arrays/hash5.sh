#!/usr/bin/env bash
# Autor: Luiz
# Exemplo: criar tabela - versão linear pronta para modularização

clear
declare -a colunas=(iden nome)   # títulos de coluna
declare -A tab                   # hash para armazenar dados
arquivo=""

LARG_TELA=$(tput cols)
tam_campo=$((LARG_TELA/${#colunas[@]}))

echo "\${LARG_TELA} = " ${LARG_TELA}		# informação temporária - esta linha será retirada
echo "\${#colunas[@]} = " ${#colunas[@]}	# informação temporária - esta linha será retirada
echo "\${tam_campo} = " ${tam_campo}		# informação temporária - esta linha será retirada

	# 1) nomear_arquivo()
read -p "Digite o nome do arquivo (ENTER para padrão): " nome
arquivo="${nome:-registros}.txt"

if [[ ! -f "$arquivo" ]]; then
	# Arquivo novo
	# 2) carregar_teclado()
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
    #linhas=$lin				# precisa mesmo dessa nova variável (linhas)???

	# 3) exibir_hash()
    clear
    { 
        # cabeçalho
        for _ in "${!colunas[@]}"; do			# for col in "${colunas[@]}"; do
            printf "%-${tam_campo}s" "${colunas[$_]}"   # printf "%-${tam_campo}s" "$col"
        done
        printf "\n"
        # registros
        for ((i=0;i<lin;i++)); do			# for ((lin=0; lin<linhas; lin++)); do
            for _ in "${!colunas[@]}"; do
                printf "%-${tam_campo}s" "${tab[$i,${colunas[$_]}]}"	# $lin,${colunas[_]}
            done
            printf "\n"
        done
    } | tee "$arquivo"					# > "$arquivo"

else
    # Arquivo existente
    #clear
    echo "Arquivo existente: $arquivo"

    # 4) carregar_arquivo()
lin=0
while IFS= read -r linha; do
    if (( lin == 0 )); then
        # Ignora cabeçalho
        :
    else
        # divide a linha pelo separador '|'
        IFS='|' read -r -a campos <<< "$linha"

        # popula o hash tab[$i,col]
        for idx in "${!colunas[@]}"; do
            tab[$((lin-1)),${colunas[idx]}]="${campos[idx]}"
        done
    fi
    ((lin++))
done < "$arquivo"

lin=$((lin-1))   # lin passa a ser o total de registros 
   
# COMO FAZER tab=dados para aproveitar o trecho seguinte sem alterações (exibir_hash) ?????/    
    	# 3) exibir_hash()
    { 
        # cabeçalho
        for _ in "${!colunas[@]}"; do			# for col in "${colunas[@]}"; do
            printf "%-${tam_campo}s" "${colunas[$_]}"   # printf "%-${tam_campo}s" "$col"
        done
        printf "\n"
        # registros
        for ((i=0;i<lin;i++)); do			# for ((lin=0; lin<linhas; lin++)); do
            for _ in "${!colunas[@]}"; do
                printf "%-${tam_campo}s" "${tab[$i,${colunas[$_]}]}"	# $lin,${colunas[_]}
            done
            printf "\n"
        done
    } | tee "$arquivo"					# > "$arquivo"
fi 

