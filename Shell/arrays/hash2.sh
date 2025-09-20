#!/usr/bin/env bash
# Autor: Luiz
# Exemplo: criar tabela

clear
declare -a col=(iden nome)
declare -A tab
arquivo=""

LARG_TELA=$(tput cols)
tam_campo=$((LARG_TELA/${#col[@]}))

read -p "Digite o nome do arquivo (ENTER para padrão): " nome
arquivo="${nome:-registros}.txt"

if [[ ! -f "$arquivo" ]]; then

	# Inserir registros
	echo "Favor informar os dados: " 
	# (Para sair, pressione ENTER para o primeiro dado)
	for ((l=0;; l++)); do					
		read -p "$((l+1)),${col[0]}: " val		
		[ -z "$val" ] && break
		tab[$l,${col[0]}]=$val				
	
		for c in "${col[@]:1}"; do				
			read -p "$((l+1)),$c: " val		
			tab[$l,$c]=$val
		done
		echo
	done

	# Enviar tabela para tela e arquivo
	clear
	{		
		#cabeçalho
		for _ in "${col[@]}"; do
    			printf "%-${tam_campo}s" "$_"
		done
		echo
		# registros
		for ((i=0;i<l;i++)); do	         
			for c in "${col[@]}"; do		
				printf "%-${tam_campo}s" "${tab[$i,$c]}"
			done
			echo
		done
	} | tee "$arquivo"

else
    clear
    echo "Arquivo existente: $arquivo"

    # 1) Carregar dados do arquivo → hash (pula o cabeçalho)
    linhas=0
    {
        read -r _cabecalho   # descarta a 1ª linha
        while IFS= read -r linha; do
            [[ -z "$linha" ]] && continue  # ignora linhas vazias
            campos=($linha)                 # separa por espaço/tabs
            for idx in "${!col[@]}"; do
                tab[$linhas,${col[$idx]}]="${campos[$idx]}"
            done
            ((linhas++))
        done
    } < "$arquivo"

    # 2) Mostrar na tela o que foi carregado
    echo
    for _ in "${col[@]}"; do
        printf "%-${tam_campo}s" "$_"
    done
    echo
    for ((i=0; i<linhas; i++)); do
        for c in "${col[@]}"; do
            printf "%-${tam_campo}s" "${tab[$i,$c]}"
        done
        echo
    done

    # 3) Perguntar se deseja inserir mais dados
    echo
    read -rp "Deseja inserir novas linhas? (s/n): " resp
    if [[ "$resp" =~ ^[sS]$ ]]; then
        for ((i=linhas;; i++)); do
            read -p "$((i+1)),${col[0]}: " val
            [[ -z "$val" ]] && break
            tab[$i,${col[0]}]="$val"
            for c in "${col[@]:1}"; do
                read -p "$((i+1)),$c: " val
                tab[$i,$c]="$val"
            done
            ((linhas=i+1))
            echo
        done

        # 4) Salvar e mostrar (sobrescreve o arquivo, sem -a)
        clear
        {
            for _ in "${col[@]}"; do
                printf "%-${tam_campo}s" "$_"
            done
            echo
            for ((i=0; i<linhas; i++)); do
                for c in "${col[@]}"; do
                    printf "%-${tam_campo}s" "${tab[$i,$c]}"
                done
                echo
            done
        } | tee "$arquivo"
    fi
fi

