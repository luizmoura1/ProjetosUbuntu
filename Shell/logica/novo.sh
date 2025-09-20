#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  L Ó G I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos em design-time.'
var=0; echo 'var='$var;			# única linha a ser mudada para verificar os seguintes casos:
#1)	var=0	# caso atual
#2)	var="0"
#3)	var=" "
#4)	var="z"
#5)	var=""
#6)	var=z
#7)	var=
echo "Operador AND: &&"
echo "Comando: []"
echo "Sem aspas, expressões simples:"
echo -ne ""; [ $var == $var ] && [ $var == $var ]; echo $?
echo -ne ""; [ $var == $var ] && [ $var != $var ]; echo $?
echo -ne ""; [ $var != $var ] && [ $var == $var ]; echo $?
echo -ne ""; [ $var != $var ] && [ $var != $var ]; echo $?
echo "Sem aspas, expressão composta:"
echo -ne ""; [ $var == $var && $var == $var ]; echo $?
echo -ne ""; [ $var == $var && $var != $var ]; echo $?
echo -ne ""; [ $var != $var && $var == $var ]; echo $?
echo -ne ""; [ $var != $var && $var != $var ]; echo $?
echo "Com aspas, expressões simples:"
echo -ne ""; [ $var == $var ] && [ $var == $var ]; echo $?
echo -ne ""; [ $var == $var ] && [ $var != $var ]; echo $?
echo -ne ""; [ $var != $var ] && [ $var == $var ]; echo $?
echo -ne ""; [ $var != $var ] && [ $var != $var ]; echo $?
echo "Com aspas, expressão composta:"
echo -ne ""; [ $var == $var && $var == $var ]; echo $?
echo -ne ""; [ $var == $var && $var != $var ]; echo $?
echo -ne ""; [ $var != $var && $var == $var ]; echo $?
echo -ne ""; [ $var != $var && $var != $var ]; echo $?

echo "Operador AND: &&"
echo "Comando: test"
echo "Sem aspas, expressões simples:"
echo -ne ""; test $var == $var  && test $var == $var ; echo $?
echo -ne ""; test $var == $var  && test $var != $var ; echo $?
echo -ne ""; test $var != $var  && test $var == $var ; echo $?
echo -ne ""; test $var != $var  && test $var != $var ; echo $?
echo "Sem aspas, expressão composta:"
echo -ne ""; test $var == $var && $var == $var ; echo $?
echo -ne ""; test $var == $var && $var != $var ; echo $?
echo -ne ""; test $var != $var && $var == $var ; echo $?
echo -ne ""; test $var != $var && $var != $var ; echo $?
echo "Com aspas, expressões simples:"
echo -ne ""; test $var == $var  && test $var == $var ; echo $?
echo -ne ""; test $var == $var  && test $var != $var ; echo $?
echo -ne ""; test $var != $var  && test $var == $var ; echo $?
echo -ne ""; test $var != $var  && test $var != $var ; echo $?
echo "Com aspas, expressão composta:"
echo -ne ""; test $var == $var && $var == $var ; echo $?
echo -ne ""; test $var == $var && $var != $var ; echo $?
echo -ne ""; test $var != $var && $var == $var ; echo $?
echo -ne ""; test $var != $var && $var != $var ; echo $?


