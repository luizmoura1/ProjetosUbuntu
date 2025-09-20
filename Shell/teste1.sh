#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  L Ó G I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos em design-time com valor nulo.'
a=; b=; echo 'a='$a; echo 'b='$b			# única linha a ser mudada para verificar diferentes casos
echo "Toda referência ao valor da variável deve ser feita com expansão."

echo; echo "AND : &&"
# Sem aspas, expressões simples	- Valores nulos não podem ser (iguais e) diferentes (ao mesmo tempo)!
echo -ne ""; [ $a == $b ] && [ $a != $b ]; echo $?	# ATENÇÃO!; 0! esta e as 3 próximas linhas resultam verdadeiro pela primeira vez!
echo -ne ""; [ $a -eq $b ] && [ $a -ne $b ]; echo $?	# ATENÇÃO!;0! aceitou -eq e -ne
echo -ne ""; test $a == $b && test $a != $b; echo $?	# ATENÇÃO! 0!
echo -ne ""; test $a -eq $b && test $a -ne $b; echo $?	# ATENÇÃO!; 0! aceitou -eq e -ne
echo -ne ""; [[ $a == $b ]] && [[ $a != $b ]]; echo $?	# ATENÇÃO!

# Sem aspas, expressões compostas	- Este bloco deverá ser removido por não ter nenhuma linha válida a rigor - explicaremos depois
echo -ne ""; [[ $a == $b  &&  $a != $b ]]; echo $?	# ATENÇÃO! # test e [] não aceitam expressão composta?

# Com aspas, expressões simples
echo -ne ""; [ "$a" == "$b" ] && [ "$a" != "$b" ]; echo $?
echo -ne ""; test "$a" == "$b" && test "$a" != "$b"; echo $?
echo -ne ""; [[ "$a" == "$b" ]] && [[ "$a" != "$b" ]]; echo $?
echo -ne ""; [[ "$a" -eq "$b" ]] && [[ "$a" -ne "$b" ]]; echo $?
#echo -ne ""; (( "$a" == "$b" )) && (( "$a" != "$b" )); echo $?	# ATENÇÃO! deu erro de sintaxe '((: ==  : erro de sintaxe: esperava operando (token de erro é "==  ")', mas ainda assim resultou em 1!!!
echo -ne ""; (( "$a" -eq "$b" )) && (( "$a" -ne "$b" )); echo $?	# não deu erro, resultou 1;

# Com aspas, expressões compostas	# test e [] não aceitam expressão composta?
echo -ne ""; [[ "$a" == "$b"  &&  "$a" != "$b" ]]; echo $?
echo -ne ""; [[ "$a" -eq "$b"  && "$a" -ne "$b" ]]; echo $?
# echo -ne ""; (( "$a" == "$b"  &&  "$a" != "$b" )); echo $? # ATENÇÃO!; deu erro de sintaxe '((: ==   &&   !=  : erro de sintaxe: esperava operando (token de erro é "==   &&   !=  ")', mas ainda assim resultou em 1!!!
echo -ne ""; (( "$a" -eq "$b"  && "$a" -ne "$b" )); echo $?	# ATENÇÃO! questão de apropriação...

echo; echo -e "AND : -a"
# Sem aspas, expressões simples	- Operador -a não funciona entre comandos [], test, [[]], (())

# Sem aspas, expressões compostas		- Este bloco deverá ser removido por não ter nenhuma linha válida a rigor??? - explicaremos depois
echo -ne ""; [ $a == $b  -a  $a != $b ]; echo $?	# 0!	# test e [] não aceitam expressão composta??????
echo -ne ""; [ $a -eq $b  -a  $a -ne $b ]; echo $?	# 0!
echo -ne ""; test $a == $b -a  $a != $b; echo $?	# 0!
echo -ne ""; test $a -eq $b -a  $a -ne $b; echo $?	# 0!

# Com aspas, expressões simples	- Operador -a não funciona entre comandos [], test, [[]], (()); apenas dentro de comandos [] e test.

# Com aspas, expressões compostas	# test e [] não aceitam expressão composta?
echo -ne ""; [ "$a" == "$b"  -a  "$a" != "$b" ]; echo $?
echo -ne ""; test "$a" == "$b" -a  "$a" != "$b"; echo $?

echo; echo "OR : ||"
# Sem aspas, expressões simples
echo -ne ""; [ $a == $b ] || [ $a != $b ]; echo $?	# 0 mas ATENÇÃO!
echo -ne ""; [ $a -eq $b ] || [ $a -ne $b ]; echo $?	# 0 mas ATENÇÃO!
echo -ne ""; test $a == $b || test $a != $b; echo $?	# 0 mas ATENÇÃO!
echo -ne ""; test $a -eq $b || test $a -ne $b; echo $?	# 0 mas ATENÇÃO!
echo -ne ""; [[ $a == $b ]] || [[ $a != $b ]]; echo $?	# 0 mas ATENÇÃO! Comparação de strings, não variáveis?

# Sem aspas, expressões compostas
echo -ne ""; test $a == $b ||  $a != $b; echo $?	# 0 mas ATENÇÃO! - test com expressão composta??? Remover
echo -ne ""; test $a -eq $b ||  $a -ne $b; echo $?	# 0 mas ATENÇÃO! - test com expressão composta??? Remover
echo -ne ""; [[ $a == $b  ||  $a != $b ]]; echo $?	# 0

# Com aspas, expressões simples
echo -ne ""; [ "$a" == "$b" ] || [ "$a" != "$b" ]; echo $?	# 0
echo -ne ""; test "$a" == "$b" || test "$a" != "$b"; echo $?	# 0
echo -ne ""; [[ "$a" == "$b" ]] || [[ "$a" != "$b" ]]; echo $?	# 0
echo -ne ""; [[ "$a" -eq "$b" ]] || [[ "$a" -ne "$b" ]]; echo $?	# 0 - Cuidado: conteúdo não numérico
#echo -ne ""; (( "$a" == "$b" )) || (( "$a" != "$b" )); echo $?		# 1 mas com erro; REMOVER! ATENÇÃO!
echo -ne ""; (( "$a" -eq "$b" )) || (( "$a" -ne "$b" )); echo $?	# 1 mas ATENÇÃO! - Conteúdo não numérico ???

# Com aspas, expressões compostas
echo -ne ""; test "$a" == "$b" ||  "$a" != "$b"; echo $?	# 0 mas ATENÇÃO! - test com expressão composta???
echo -ne ""; [[ "$a" == "$b"  ||  "$a" != "$b" ]]; echo $?	# 0
echo -ne ""; [[ "$a" -eq "$b"  ||  "$a" -ne "$b" ]]; echo $?	# 0 mas ATENÇÃO! - Conteúdo não numérico!
#echo -ne ""; (( "$a" == "$b"  ||  "$a" != "$b" )); echo $?	# 1 mas com erro; REMOVER! ATENÇÃO!
echo -ne ""; (( "$a" -eq "$b"  ||  "$a" -ne "$b" )); echo $?	# 1 ; REMOVER! ATENÇÃO!

echo; echo -e "OR : -o"
# Sem aspas, expressões simples - Operador-o não funciona entre comandos [], test, [[]], (())

# Sem aspas, expressões compostas		- Operador-o funciona em operaçôes compostas dentro de [] e test ?
echo -ne ""; [ $a == $b  -o  $a != $b ]; echo $?	# 0	
echo -ne ""; [ $a -eq $b  -o  $a -ne $b ]; echo $?	# 0	string vazia vira 0
echo -ne ""; test $a == $b -o  $a != $b; echo $?	# 0
echo -ne ""; test $a -eq $b -o  $a -ne $b; echo $?	# 0

# Com aspas, expressões simples - Operador -o não funciona entre comandos [], test,[[]], (())

# Com aspas, expressões compostas
echo -ne ""; [ "$a" == "$b"  -o  "$a" != "$b" ]; echo $?	# 0	mas string vazia
echo -ne ""; test "$a" == "$b" -o  "$a" != "$b"; echo $?	# 0	mas string vazia

echo; echo "NOT : !"
# Sem aspas
echo -ne ""; ! [ $a == $b ]; echo $?	# 1
echo -ne ""; ! [ $a -eq $b ]; echo $?	# 1
echo -ne ""; ! test $a == $b; echo $?	# 1
echo -ne ""; ! test $a -eq $b; echo $?	# 1
echo -ne ""; ! [[ $a == $b ]]; echo $?	# 1

# Com aspas
echo -ne ""; ! [ "$a" == "$b" ]; echo $?	# 1	-eq não aceitável em [] e test
echo -ne ""; ! test "$a" == "$b"; echo $?	# 1
echo -ne ""; ! [[ "$a" == "$b" ]]; echo $?	# 1
echo -ne ""; ! [[ "$a" -eq "$b" ]]; echo $?	# 1
#echo -ne ""; ! (( "$a" == "$b" )); echo $?	# 0 mas com erro; REMOVER! ATENÇÃO!
echo -ne ""; ! (( "$a" -eq "$b" )); echo $?	# 0 cuidado, considerado 0? Remover?

# Observações
# test e [] não aceitam expressão composta?

# Valor nulo é considerado valor não numérico.  Com (()) o valor nulo não causa erro porque é considerado 0, mas a expressão não é recomendável. 
 
# Operadores -eq e -ne (inclusive -gt, -lt, -ge, -le) são válidos apenas para valores numéricos.  Mas não são válidos dentro de (()).  Exemplos de invalidade: (( a -eq , (( $a -eq 
# Dentro de [[]], operadores relacionais -eq, -ne, -gt, -lt, -ge, -le IMPROPRIAMENTE também funcionam com literais strings cujo valor pode ser interpretado como numérico.  Exemplos: [[ a -eq , [[ $a -eq

# Operadores relacionais == e != (inclusive =, além de > e < com [[]]) são válidos apenas para valores string
# Dentro de (()), construção aritmética, apenas os operadores relacionais ==, !=, >, >=, <, <= são válidos e podem IMPROPRIAMENTE funcionar com literais strings cujo valor pode ser interpretado como numérico.  Ex: (( a == , (( $a ==

# Operadores lógicos -a e -o não funcionam entre comandos [], test, [[]], (()), mas apenas entre expressões relacionais usando [] ou test (expressões compostas).
# Operadores lógicos -a e -o não funcionam dentro de [[]] e (()); 

# Operadores lógicos && e || funcionam entre comandos [], test, [[]], (()) e entre expressões relacionais (expressões compostas), exceto dentro de [].
# Operadores lógicos && e || não funcionam dentro de [].

# Sem expansão, com aspas, para qualquer expressão e operador lógico, não se aplica porque seriam literais strings, não as variáveis definidas com valor nulo.
# Sem expansão, som aspas, para qualquer expressão e operador lógico, não se aplica porque seriam literais, não as variáveis definidas com valor nulo.


