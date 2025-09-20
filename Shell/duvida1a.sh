#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  L Ó G I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos em design-time com valor numérico.'
a=2; b=3; echo 'a='$a; echo 'b='$b
echo "Com expansão, sem aspas:"

#echo "&&	test	expressão composta:"
echo -ne ""; test $a -eq $b  &&  $a -ne $b; echo $?	# 1!	&& entre expressões
echo

#echo "&&	[]	expressão composta:"
#echo -ne ""; [ $a -eq $b  &&  $a -ne $b ]; echo $?	# 2	;falta fechar comando1 (e abrir comando2);	&&  entre expressões
echo

#echo "&&	test	expressões simples:"
echo -ne ""; test $a -eq $b  &&  test $a -ne $b; echo $?	# 1	
echo

#echo "&&	[]	expressões simples:"
echo -ne ""; [ $a -eq $b ]  &&  [ $a -ne $b ]; echo $?	# 1
echo

#echo "-a	test	expressão composta:"
echo -ne ""; test $a -eq $b  -a  $a -ne $b; echo $?	# 1
echo

#echo "-a	[]	expressão composta:"
echo -ne ""; [ $a -eq $b  -a  $a -ne $b ]; echo $?	# 1
echo

#echo "-a	test	expressões simples:"
#echo -ne ""; test $a -eq $b  -a  test $a -ne $b; echo $?	# 2	; número excessivo de argumentos
echo

#echo "-a	[]	expressões simples:"
#echo -ne ""; [ $a -eq $b ] -a  [ $a -ne $b ]; echo $?	# 2	; número excessivo de argumentos
echo 
