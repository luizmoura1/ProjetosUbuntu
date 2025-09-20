#!/usr/bin/env bash
# Autor: Luiz
# Exemplo: criar tabela

clear
LARG_TELA=$(tput cols)
#MAX_LINS=128

declare -a col=(iden nome) # sexo nota)				# índices textuais, não numéricos
declare -A tab
arquivo=""

read -p "Digite o nome do arquivo (ENTER para padrão): " nome
arquivo="${nome:-registros}.txt"

if [[ ! -f "$arquivo" ]]; then

	# Inserir registros
	echo "Favor informar os dados: " 
	# (Para sair, pressione ENTER para o primeiro dado)
	for ((l=0;; l++)); do					# l<MAX_LINS
		read -p "$((l+1)),${col[0]}: " val		# se índices numéricos, read -p "$((l+1)),1: " val
		[ -z "$val" ] && break
		tab[$l,${col[0]}]=$val				# se índices numéricos, tab[$l,0]=$val
	
		for c in "${col[@]:1}"; do			# se índices numéricos, for ((c=1;c<${#col[@]};c++)); do	
			read -p "$((l+1)),$c: " val		# se índices numéricos, read -p "$((l+1)),$((c+1)): " val
			tab[$l,$c]=$val
		done
		echo
	done

	# Enviar tabela para tela e arquivo
	printf '%*s\n' "$LARG_TELA" '' | tr ' ' '-'
	tam_campo=$((LARG_TELA/${#col[@]}))
	clear
	{		
		#cabeçalho
		for _ in "${col[@]}"; do
    			printf "%-${tam_campo}s" "$_"
		done
		echo
		# registros
		for ((i=0;i<l;i++)); do	         
			for c in "${col[@]}"; do		# se índices numéricos, for ((c=0;c<${#col[@]};c++)); do 
				printf "%-${tam_campo}s" "${tab[$i,$c]}"
			done
			echo
		done
	} | tee -a "$arquivo"
else
	echo "implementar"
fi 

