#!/usr/bin/env bash
# Autor: Luiz
# Exemplo: criar tabela, definir campos (elementos de array)
LARG_TELA=$(tput cols)
echo "Criação da tabela"
declare -a col
echo "Favor informar os campos (títulos de coluna):"
for ((i=0;;i++)); do
	read -p "Campo $((i+1)): " c
	[ -z "$c" ] && break
	col[i]="$c"
done
declare -A tab
echo "Favor informar os dados (conteúdo de célula):"
for ((l=0;; l++)); do
	read -p "$((l+1)),${col[0]}: " val
	[ -z "$val" ] && break
	tab[$l,${col[0]}]=$val
	for c in "${col[@]:1}"; do
		read -p "$((l+1)),$c: " val
		tab[$l,$c]=$val
	done
done
tam_campo=$((LARG_TELA/${#col[@]}))
clear
for _ in "${col[@]}"; do
    printf "%-${tam_campo}s" "$_"
done
echo
printf '%*s\n' "$LARG_TELA" '' | tr ' ' '-'
for((i=0;i<$l;i++));do
  for _ in "${col[@]}";do
      printf "%-${tam_campo}s" "${tab[$i,$_]}"
  done
  echo 
done | tee -a tabelaN.txt
