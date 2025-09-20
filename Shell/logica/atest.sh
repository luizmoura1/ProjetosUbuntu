#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  L Ó G I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos em design-time.'
var=0; echo 'var='$var;
echo "Operador AND: -a"
echo "Comando: test"
echo "Operadores relacionais: == e != (para strings!)"
echo "Sem aspas, expressões simples:"
#echo -ne "test \$var == \$var -a test \$var == \$var; echo \$?\t"; test $var == $var -a test $var == $var; echo $?	# 2	número excessivo de argumentos
#echo -ne "test \$var == \$var -a test \$var != \$var; echo \$?\t"; test $var == $var -a test $var != $var; echo $?	# 2	número excessivo de argumentos
#echo -ne "test \$var != \$var -a test \$var == \$var; echo \$?\t"; test $var != $var -a test $var == $var; echo $?	# 2	número excessivo de argumentos
#echo -ne "test \$var != \$var -a test \$var != \$var; echo \$?\t"; test $var != $var -a test $var != $var; echo $?	# 2	número excessivo de argumentos
echo "Sem aspas, expressão composta:"
echo -ne "test \$var == \$var -a \$var == \$var; echo \$?\t"; test $var == $var -a $var == $var; echo $?	# 0
echo -ne "test \$var == \$var -a \$var != \$var; echo \$?\t"; test $var == $var -a $var != $var; echo $?	# 1
echo -ne "test \$var != \$var -a \$var == \$var; echo \$?\t"; test $var != $var -a $var == $var; echo $?	# 1
echo -ne "test \$var != \$var -a \$var != \$var; echo \$?\t"; test $var != $var -a $var != $var; echo $?	# 1
echo -e "\nCom aspas, expressões simples:"
#echo -ne "test \"\$var\" == \"\$var\" -a test \"\$var\" == \"\$var\"; echo \$?\t"; test "$var" == "$var" -a test "$var" == "$var"; echo $?	# 2	número excessivo de argumentos
#echo -ne "test \"\$var\" == \"\$var\" -a test \"\$var\" != \"\$var\"; echo \$?\t"; test "$var" == "$var" -a test "$var" != "$var"; echo $?	# 2	número excessivo de argumentos
#echo -ne "test \"\$var\" != \"\$var\" -a test \"\$var\" == \"\$var\"; echo \$?\t"; test "$var" != "$var" -a test "$var" == "$var"; echo $?	# 2	número excessivo de argumentos
#echo -ne "test \"\$var\" != \"\$var\" -a test \"\$var\" != \"\$var\"; echo \$?\t"; test "$var" != "$var" -a test "$var" != "$var"; echo $?	# 2	número excessivo de argumentos
echo "Com aspas, expressão composta:"
#echo -ne "test \"\$var\" == \"\$var\" -a \"\$var\" == \"\$var\"; echo \$?\t"; test "$var" == "$var" -a "$var" == "$var"; echo $?	# 0
#echo -ne "test \"\$var\" == \"\$var\" -a \"\$var\" != \"\$var\"; echo \$?\t"; test "$var" == "$var" -a "$var" != "$var"; echo $?	# 1
#echo -ne "test \"\$var\" != \"\$var\" -a \"\$var\" == \"\$var\"; echo \$?\t"; test "$var" != "$var" -a "$var" == "$var"; echo $?	# 1
#echo -ne "test \"\$var\" != \"\$var\" -a \"\$var\" != \"\$var\"; echo \$?\t"; test "$var" != "$var" -a "$var" != "$var"; echo $?	# 1
#echo -e "\nOBSERVAÇÕES:"
#echo "Aspas em expressões numéricas são toleradas, mas desnecessárias porque a variável não contém espaços ou outros caracteres não numéricos."
#echo "As expressões relacionais compostas utilizam o operador lógico '-a', que somente conecta expressões, não comandos."

