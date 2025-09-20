#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  L Ó G I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos em design-time.'
var=0 ; echo 'var='$var;
echo "Operador lógico: -a"
echo "Comando: []"
echo "Operadores relacionais: -eq e -ne (para números)"
echo "Sem aspas, expressões simples:"
#echo -ne "\t"; [ $var -eq $var ] -a [ $var -eq $var ]; echo $?	# 2	número excessivo de argumentos
#echo -ne "\t"; [ $var -eq $var ] -a [ $var -ne $var ]; echo $?	# 2	número excessivo de argumentos
#echo -ne "\t"; [ $var -ne $var ] -a [ $var -eq $var ]; echo $?	# 2	número excessivo de argumentos
#echo -ne "\t"; [ $var -ne $var ] -a [ $var -ne $var ]; echo $?	# 2	número excessivo de argumentos
echo -e "\nSem aspas, expressão composta:"
echo -ne "[ \$var -eq \$var -a \$var -eq \$var ]; echo \$?\t"; [ $var -eq $var -a $var -eq $var ]; echo $?	# 0
echo -ne "[ \$var -eq \$var -a \$var -ne \$var ]; echo \$?\t"; [ $var -eq $var -a $var -ne $var ]; echo $?	# 1
echo -ne "[ \$var -ne \$var -a \$var -eq \$var ]; echo \$?\t"; [ $var -ne $var -a $var -eq $var ]; echo $?	# 1
echo -ne "[ \$var -ne \$var -a \$var -ne \$var ]; echo \$?\t"; [ $var -ne $var -a $var -ne $var ]; echo $?	# 1
echo "Com aspas, expressões simples:"
#echo -ne "\t"; [ "$var" -eq "$var" ] -a [ "$var" -eq "$var" ]; echo $?	# 2	número excessivo de argumentos
#echo -ne "\t"; [ "$var" -eq "$var" ] -a [ "$var" -ne "$var" ]; echo $?	# 2	número excessivo de argumentos
#echo -ne "\t"; [ "$var" -ne "$var" ] -a [ "$var" -eq "$var" ]; echo $?	# 2	número excessivo de argumentos
#echo -ne "\t"; [ "$var" -ne "$var" ] -a [ "$var" -ne "$var" ]; echo $?	# 2	número excessivo de argumentos
echo "Com aspas, expressão composta:"
echo -ne "[ \"\$var\" -eq \"\$var\" -a \"\$var\" -eq \"\$var\" ]; echo \$?\t"; [ "$var" -eq "$var" -a "$var" -eq "$var" ]; echo $?	# 0
echo -ne "[ \"\$var\" -eq \"\$var\" -a \"\$var\" -ne \"\$var\" ]; echo \$?\t"; [ "$var" -eq "$var" -a "$var" -ne "$var" ]; echo $?	# 1
echo -ne "[ \"\$var\" -ne \"\$var\" -a \"\$var\" -eq \"\$var\" ]; echo \$?\t"; [ "$var" -ne "$var" -a "$var" -eq "$var" ]; echo $?	# 1
echo -ne "[ \"\$var\" -ne \"\$var\" -a \"\$var\" -ne \"\$var\" ]; echo \$?\t"; [ "$var" -ne "$var" -a "$var" -ne "$var" ]; echo $?	# 1

