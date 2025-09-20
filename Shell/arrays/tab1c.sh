#!/usr/bin/env bash
# Autor: Luiz
# Exemplo: criar tabela
clear
LARG_TELA=$(tput cols)
MAX_LINS=128
MAX_COLS=8
declare -A tab
arquivo=""

read -p "Digite o nome do arquivo (ENTER para padrão): " nome
arquivo="${nome:-registros}.txt"
[[ ! -f "$arquivo" ]] && echo "Arquivo novo: $arquivo"

# Definir ncols em runtime
read -p "Quantos campos terá a tabela (1 a $MAX_COLS)? " ncols # e se o usuário entrar com ncols > max_cols?

# Inserir registros
echo "Favor informar os dados (Para sair, pressione ENTER para o primeiro dado):"
for ((l=0;l<MAX_LINS;l++)); do
	read -p "$((l+1)),1: " val
	[ -z "$val" ] && break
	tab[$l,0]=$val
	         
	for ((c=1;c<ncols;c++)); do
		read -p "$((l+1)),$((c+1)): " val
		tab[$l,$c]=$val
	done
done

# Enviar tabela para tela e para arquivo
tam_campo=$((LARG_TELA/ncols))
clear
for ((i=0;i<l;i++)); do	         
	for ((j=0;j<ncols;j++)); do
		printf "%-${tam_campo}s" "${tab[$i,$j]}"
	done
	printf "\n"
done | tee -a "$arquivo"
