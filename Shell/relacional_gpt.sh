#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  R E L A C I O N A I S - NÚMEROS'
echo '-----------------------------------------------------------'
echo 'Operandos: literais numéricas (inteiros).'
echo -n '[ 5 -eq 5 ]; echo $? = '; [ 5 -eq 5 ]; echo $?
echo -n '[ 5 -ne 5 ]; echo $? = '; [ 5 -ne 5 ]; echo $?
echo -n '[ 5 -lt 10 ]; echo $? = '; [ 5 -lt 10 ]; echo $?
echo -n '[ 5 -le 5 ]; echo $? = '; [ 5 -le 5 ]; echo $?
echo -n '[ 5 -gt 2 ]; echo $? = '; [ 5 -gt 2 ]; echo $?
echo -n '[ 5 -ge 5 ]; echo $? = '; [ 5 -ge 5 ]; echo $?
echo '-----------------------------------------------------------'
echo 'Operandos: variáveis com conteúdo numérico.'
a="5"; b="10"
echo 'a="5"; b="10"'
echo -n '[ $a -lt $b ]; echo $? = '; [ $a -lt $b ]; echo $?
echo -n 'test $a -eq $a ; echo $? = '; test $a -eq $a; echo $?
echo -n '[[ $a -ne $b ]]; echo $? = '; [[ $a -ne $b ]]; echo $?
echo -n '(( a < b )); echo $? = '; (( a < b )); echo $?
echo -n '(( a == b )); echo $? = '; (( a == b )); echo $?
echo '-----------------------------------------------------------'
echo 'Operandos: variáveis com conteúdo **não numérico**.'
c="cinco"; d=""
echo 'c="cinco"; d=""'
echo -n '[[ $c -eq 0 ]]; echo $? = '; [[ $c -eq 0 ]]; echo $?
echo -n '(( c == 0 )); echo $? = '; (( c == 0 )); echo $?
echo -n '[ -z $d ]; echo $? = '; [ -z $d ]; echo $?
echo -n '(( d == 0 )); echo $? = '; (( d == 0 )); echo $?
echo '-----------------------------------------------------------'

