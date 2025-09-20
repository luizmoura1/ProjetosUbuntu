#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  R E L A C I O N A I S'
echo '-----------------------------------------------------------'
echo 'Operandos: literais definidas pelo usuário em design-time.'
echo -n "[ 2 -eq 3 ]; echo \$? = "; [ 2 -eq 3 ]; echo $?
echo -n "[ 2 -ne 3 ]; echo \$? = "; [ 2 -ne 3 ]; echo $?
echo -n "[ 2 -lt 3 ]; echo \$? = "; [ 2 -lt 3 ]; echo $?
echo -n "[ 2 -le 3 ]; echo \$? = "; [ 2 -le 3 ]; echo $?
echo -n "[ 2 -gt 3 ]; echo \$? = "; [ 2 -gt 3 ]; echo $?
echo -n "[ 2 -ge 3 ]; echo \$? = "; [ 2 -ge 3 ]; echo $?
echo '-----------------------------------------------------------'
#echo -n "[ 2 -eq 3 ]; echo \$? = "; [ 2 -eq 3 ]; echo $?		# repetição
echo -n "test 2 -eq 3 ; echo \$? = "; test 2 -eq 3; echo $?
echo -n "[[ 2 -eq 3 ]]; echo \$? = "; [[ 2 -eq 3 ]]; echo $?
echo '-----------------------------------------------------------'
echo 'Operandos: variáveis definidas pelo usuário em design-time.'
echo "a=2;b=3";a=2;b=3
echo -n "[ \$a -eq \$b ]; echo \$? = "; [ $a -eq $b ]; echo $?		# precisa $ e escape se string entre "
echo -n "[ \$a -ne \$b ]; echo \$? = "; [ $a -ne $b ]; echo $?
echo -n "[ \$a -lt \$b ]; echo \$? = "; [ $a -lt $b ]; echo $?
echo -n "[ \$a -le \$b ]; echo \$? = "; [ $a -le $b ]; echo $?
echo -n "[ \$a -gt \$b ]; echo \$? = "; [ $a -gt $b ]; echo $?
echo -n "[ \$a -ge \$b ]; echo \$? = "; [ $a -ge $b ]; echo $?
echo '-----------------------------------------------------------'
#echo -n "[ \$a -eq \$b ]; echo \$? = "; [ $a -eq $b ]; echo $?		# repetição
echo -n "test \$a -eq \$b ; echo \$? = "; test $a -eq $b; echo $?	# precisa $, e escape se string entre "
echo -n "[[ a -eq b ]]; echo \$? = "; [[ a -eq b ]]; echo $?		# $ desnecessário; tanto faz ' como "
echo '-----------------------------------------------------------'

