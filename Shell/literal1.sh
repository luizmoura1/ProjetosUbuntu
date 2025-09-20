#!/usr/bin/env bash
clear
echo 'O P E R A Ç Õ E S  A R I T M É T I C A S'
echo '-------------------------------------------------------------------'
echo 'Operandos: literais definidas pelo usuário em design-time.'
echo -e 'formas de imprimir a expressão\t\t\tcomando = resultado'


echo '-------------------------------------------------------------------'
echo 'usando echo'
echo -en "echo -n 'expr 2 + 3 = ';expr 2 + 3\t\t";echo -n 'expr 2 + 3 = ';expr 2 + 3
echo -en 'echo -n "expr 2 + 3 = ";expr 2 + 3\t\t';echo -n "expr 2 + 3 = ";expr 2 + 3
echo '-------------------------------------------------------------------'
echo 'usando echo e $(expr)'
echo -en "echo 'expr 2 + 3 = \$(expr 2 + 3)'\t\t";echo 'expr 2 + 3 = $(expr 2 + 3)'	# não expande!
echo -en 'echo "expr 2 + 3 = $(expr 2 + 3)"\t\t';echo "expr 2 + 3 = $(expr 2 + 3)"
echo -en "echo 'expr 2 + 3 = ' \$(expr 2 + 3)\t\t";echo 'expr 2 + 3 = ' $(expr 2 + 3)
echo -en 'echo "expr 2 + 3 = " $(expr 2 + 3)\t\t';echo "expr 2 + 3 = " $(expr 2 + 3)
echo '-------------------------------------------------------------------'
echo 'usando printf'
printf "printf 'expr 2 + 3 = ';expr 2 + 3\t\t";printf 'expr 2 + 3 = ';expr 2 + 3
printf 'printf "expr 2 + 3 = ";expr 2 + 3\t\t';printf "expr 2 + 3 = ";expr 2 + 3
printf "%sprintf '%%sexpr 2 + 3 = ';expr 2 + 3\t\t";printf '%sexpr 2 + 3 = ';expr 2 + 3
printf '%sprintf "%%sexpr 2 + 3 = ";expr 2 + 3\t\t';printf "%sexpr 2 + 3 = ";expr 2 + 3
printf "%s\t\t" "printf '%s' 'expr 2 + 3 = ';expr 2 + 3";printf '%s' 'expr 2 + 3 = ';expr 2 + 3
printf '%s\t\t' 'printf "%s" "expr 2 + 3 = ";expr 2 + 3';printf "%s" "expr 2 + 3 = ";expr 2 + 3
echo '-------------------------------------------------------------------'
echo 'usando printf e $(expr)'
printf "printf 'expr 2 + 3 = \$(expr 2 + 3)\\\n'\t\t";printf 'expr 2 + 3 = $(expr 2 + 3)\n'	# não expande!
printf 'printf "expr 2 + 3 = $(expr 2 + 3)\\n"\t\t';printf "expr 2 + 3 = $(expr 2 + 3)\n" 
printf "printf 'expr 2 + 3 = %%d\\\n' \$(expr 2 + 3)\t";printf 'expr 2 + 3 = %d\n' $(expr 2 + 3)
printf 'printf "expr 2 + 3 = %%d\\n" $(expr 2 + 3)\t';printf "expr 2 + 3 = %d\n" $(expr 2 + 3)
printf "printf '%%s%%d\\\n' 'expr 2 + 3 = ' \$(expr 2 + 3)\t";printf '%s%d\n' 'expr 2 + 3 = ' $(expr 2 + 3)
printf 'printf "%%s%%d\\n" "expr 2 + 3 = " $(expr 2 + 3)\t';printf "%s%d\n" "expr 2 + 3 = " $(expr 2 + 3)
echo '-------------------------------------------------------------------'

