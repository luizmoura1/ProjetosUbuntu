#!/usr/bin/env bash
clear
printf '%sO P E R A Ç Õ E S  A R I T M É T I C A S\n'
printf '%s-----------------------------------------------------------\n'
printf '%sOperandos: literais definidas pelo usuário em design-time.\n'

printf 'echo -n "expr 2 %% 3 = ";expr 2 %% 3\t\t'
echo -n "expr 2 % 3 = ";expr 2 % 3

printf "printf 'expr 2 %%%% 3 = ';expr 2 %% 3\t\t"
printf 'expr 2 %% 3 = ';expr 2 % 3

printf "printf '%%s' 'expr 2 %% 3 = ';expr 2 %% 3\t\t"
printf '%s' 'expr 2 % 3 = ';expr 2 % 3

printf "printf '%%sexpr 2 %%%% 3 = ';expr 2 %% 3\t\t"
printf '%sexpr 2 %% 3 = ';expr 2 % 3

printf "printf '%%s%%d\\\n' 'expr 2 %% 3 = ' \$(expr 2 %% 3)\t"
printf '%s%d\n' 'expr 2 % 3 = ' $(expr 2 % 3)

printf '%s-----------------------------------------------------------\n'
printf '%sOperandos: variáveis definidas pelo usuário em design-time.\n'
a=2; b=3
printf 'a=%s\n' $a; printf 'b=%d\n' $b

echo -n "expr \$a % \$b = ";expr $a % $b

printf 'expr $a %% $b = ';expr $a % $b
printf '%s' 'expr $a % $b = ';expr $a % $b
printf '%sexpr $a %% $b = ';expr $a % $b
printf '%s%d\n' 'expr $a % $b = ' $(expr $a % $b)

printf '%s-----------------------------------------------------------\n'
printf '%sObservações:\n'
printf 'Pode-se usar indiferentemente qualquer tipo de aspas (simples ou duplas)\n'
printf 'Este exemplo ilustra apenas a operação de módulo (ou resto de divisão).\n'
printf 'Para as demais operações, basta substituir o operador '%%' por:\n'
printf '  +	\t(adição)\n'
printf '  -	\t(subtração)\n'
printf '  *	\t(multiplicação) — lembre de escapar: \*\n'
printf '  /	\t(divisão)\n'

