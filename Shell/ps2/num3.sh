#!/bin/bash
# Programa: Manipulacao de Números - Capitulo 3 (Bash)
# Ambiente: Ubuntu / vscode

readonly K=$((RANDOM % 9 + 1))	

read -p "Digite um valor: " x
(( x )) 2>/dev/null || x=0

echo -e "\nVariavel\tx = $x"
echo -e "Constante\tK = $K"

echo -e "\nOPERACOES ARITMETICAS COM OPERADOR =:"
((valor=x+K)); echo  -e "x + K =\t\t$x + $K =\t\t$valor\t\t( resultado = x + K )"
((valor=x-K)); echo  -e "x - K =\t\t$x - $K =\t\t$valor\t\t( resultado = x - K )"
((valor=x*K)); echo  -e "x * K =\t\t$x * $K =\t\t$valor\t\t( resultado = x * K )"
((valor=x/K)); echo  -e "x / K =\t\t$x / $K =\t\t$valor\t\t( resultado = x / K )"
((valor=x%K)); echo  -e "x % K =\t\t$x % $K =\t\t$valor\t\t( resultado = x % K )"

echo -e "\nOPERACOES ARITMETICAS COM OPERADORES +=, -=, *=, /= E %=:"
y=x             # Não precisa ser y=$x porque $y=$x dentro de (())
((y+=K)); echo -e "x += K\t\t$x += $K\t\t$y\t\t( x = x + K )"
y=x
((y-=K)); echo -e "x -= K\t\t$x -= $K\t\t$y\t\t( x = x - K )"
y=x
((y*=K)); echo -e "x *= K\t\t$x *= $K\t\t$y\t\t( x = x * K )"
y=x
((y/=K)); echo -e "x /= K\t\t$x /= $K\t\t$y\t\t( x = x / K )"
y=x
((y%=K)); echo -e "x %= K\t\t$x %= $K\t\t$y\t\t( x = x % K )"

echo -e "\nPRÉ E PÓS INCREMENTOS E DECREMENTOS:"
y=x
((y=++y)); echo -e "++x\t\t++$x\t\t$y\t\t( x = x + 1 )\t\t( x += 1 )"
y=x
((y=y++)); echo -e "x++\t\t$x++\t\t$y"
y=x
((y=--y)); echo -e "--x\t\t--$x\t\t$y\t\t( x = x - 1 )\t\t( x -= 1 )"
y=x
((y=y--)); echo -e "x--\t\t$x--\t\t$y"

echo -e "\nINVERSAO DE SINAL:"
y=x
((y=-y)); echo -e "-x\t\t-$x\t\t$y\t\t( x = -x )"
y=x
((y=+y)); echo -e "+x\t\t+$x\t\t$y\t\t( x = +x )"
