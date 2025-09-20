#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  L Ó G I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos em design-time com valor numérico.'
a=2; b=3; echo 'a='$a; echo 'b='$b
echo "Sem expansão, sem aspas:"

#echo "&&	(())	expressão composta:"
#echo -ne ""; (( a -eq b  &&  a -ne b )); echo $?	# 1	&& entre expressões; erro de sintaxe; -eq inválido em (())

#echo "&&	[[]]	expressão composta:"
echo -ne ""; [[ a -eq b  &&  a -ne b ]]; echo $?	# 1	; &&  entre expressões!
echo

#echo "&&	(())	expressões simples:"
#echo -ne ""; (( a -eq b ))  &&  (( a -ne b )); echo $?	# 1	; erro de sintaxe; -eq inválido em (())	

#echo "&&	[[]]	expressões simples:"
echo -ne ""; [[ a -eq b ]]  &&  [[ a -ne b ]]; echo $?	# 1	ok
echo

#echo "-a	(())	expressão composta:"
#echo -ne ""; (( a -eq b  -a  a -ne b )); echo $?	# 1	; erro de sintaxe; -eq inválido em (())

#echo "-a	[[]]	expressão composta:"
#echo -ne ""; [[ a -eq b  -a  a -ne b ]]; echo $?	# 2	; erro de sintaxe (inclusive na expressão condicional)

#echo "-a	(())	expressões simples:"
#echo -ne ""; (( a -eq b ))  -a  (( a -ne b )); echo $?	# 2	; erro de sintaxe; -eq inválido em (())

#echo "-a	[[]]	expressões simples:"
#echo -ne ""; [[ a -eq b ]] -a  [[ a -ne b ]]; echo $?	# 2	; erro de sintaxe
 
