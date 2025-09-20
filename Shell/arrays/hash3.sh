#!/usr/bin/env bash
# Autor: Luiz
# Exemplo: criar tabela com arrays indexados e associativos

clear

# Configurações iniciais
declare -a colunas=(iden nome)        # Array indexado de colunas (campos/títulos)
declare -A tab                        # Array associativo (hash) para armazenar dados
arquivo=""
LARG_TELA=$(tput cols)
tam_campo=$((LARG_TELA/${#colunas[@]}))

# Solicita nome do arquivo
read -p "Digite o nome do arquivo (ENTER para padrão): " nome
arquivo="${nome:-registros}.txt}"

if [[ ! -f "$arquivo" ]]; then
    # --------------------------------------
    # BLOCO 1: Arquivo novo
    # --------------------------------------

    echo "Favor informar os dados: (ENTER no primeiro campo para sair)"
    
    # Inserção de dados via teclado
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

    # Exibição e gravação no arquivo
    clear
    {
        # Cabeçalho
        for _ in "${colunas[@]}"; do
            printf "%-${tam_campo}s" "$_"
        done
        echo

        # Registros
        for ((lin=0; lin<lin; lin++)); do
            for col in "${colunas[@]}"; do
                printf "%-${tam_campo}s" "${tab[$lin,$col]}"
            done
            echo
        done
    } | tee "$arquivo"

else
    # --------------------------------------
    # BLOCO 2: Arquivo existente
    # --------------------------------------
    
    clear
    echo "Arquivo existente: $arquivo"

    # 1) Carregar dados do arquivo para hash
    lin=0
    while IFS= read -r linha; do
        # Ignorar cabeçalho
        if (( lin == 0 )); then
            ((lin++))
            continue
        fi

        # Separar os valores da linha em array temporário
        read -ra dados <<< "$linha"

        for idx_col in "${!colunas[@]}"; do
            tab[$((lin-1)),${colunas[$idx_col]}]="${dados[$idx_col]}"
        done

        ((lin++))
    done < "$arquivo"
    linhas=$((lin-1))  # número de registros carregados

    # 2) Exibir conteúdo carregado na tela
    clear
    {
        # Cabeçalho
        for _ in "${colunas[@]}"; do
            printf "%-${tam_campo}s" "$_"
        done
        echo

        # Registros
        for ((lin=0; lin<linhas; lin++)); do
            for col in "${colunas[@]}"; do
                printf "%-${tam_campo}s" "${tab[$lin,$col]}"
            done
            echo
        done
    }

    # 3) Perguntar ao usuário se deseja inserir novas linhas
    read -p "Deseja inserir novas linhas? (s/n) " resp
    if [[ "$resp" =~ ^[Ss]$ ]]; then
        for ((; ; linhas++)); do
            read -p "$((linhas+1)),${colunas[0]}: " val
            [ -z "$val" ] && break
            tab[$linhas,${colunas[0]}]=$val

            for col in "${colunas[@]:1}"; do
                read -p "$((linhas+1)),$col: " val
                tab[$linhas,$col]=$val
            done
            echo
        done

        # 4) Exibir tabela atualizada e salvar no arquivo
        clear
        {
            # Cabeçalho
            for _ in "${colunas[@]}"; do
                printf "%-${tam_campo}s" "$_"
            done
            echo

            # Registros
            for ((lin=0; lin<linhas; lin++)); do
                for col in "${colunas[@]}"; do
                    printf "%-${tam_campo}s" "${tab[$lin,$col]}"
                done
                echo
            done
        } | tee "$arquivo"
    fi
fi

