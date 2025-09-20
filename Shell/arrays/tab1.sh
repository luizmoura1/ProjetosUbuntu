#!/usr/bin/env bash
# Autor: Luiz
# Exemplo: criar tabela, definir campos (elementos de array)

echo "Criação da tabela"
declare -a col
echo "Favor informar os campos (títulos de coluna):"
for ((i=0;;i++)); do
	read -p "Campo $((i+1)): " c
	[ -z "$c" ] && break
	col[i]="$c"
done
echo '--------------------------------------------------------------------------------------------------------------------------'
echo 'Este é um trecho provisório para mera conferência:'
echo "Contagem de campos: $i"
echo -ne "Tamanho array:\t\techo \${#col[@]}\t\t\t\t\t\t\t"; echo ${#col[@]}
echo -ne "Lista índices\t\techo \${!col[@]}\t\t\t\t\t\t\t"; echo ${!col[@]}
echo -ne "Lista elementos\t\techo \${col[@]}\t\t\t\t\t\t\t"; echo ${col[@]}
echo -ne "Lista índices elementos\tfor _ in \${!col[@]};do echo -n \"\$_ \${col[\$_]} \";done;echo\t"; for _ in ${!col[@]}; do echo -n "$_ ${col[$_]} "; done; echo
echo '--------------------------------------------------------------------------------------------------------------------------'
declare -A tab
echo "Favor informar os dados (conteúdo de célula):"
for ((l=0;; l++)); do
	read -p "$((l+1)),${col[0]}: " val
	[ -z "$val" ] && break
	tab[$l,${col[0]}]=$val
	for c in ${col[@]:1}; do
		read -p "$((l+1)),$c: " val
		# [ -z "$c" ] && break	essa linha não faz sentido no loop for _ in lista
		tab[$l,$c]=$val
	done
done
echo 
echo '--------------------------------------------------------------------------------------------------------------------------'
echo 'Este é um trecho provisório para mera conferência:'
echo "Contagem de registros: $l"
echo -ne "Tamanho hash:\t\techo \${#tab[@]}\t\t\t\t\t\t\t"; echo ${#tab[@]}
echo -ne "Lista chaves\t\techo \${!tab[@]}\t\t\t\t\t\t\t"; echo ${!tab[@]}
echo -ne "Lista valores\t\techo \${tab[@]}\t\t\t\t\t\t\t"; echo ${tab[@]}
echo -ne "Lista chaves valoress\tfor _ in \${!tab[@]};do echo -n \"\$_ \${tab[\$_]} \";done;echo\t"; for _ in ${!tab[@]}; do echo -n "$_ ${tab[$_]} "; done; echo
echo '--------------------------------------------------------------------------------------------------------------------------'
echo "Tabela:"
for _ in "${col[@]}"; do
    printf "%-12s" "$_"
done
echo
echo '-------------------------------------------------'
for((i=0;i<$l;i++));do
	for _ in "${col[@]}";do
		printf "%-12s" "${tab[$i,$_]}"
	done
	echo
done
echo


