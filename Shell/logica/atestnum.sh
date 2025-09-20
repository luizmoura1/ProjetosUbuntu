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
echo "Operador lógico: -a"
echo "Comando: test"
echo "Operadores relacionais: -eq e -ne (para números)"
echo "Sem aspas, expressões simples:"
#echo -ne "\t"; test $var -eq $var -a test $var -eq $var; echo $?	# 2	número excessivo de argumentos
#echo -ne "\t"; test $var -eq $var -a test $var -ne $var; echo $?	# 2	número excessivo de argumentos
#echo -ne "\t"; test $var -ne $var -a test $var -eq $var; echo $?	# 2	número excessivo de argumentos
#echo -ne "\t"; test $var -ne $var -a test $var -ne $var; echo $?	# 2	número excessivo de argumentos
echo -e "\nSem aspas, expressão composta:"
echo -ne "test \$var -eq \$var -a \$var -eq \$var; echo \$?\t"; test $var -eq $var -a $var -eq $var; echo $?	# 0
echo -ne "test \$var -eq \$var -a \$var -ne \$var; echo \$?\t"; test $var -eq $var -a $var -ne $var; echo $?	# 1
echo -ne "test \$var -ne \$var -a \$var -eq \$var; echo \$?\t"; test $var -ne $var -a $var -eq $var; echo $?	# 1
echo -ne "test \$var -ne \$var -a \$var -ne \$var; echo \$?\t"; test $var -ne $var -a $var -ne $var; echo $?	# 1
echo "Com aspas, expressões simples:"
#echo -ne "\t"; test "$var" -eq "$var" -a test "$var" -eq "$var"; echo $?	# 2	número excessivo de argumentos
#echo -ne "\t"; test "$var" -eq "$var" -a test "$var" -ne "$var"; echo $?	# 2	número excessivo de argumentos
#echo -ne "\t"; test "$var" -ne "$var" -a test "$var" -eq "$var"; echo $?	# 2	número excessivo de argumentos
#echo -ne "\t"; test "$var" -ne "$var" -a test "$var" -ne "$var"; echo $?	# 2	número excessivo de argumentos
echo "Com aspas, expressão composta:"
#echo -ne "test \"\$var\" -eq \"\$var\" -a \"\$var\" -eq \"\$var\"; echo \$?\t"; test "$var" -eq "$var" -a "$var" -eq "$var"; echo $?	# 0
#echo -ne "test \"\$var\" -eq \"\$var\" -a \"\$var\" -ne \"\$var\"; echo \$?\t"; test "$var" -eq "$var" -a "$var" -ne "$var"; echo $?	# 1
#echo -ne "test \"\$var\" -ne \"\$var\" -a \"\$var\" -eq \"\$var\"; echo \$?\t"; test "$var" -ne "$var" -a "$var" -eq "$var"; echo $?	# 1
#echo -ne "test \"\$var\" -ne \"\$var\" -a \"\$var\" -ne \"\$var\"; echo \$?\t"; test "$var" -ne "$var" -a "$var" -ne "$var"; echo $?	# 1

