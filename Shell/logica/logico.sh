#!/usr/bin/env bash
echo 'TABELA VERDADE: OPERAÇÕES LÓGICAS E BOOLEANAS NO BASH'
echo 'Parte 1 - O operador AND com o comando test'
echo 'Operando relacional: variável definida em design-time com valor numérico.'
var=0; echo var=$var
#1)	var=0; echo var=$var
#2)	var="0"; echo var=\"$var\"
#3)	var=" "; echo var=\"$var\"
#4)	var="z"; echo var=\"$var\"
#5)	var=""; echo var=\"$var\"
#6)	var=z; echo var=$var
#7)	var=; echo var=$var
echo '---------------------------------------------------------'
echo "OPERAÇÃO LÓGICA"
echo "Operador lógico: &&"
echo "Operando lógico: comando test"
echo "Operadores relacionais: == e != (para strings!)"

echo "Sem aspas, expressões simples:"
echo -ne "test $var == $var && test $var == $var; echo $?\t"; test $var == $var && test $var == $var; echo $?	# 0
echo -ne "\t"; test $var == $var && test $var != $var; echo $?	# 1
echo -ne "\t"; test $var != $var && test $var == $var; echo $?	# 1
echo -ne "\t"; test $var != $var && test $var != $var; echo $?	# 1

#echo "Sem aspas, expressão composta:"
#echo -ne "\t"; test $var == $var && $var == $var; echo $?	# 127	comando não encontrado
#echo -ne "\t"; test $var == $var && $var != $var; echo $?	# 127	comando não encontrado
#echo -ne "\t"; test $var != $var && $var == $var; echo $?	# 1
#echo -ne "\t"; test $var != $var && $var != $var; echo $?	# 1

echo -e "\nCom aspas, expressões simples:"
echo -ne "test "$var" == "$var" && test "$var" == "$var"; echo $?\t"; test "$var" == "$var" && test "$var" == "$var"; echo $?	# 0
echo -ne "\t"; test "$var" == "$var" && test "$var" != "$var"; echo $?	# 1
echo -ne "\t"; test "$var" != "$var" && test "$var" == "$var"; echo $?	# 1
echo -ne "\t"; test "$var" != "$var" && test "$var" != "$var"; echo $?	# 1

#echo "Com aspas, expressão composta:"
#echo -ne "\t"; test "$var" == "$var" && "$var" == "$var"; echo $?	# 127	comando não encontrado
#echo -ne "\t"; test "$var" == "$var" && "$var" != "$var"; echo $?	# 127	comando não encontrado
#echo -ne "\t"; test "$var" != "$var" && "$var" == "$var"; echo $?	# 1
#echo -ne "\t"; test "$var" != "$var" && "$var" != "$var"; echo $?	# 1

echo "Operadores relacionais: -eq e -ne (para números)"

echo "Sem aspas, expressões simples:"
echo -ne "test $var -eq $var && test $var -eq $var; echo $?\t"; test $var -eq $var && test $var -eq $var; echo $?	# 0 ; var="z",z 2 esperava expressão de número inteiro
echo -ne "\t"; test $var -eq $var && test $var -ne $var; echo $?	# 1	; var="z",z 2 esperava expressão de número inteiro
echo -ne "\t"; test $var -ne $var && test $var -eq $var; echo $?	# 1	; var="z",z 2 esperava expressão de número inteiro
echo -ne "\t"; test $var -ne $var && test $var -ne $var; echo $?	# 1	; var="z",z 2 esperava expressão de número inteiro

#echo "Sem aspas, expressão composta:"
#echo -ne "\t"; test $var -eq $var && $var -eq $var; echo $?	# 127	comando não encontrado ; var="z",z 2 esperava expressão de número inteiro
#echo -ne "\t"; test $var -eq $var && $var -ne $var; echo $?	# 127	comando não encontrado ; var="z" 2 esperava expressão de número inteiro
#echo -ne "\t"; test $var -ne $var && $var -eq $var; echo $?	# 1	; var="z",z 2 esperava expressão de número inteiro		
#echo -ne "\t"; test $var -ne $var && $var -ne $var; echo $?	# 1	; var="z",z 2 esperava expressão de número inteiro

echo -e "\nCom aspas, expressões simples:"
echo -ne "test "$var" -eq "$var" && test "$var" -eq "$var"; echo $?\t"; test "$var" -eq "$var" && test "$var" -eq "$var"; echo $? #0;var=" ","z","",z,nul 2 espera expres núm inteiro
echo -ne "\t"; test "$var" -eq "$var" && test "$var" -ne "$var"; echo $?	#1 ; var=" ","z","",z,nul 2 espera expres núm inteiro
echo -ne "\t"; test "$var" -ne "$var" && test "$var" -eq "$var"; echo $?	#1 ; var=" ","z","",z,nul 2 espera expres núm inteiro
echo -ne "\t"; test "$var" -ne "$var" && test "$var" -ne "$var"; echo $?	#1 ; var=" ","z","",z,nul 2 espera expres núm inteiro

#echo "Com aspas, expressão composta:"
#echo -ne "\t"; test "$var" -eq "$var" && "$var" -eq "$var"; echo $?	# 127	comando não encontrado	; var=" ","z","",z,nul 2 espera expres núm inteiro
#echo -ne "\t"; test "$var" -eq "$var" && "$var" -ne "$var"; echo $?	# 127	comando não encontrado	; var=" ","z","",z,nul 2 espera expres núm inteiro
#echo -ne "\t"; test "$var" -ne "$var" && "$var" -eq "$var"; echo $?	# 1				; var=" ","z","",z,nul 2 espera expres núm inteiro
#echo -ne "\t"; test "$var" -ne "$var" && "$var" -ne "$var"; echo $?	# 1				; var=" ","z","",z,nul 2 espera expres núm inteiro


#echo '---------------------------------------------------------'
#echo "OPERAÇÃO BOOLEANA"
#echo "Operador booleano: -a"
#echo "Operando booleano: expressões relacionais"

