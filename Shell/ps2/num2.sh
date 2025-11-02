#!/bin/bash
# Programa: Manipulacao de Números - Capitulo 3 (Bash)
# Ambiente: Ubuntu / vscode

readonly K=$((RANDOM % 9 + 1))	

read -p "Digite um valor: " x
(( x )) 2>/dev/null || x=0

echo -e "\nVariavel\tx = $x"
echo -e "Constante\tK = $K"

echo -e "\nOPERACOES ARITMETICAS COM OPERADOR =:"
let valor=x+K; echo  -e "x + K =\t\t$x + $K =\t\t$valor\t\t( resultado = x + K )"
let valor=x-K; echo  -e "x - K =\t\t$x - $K =\t\t$valor\t\t( resultado = x - K )"
let valor=x*K; echo  -e "x * K =\t\t$x * $K =\t\t$valor\t\t( resultado = x * K )"
let valor=x/K; echo  -e "x / K =\t\t$x / $K =\t\t$valor\t\t( resultado = x / K )"
let valor=x%K; echo  -e "x % K =\t\t$x % $K =\t\t$valor\t\t( resultado = x % K )"

echo -e "\nOPERACOES ARITMETICAS COM OPERADORES +=, -=, *=, /= E %=:"
let y=x         # Não precisa ser let y=$x porque $y=$x dentro de (())
let y+=K; echo -e "x += K\t\t$x += $K\t\t$y\t\t( x = x + K )"
let y=x
let y-=K; echo -e "x -= K\t\t$x -= $K\t\t$y\t\t( x = x - K )"
let y=x
let y*=K; echo -e "x *= K\t\t$x *= $K\t\t$y\t\t( x = x * K )"
let y=x
let y/=K; echo -e "x /= K\t\t$x /= $K\t\t$y\t\t( x = x / K )"
let y=x
let y%=K; echo -e "x %= K\t\t$x %= $K\t\t$y\t\t( x = x % K )"

echo -e "\nPRÉ E PÓS INCREMENTOS E DECREMENTOS:"
let y=x
let y=++y; echo -e "++x\t\t++$x\t\t$y\t\t( x = x + 1 )\t\t( x += 1 )"
let y=x
let y=y++; echo -e "x++\t\t$x++\t\t$y"
let y=x
let y=--y; echo -e "--x\t\t--$x\t\t$y\t\t( x = x - 1 )\t\t( x -= 1 )"
let y=x
let y=y--; echo -e "x--\t\t$x--\t\t$y"

echo -e "\nINVERSAO DE SINAL:"
let y=x
let y=-y; echo -e "-x\t\t-$x\t\t$y\t\t( x = -x )"
let y=x
let y=+y; echo -e "+x\t\t+$x\t\t$y\t\t( x = +x )"
