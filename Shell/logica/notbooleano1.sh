#!/usr/bin/env bash
echo 'TABELA VERDADE: OPERAÇÕES LÓGICAS E BOOLEANAS NO BASH'
echo 'Parte 1 - O operador !  com o comando test'
echo 'Operando relacional: variável definida em design-time com valor...'
var=0; echo var=$var
#1)	var=0; echo var=$var
#2)	var="0"; echo var=\"$var\"
#3)	var=" "; echo var=\"$var\"
#4)	var="z"; echo var=\"$var\"
#5)	var=""; echo var=\"$var\"
#6)	var=z; echo var=$var
#7)	var=; echo var=$var
echo '---------------------------------------------------------'
echo "OPERAÇÃO BOOLEANA"
echo "Operador booleano: ! "
echo "Operando booleano: expressões relacionais"
echo "Operadores relacionais: == e != (para strings!)"

echo "Sem aspas, expressão composta:"
echo -ne "test !  $var == $var; echo $?\t"; test !  $var == $var; echo $?	# 0
echo -ne "\t"; test !  $var != $var; echo $?	# 1
echo -ne "\t"; test !  $var == $var; echo $?	# 1
echo -ne "\t"; test !  $var != $var; echo $?	# 1

echo "Com aspas, expressão composta:"
echo -ne "test !  "$var" == "$var"; echo $?\t"; test !  "$var" == "$var"; echo $?	# 0
echo -ne "\t"; test !  "$var" != "$var"; echo $?	# 1
echo -ne "\t"; test !  "$var" == "$var"; echo $?	# 1
echo -ne "\t"; test !  "$var" != "$var"; echo $?	# 1

echo "Operadores relacionais: -eq e -ne (para números)"

echo "Sem aspas, expressão composta:"
echo -ne "test !  $var -eq $var; echo $?\t"; test !  $var -eq $var; echo $?	# 0; var="z",z 2 esperava expres de núm inteiro
echo -ne "\t"; test !  $var -ne $var; echo $?	# 1	; var="z",z 2 esperava expres de núm inteiro
echo -ne "\t"; test !  $var -eq $var; echo $?	# 1	; var="z",z 2 esperava expres de núm inteiro
echo -ne "\t"; test !  $var -ne $var; echo $?	# 1	; var="z",z 2 esperava expres de núm inteiro

echo "Com aspas, expressão composta:"
echo -ne "test !  "$var" -eq "$var"; echo $?\t"; test !  "$var" -eq "$var"; echo $?	# 0; var="z",z,nul,""," " 2 esperava expres de núm inteiro
echo -ne "\t"; test !  "$var" -ne "$var"; echo $?	# 1	; var="z",z,nul,""," " 2 esperava expres de núm inteiro
echo -ne "\t"; test !  "$var" -eq "$var"; echo $?	# 1	; var="z",z,nul,""," " 2 esperava expres de núm inteiro
echo -ne "\t"; test !  "$var" -ne "$var"; echo $?	# 1	; var="z",z,nul,""," " 2 esperava expres de núm inteiro

