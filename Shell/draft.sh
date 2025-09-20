#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  L Ó G I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos em design-time com valor nulo.'
a=; b=; echo 'a='; echo 'b='			# única linha a ser mudada para verificar diferentes casos
echo; echo "AND : &&"
# sem expansão, sem aspas, expressões simples
echo -ne ""; [ a == b ] && [ a != b ]; echo $?		# -eq e -ne não são aceitáveis (valores não numéricos)
echo -ne ""; test a == b && test a != b; echo $? 	# -eq e -ne não são aceitáveis (valores não numéricos)
echo -ne ""; [[ a == b ]] && [[ a != b ]]; echo $?
echo -ne ""; [[ a -eq b ]] && [[ a -ne b ]]; echo $?
echo -ne ""; (( a == b )) && (( a != b )); echo $?	# não deu erro, resultou 1; -eq e -ne não são aceitáveis (valores não numéricos)

# sem expansão, sem aspas, expressões compostas	
# test e [] não aceitam expressão composta; e também -eq e -ne não seriam aceitáveis porque os valores não são numéricos; linhas já removidas
echo -ne ""; [[ a == b  &&  a != b ]]; echo $?
echo -ne ""; [[ a -eq b  && a -ne b ]]; echo $?
echo -ne ""; (( a == b  &&  a != b )); echo $?	# não deu erro, resultou 1; -eq e -ne não são aceitáveis

# sem expansão, com aspas, expressões simples
echo -ne ""; [ "a" == "b" ] && [ "a" != "b" ]; echo $?	# -eq e -ne não são aceitáveis (valores não numéricos)
echo -ne ""; test "a" == "b" && test "a" != "b"; echo $?	# -eq e -ne não são aceitáveis (valores não numéricos)
echo -ne ""; [[ "a" == "b" ]] && [[ "a" != "b" ]]; echo $?
echo -ne ""; [[ "a" -eq "b" ]] && [[ "a" -ne "b" ]]; echo $?	# ATENÇÃO!
echo -ne ""; (( "a" == "b" )) && (( "a" != "b" )); echo $?	# ATENÇÃO!; -eq e -ne não são aceitáveis (valores não numéricos)

# sem expansão, com aspas, expressões compostas
# test e [] não aceitam expressão composta; e também -eq e -ne não seriam aceitáveis porque os valores não são numéricos
echo -ne ""; test "a" == "b" &&  "a" != "b"; echo $?	# ATENÇÃO! expressão composta; -eq e -ne não são aceitáveis (valores não numéricos)
echo -ne ""; [[ "a" == "b"  &&  "a" != "b" ]]; echo $?
echo -ne ""; [[ "a" -eq "b"  && "a" -ne "b" ]]; echo $?	# ATENÇÃO!
echo -ne ""; (( "a" == "b"  &&  "a" != "b" )); echo $?	# ATENÇÃO!; não deu erro, resultou 1; -eq e -ne não são aceitáveis (valores não numéricos)

# com expansão, sem aspas, expressões simples	- Este bloco deverá ser removido por não ter nenhuma linha válida a rigor - explicaremos depois
echo -ne ""; [ $a == $b ] && [ $a != $b ]; echo $?	# ATENÇÃO!; 0! esta e as 3 próximas linhas resultam verdadeiro pela primeira vez!
echo -ne ""; [ $a -eq $b ] && [ $a -ne $b ]; echo $?	# ATENÇÃO!;0! aceitou -eq e -ne
echo -ne ""; test $a == $b && test $a != $b; echo $?	# ATENÇÃO! 0!
echo -ne ""; test $a -eq $b && test $a -ne $b; echo $?	# ATENÇÃO!; 0! aceitou -eq e -ne
echo -ne ""; [[ $a == $b ]] && [[ $a != $b ]]; echo $?	# ATENÇÃO!
echo -ne ""; [[ $a -eq $b ]] && [[ $a -ne $b ]]; echo $?	# ATENÇÃO!
#echo -ne ""; (( $a == $b )) && (( $a != $b )); echo $?	# ATENÇÃO! deu erro de sintaxe '((: ==  : erro de sintaxe: esperava operando (token de erro é "==  ")', mas ainda assim resultou em 1!!!
echo -ne ""; (( $a -eq $b )) && (( $a -ne $b )); echo $?	# ATENÇÃO!

# com expansão, sem aspas, expressões compostas	- Este bloco deverá ser removido por não ter nenhuma linha válida a rigor - explicaremos depois
# test e [] não aceitam expressão composta; e também -eq e -ne não seriam aceitáveis porque os valores não são numéricos; linhas já removidas
echo -ne ""; [[ $a == $b  &&  $a != $b ]]; echo $?	# ATENÇÃO!
echo -ne ""; [[ $a -eq $b  && $a -ne $b ]]; echo $?	# ATENÇÃO!
#echo -ne ""; (( $a == $b  &&  $a != $b )); echo $? # ATENÇÃO!. deu erro de sintaxe '((: ==   &&   !=  : erro de sintaxe: esperava operando (token de erro é "==   &&   !=  ")', mas ainda assim resultou em 1!!!
echo -ne ""; (( $a -eq $b  && $a -ne $b )); echo $?	# ATENÇÃO!

# com expansão, com aspas, expressões simples
echo -ne ""; [ "$a" == "$b" ] && [ "$a" != "$b" ]; echo $?	# -eq e -ne não são aceitáveis (valores não numéricos)
echo -ne ""; test "$a" == "$b" && test "$a" != "$b"; echo $?	# -eq e -ne não são aceitáveis (valores não numéricos)
echo -ne ""; [[ "$a" == "$b" ]] && [[ "$a" != "$b" ]]; echo $?
echo -ne ""; [[ "$a" -eq "$b" ]] && [[ "$a" -ne "$b" ]]; echo $?
#echo -ne ""; (( "$a" == "$b" )) && (( "$a" != "$b" )); echo $?	# ATENÇÃO! deu erro de sintaxe '((: ==  : erro de sintaxe: esperava operando (token de erro é "==  ")', mas ainda assim resultou em 1!!!
echo -ne ""; (( "$a" -eq "$b" )) && (( "$a" -ne "$b" )); echo $?	# não deu erro, resultou 1;

# com expansão, com aspas, expressões compostas
# test e [] não aceitam expressão composta; e também -eq e -ne não seriam aceitáveis porque os valores não são numéricos; linhas já removidas
echo -ne ""; [[ "$a" == "$b"  &&  "$a" != "$b" ]]; echo $?
echo -ne ""; [[ "$a" -eq "$b"  && "$a" -ne "$b" ]]; echo $?
# echo -ne ""; (( "$a" == "$b"  &&  "$a" != "$b" )); echo $? # ATENÇÃO!; deu erro de sintaxe '((: ==   &&   !=  : erro de sintaxe: esperava operando (token de erro é "==   &&   !=  ")', mas ainda assim resultou em 1!!!
echo -ne ""; (( "$a" -eq "$b"  && "$a" -ne "$b" )); echo $?	# ATENÇÃO! questão de apropriação...

echo; echo -e "AND : -a"
# sem expansão, sem aspas, expressões simples	- ATENÇÃO!; -a não funciona entre comandos [], test, [[]], (()); as linhas serão removidas
#echo -ne ""; [ a == b ] -a [ a != b ]; echo $? 
#echo -ne ""; [ a -eq b ] -a [ a -ne b ]; echo $?
#echo -ne ""; test a == b -a test a != b; echo $?
#echo -ne ""; test a -eq b -a test a -ne b; echo $?
#echo -ne ""; [[ a == b ]] -a [[ a != b ]]; echo $?
#echo -ne ""; [[ a -eq b ]] -a [[ a -ne b ]]; echo $?
#echo -ne ""; (( a == b )) -a (( a != b )); echo $?
#echo -ne ""; (( a -eq b )) -a (( a -ne b )); echo $?

# sem expansão, sem aspas, expressões compostas
echo -ne ""; [ a == b  -a  a != b ]; echo $?	# eq e -ne não seriam aceitáveis porque os valores não são numéricos
# echo -ne ""; [ a -eq b  -a  a -ne b ]; echo $?	# ATENÇÃO!
echo -ne ""; test a == b -a  a != b; echo $?
#echo -ne ""; test a -eq b -a  a -ne b; echo $?	# ATENÇÃO!
#echo -ne ""; [[ a == b  -a  a != b ]]; echo $?	# ATENÇÃO!
#echo -ne ""; [[ a -eq b  -a  a -ne b ]]; echo $? # ATENÇÃO! 
#echo -ne ""; (( a == b  -a  a != b )); echo $?	# ATENÇÃO!; deu erro de sintaxe, mas ainda assim resultou em 1!!!
#echo -ne ""; (( a -eq b  -a  a -ne b )); echo $?	# ATENÇÃO!; deu erro de sintaxe, mas ainda assim resultou em 1!!!

# sem expansão, com aspas, expressões simples	- ATENÇÃO!; -a não funciona entre comandos [], test, [[]], (()); as linhas serão removidas
#echo -ne ""; [ "a" == "b" ] -a [ "a" != "b" ]; echo $?
#echo -ne ""; [ "a" -eq "b" ] -a [ "a" -ne "b" ]; echo $?
#echo -ne ""; test "a" == "b" -a test "a" != "b"; echo $?
#echo -ne ""; test "a" -eq "b" -a test "a" -ne "b"; echo $?
#echo -ne ""; [[ "a" == "b" ]] -a [[ "a" != "b" ]]; echo $?
#echo -ne ""; [[ "a" -eq "b" ]] -a [[ "a" -ne "b" ]]; echo $?
#echo -ne ""; (( "a" == "b" )) -a (( "a" != "b" )); echo $?
#echo -ne ""; (( "a" -eq "b" )) -a (( "a" -ne "b" )); echo $?

# sem expansão, com aspas, expressões compostas
echo -ne ""; [ "a" == "b"  -a  "a" != "b" ]; echo $?	# eq e -ne não seriam aceitáveis porque os valores não são numéricos
#echo -ne ""; [ "a" -eq "b"  -a  "a" -ne "b" ]; echo $?	# ATENÇÃO!
echo -ne ""; test "a" == "b" -a  "a" != "b"; echo $?
#echo -ne ""; test "a" -eq "b" -a  "a" -ne "b"; echo $?	# ATENÇÃO!
#echo -ne ""; [[ "a" == "b"  -a  "a" != "b" ]]; echo $?	# ATENÇÃO!
#echo -ne ""; [[ "a" -eq "b"  -a  "a" -ne "b" ]]; echo $?	# ATENÇÃO!
#echo -ne ""; (( "a" == "b"  -a  "a" != "b" )); echo $?	# ATENÇÃO!; deu erro de sintaxe, mas ainda assim resultou em 1!!!
#echo -ne ""; (( "a" -eq "b"  -a  "a" -ne "b" )); echo $?	# ATENÇÃO!; deu erro de sintaxe, mas ainda assim resultou em 1!!!

# com expansão, sem aspas, expressões simples	- ATENÇÃO!; -a não funciona entre comandos [], test, [[]], (()); as linhas serão removidas
#echo -ne ""; [ $a == $b ] -a [ $a != $b ]; echo $?	# ATENÇÃO!
#echo -ne ""; [ $a -eq $b ] -a [ $a -ne $b ]; echo $?	# ATENÇÃO!
#echo -ne ""; test $a == $b -a test $a != $b; echo $?	# ATENÇÃO!
#echo -ne ""; test $a -eq $b -a test $a -ne $b; echo $?	# ATENÇÃO!
#echo -ne ""; [[ $a == $b ]] -a [[ $a != $b ]]; echo $?	# ATENÇÃO!
#echo -ne ""; [[ $a -eq $b ]] -a [[ $a -ne $b ]]; echo $?	# ATENÇÃO!
#echo -ne ""; (( $a == $b )) -a (( $a != $b )); echo $?	# ATENÇÃO!
#echo -ne ""; (( $a -eq $b )) -a (( $a -ne $b )); echo $?	# ATENÇÃO!

# com expansão, sem aspas, expressões compostas		- Este bloco deverá ser removido por não ter nenhuma linha válida a rigor??? - explicaremos depois
echo -ne ""; [ $a == $b  -a  $a != $b ]; echo $?	# 0!
echo -ne ""; [ $a -eq $b  -a  $a -ne $b ]; echo $?	# 0!
echo -ne ""; test $a == $b -a  $a != $b; echo $?	# 0!
echo -ne ""; test $a -eq $b -a  $a -ne $b; echo $?	# 0!
#echo e ""; [[ $a == $b  -a  $a != $b ]]; echo $?	# ATENÇÃO! sintaxe
#echo -ne ""; [[ $a -eq $b  -a  $a -ne $b ]]; echo $?	# ATENÇÃO! sintaxe
#echo -ne ""; (( $a == $b  -a  $a != $b )); echo $?	# ATENÇÃO!; deu erro de sintaxe, mas ainda assim resultou em 1!!!
echo -ne ""; (( $a -eq $b  -a  $a -ne $b )); echo $?	# não deu erro; resultou em 1!!!

# com expansão, com aspas, expressões simples	- ATENÇÃO!; -a não funciona entre comandos [], test, [[]], (()); as linhas serão removidas
#echo -ne ""; [ "$a" == "$b" ] -a [ "$a" != "$b" ]; echo $?
#echo -ne ""; [ "$a" -eq "$b" ] -a [ "$a" -ne "$b" ]; echo $?
#echo -ne ""; test "$a" == "$b" -a test "$a" != "$b"; echo $?
#echo -ne ""; test "$a" -eq "$b" -a test "$a" -ne "$b"; echo $?
#echo -ne ""; [[ "$a" == "$b" ]] -a [[ "$a" != "$b" ]]; echo $?	# ATENÇÃO! sintaxe
#echo -ne ""; [[ "$a" -eq "$b" ]] -a [[ "$a" -ne "$b" ]]; echo $?	# ATENÇÃO! sintaxe
#echo -ne ""; (( "$a" == "$b" )) -a (( "$a" != "$b" )); echo $?	# ATENÇÃO! sintaxe
#echo -ne ""; (( "$a" -eq "$b" )) -a (( "$a" -ne "$b" )); echo $?	# ATENÇÃO! sintaxe
echo "***"
# com expansão, com aspas, expressões compostas
echo -ne ""; [ "$a" == "$b"  -a  "$a" != "$b" ]; echo $?	# eq e -ne não seriam aceitáveis porque os valores não são numéricos
#echo -ne ""; [ "$a" -eq "$b"  -a  "$a" -ne "$b" ]; echo $?	# ATENÇÃO!
echo -ne ""; test "$a" == "$b" -a  "$a" != "$b"; echo $?
#echo -ne ""; test "$a" -eq "$b" -a  "$a" -ne "$b"; echo $?	# ATENÇÃO!
#echo -ne ""; [[ "$a" == "$b"  -a  "$a" != "$b" ]]; echo $?	# ATENÇÃO! sintaxe
#echo -ne ""; [[ "$a" -eq "$b"  -a  "$a" -ne "$b" ]]; echo $?	# ATENÇÃO! sintaxe
#echo -ne ""; (( "$a" == "$b"  -a  "$a" != "$b" )); echo $?	# ATENÇÃO!; deu erro de sintaxe, mas ainda assim resultou em 1!!!
echo -ne ""; (( "$a" -eq "$b"  -a  "$a" -ne "$b" )); echo $?	# não deu erro; resultou em 1!!!

echo; echo "OR : ||"
# sem expansão, sem aspas, expressões simples	-  Com [] e test, -eq e -ne não são aceitáveis (valores não numéricos)
echo -ne ""; [ a == b ] || [ a != b ]; echo $?
echo -ne ""; test a == b || test a != b; echo $?
echo -ne ""; [[ a == b ]] || [[ a != b ]]; echo $?
echo -ne ""; [[ a -eq b ]] || [[ a -ne b ]]; echo $?	# 0! mas ATENÇÃO! EXPLICAR AO FINAL
echo -ne ""; (( a == b )) || (( a != b )); echo $?	# 0! mas ATENÇÃO! EXPLICAR AO FINAL
#echo -ne ""; (( a -eq b )) || (( a -ne b )); echo $?	# ATENÇÃO!; ELIMINAR1; deu erro de sintaxe, mas ainda assim resultou em 1!!!

# sem expansão, sem aspas, expressões compostas
# test e [] não aceitam expressão composta; e também -eq e -ne não seriam aceitáveis porque os valores não são numéricos; linhas já removidas
echo -ne ""; [[ a == b  ||  a != b ]]; echo $?	# 0
echo -ne ""; [[ a -eq b  || a -ne b ]]; echo $?	# 0 mas ATENÇÃO! Explicar depois
echo -ne ""; (( a == b  ||  a != b )); echo $?	# 0 mas ATENÇÃO! Explicar depois
#echo -ne ""; (( a -eq b  || a -ne b )); echo $?	# ATENÇÃO!; ELIMINAR1; deu erro de sintaxe, mas ainda assim resultou em 1!!!

# sem expansão, com aspas, expressões simples -  Com [] e test, -eq e -ne não são aceitáveis (valores não numéricos)
echo -ne ""; [ "a" == "b" ] || [ "a" != "b" ]; echo $?	# 0
echo -ne ""; test "a" == "b" || test "a" != "b"; echo $?	# 0
echo -ne ""; [[ "a" == "b" ]] || [[ "a" != "b" ]]; echo $?	# 0
echo -ne ""; [[ "a" -eq "b" ]] || [[ "a" -ne "b" ]]; echo $?	# 0 mas ATENÇÃO! Explicar depois
echo -ne ""; (( "a" == "b" )) || (( "a" != "b" )); echo $?	# 0 mas ATENÇÃO! Explicar depois
#echo -ne ""; (( "a" -eq "b" )) || (( "a" -ne "b" )); echo $?	# ATENÇÃO!; ELIMINAR1; deu erro de sintaxe, mas ainda assim resultou em 1!!!

# sem expansão, com aspas, expressões compostas	- linhas que dão erro já eliminadas
# test e [] não aceitam expressão composta; e também -eq e -ne não seriam aceitáveis porque os valores não são numéricos
echo -ne ""; [[ "a" == "b"  ||  "a" != "b" ]]; echo $?	# 0 mas ATENÇÃO! Estão sendo comparadas strings, não as variáveis
echo -ne ""; [[ "a" -eq "b"  ||  "a" -ne "b" ]]; echo $?	# 0 mas ATENÇÃO! Idem, mas [[]] tolera não numéricos
echo -ne ""; (( "a" == "b"  ||  "a" != "b" )); echo $?	# 0 Idem, ATENÇÃO! Idem,

# com expansão, sem aspas, expressões simples
echo -ne ""; [ $a == $b ] || [ $a != $b ]; echo $?	# 0 mas ATENÇÃO!
echo -ne ""; [ $a -eq $b ] || [ $a -ne $b ]; echo $?	# 0 mas ATENÇÃO!
echo -ne ""; test $a == $b || test $a != $b; echo $?	# 0 mas ATENÇÃO!
echo -ne ""; test $a -eq $b || test $a -ne $b; echo $?	# 0 mas ATENÇÃO!
echo -ne ""; [[ $a == $b ]] || [[ $a != $b ]]; echo $?	# 0 mas ATENÇÃO! Comparação de strings, não variáveis?
echo -ne ""; [[ $a -eq $b ]] || [[ $a -ne $b ]]; echo $?	# 0 mas ATENÇÃO!
#echo -ne ""; (( $a == $b )) || (( $a != $b )); echo $? # ATENÇÃO!; ELIMINAR1; deu erro de sintaxe, mas ainda assim resultou em 1!!!
echo -ne ""; (( $a -eq $b )) || (( $a -ne $b )); echo $?	# 1 mas ATENÇÃO! ?

# com expansão, sem aspas, expressões compostas
# test não aceita expressão composta; linhas que dão erro removidas
echo -ne ""; test $a == $b ||  $a != $b; echo $?	# 0 mas ATENÇÃO! - test com expressão composta??? Remover
echo -ne ""; test $a -eq $b ||  $a -ne $b; echo $?	# 0 mas ATENÇÃO! - test com expressão composta??? Remover
echo -ne ""; [[ $a == $b  ||  $a != $b ]]; echo $?	# 0
echo -ne ""; [[ $a -eq $b  ||  $a -ne $b ]]; echo $?	# 0 mas ATENÇÃO! - Conteúdo não numérico
# echo -ne ""; (( $a == $b  ||  $a != $b )); echo $?	# 1 mas com erro; REMOVER! ATENÇÃO!
echo -ne ""; (( $a -eq $b  ||  $a -ne $b )); echo $?	# 1 mas ATENÇÃO! - Conteúdo não numérico

# com expansão, com aspas, expressões simples
echo -ne ""; [ "$a" == "$b" ] || [ "$a" != "$b" ]; echo $?	# 0
echo -ne ""; test "$a" == "$b" || test "$a" != "$b"; echo $?	# 0
echo -ne ""; [[ "$a" == "$b" ]] || [[ "$a" != "$b" ]]; echo $?	# 0
echo -ne ""; [[ "$a" -eq "$b" ]] || [[ "$a" -ne "$b" ]]; echo $?	# 0 - Cuidado: conteúdo não numérico
#echo -ne ""; (( "$a" == "$b" )) || (( "$a" != "$b" )); echo $?		# 1 mas com erro; REMOVER! ATENÇÃO!
echo -ne ""; (( "$a" -eq "$b" )) || (( "$a" -ne "$b" )); echo $?	# 1 mas ATENÇÃO! - Conteúdo não numérico ???

# com expansão, com aspas, expressões compostas
# test e [] não aceitam expressão composta; e também -eq e -ne não seriam aceitáveis porque os valores não são numéricos; linhas já removidas
echo -ne ""; test "$a" == "$b" ||  "$a" != "$b"; echo $?	# 0 mas ATENÇÃO! - test com expressão composta???
echo -ne ""; [[ "$a" == "$b"  ||  "$a" != "$b" ]]; echo $?	# 0
echo -ne ""; [[ "$a" -eq "$b"  ||  "$a" -ne "$b" ]]; echo $?	# 0 mas ATENÇÃO! - Conteúdo não numérico!
#echo -ne ""; (( "$a" == "$b"  ||  "$a" != "$b" )); echo $?	# 1 mas com erro; REMOVER! ATENÇÃO!
echo -ne ""; (( "$a" -eq "$b"  ||  "$a" -ne "$b" )); echo $?	# 1 ; REMOVER! ATENÇÃO!

echo; echo -e "OR : -o"
# sem expansão, sem aspas, expressões simples - ATENÇÃO!; -o não funciona entre comandos [], test, [[]], (()) - todas linhas removidas
echo "***"
# sem expansão, sem aspas, expressões compostas -o não funciona entre comandos [], test, [[]], (())
echo -ne ""; [ a == b  -o  a != b ]; echo $?	# 0  	mas ATENÇÃO! - com expressão composta ou comparando strings?
echo -ne ""; test a == b -o  a != b; echo $?	# 0	mas ATENÇÃO! - com expressão composta ou comparando strings?
# echo -ne ""; (( a == b  -o  a != b )); echo $?	# 1 mas com erro; REMOVER! ATENÇÃO!
#echo -ne ""; (( a -eq b  -o  a -ne b )); echo $?	# 1 mas com erro; REMOVER! ATENÇÃO!

# sem expansão, com aspas, expressões simples - ATENÇÃO!; -o não funciona entre comandos [], test,, (()) - todas linhas removidas

# sem expansão, com aspas, expressões compostas
echo -ne ""; [ "a" == "b"  -o  "a" != "b" ]; echo $?	# 0	mas ATENÇÃO! - comparando strings?
echo -ne ""; test "a" == "b" -o  "a" != "b"; echo $?	# 0	mas ATENÇÃO! - comparando strings?
#echo -ne ""; (( "a" == "b"  -o  "a" != "b" )); echo $?		# 1 mas com erro; REMOVER! ATENÇÃO!
#echo -ne ""; (( "a" -eq "b"  -o  "a" -ne "b" )); echo $?	# 1 mas com erro; REMOVER! ATENÇÃO!

# com expansão, sem aspas, expressões simples - ATENÇÃO!; -o não funciona entre comandos [], test,, (()) - todas linhas removidas - retornariam 2 ????????????????/

# com expansão, sem aspas, expressões compostas		- (Obs: -a e -o funcionam em operaçôes compostas dentro de [] e test, certo?)
echo -ne ""; [ $a == $b  -o  $a != $b ]; echo $?	# 0	
echo -ne ""; [ $a -eq $b  -o  $a -ne $b ]; echo $?	# 0	string vazia vira 0
echo -ne ""; test $a == $b -o  $a != $b; echo $?	# 0
echo -ne ""; test $a -eq $b -o  $a -ne $b; echo $?	# 0
#echo -ne ""; (( $a == $b  -o  $a != $b )); echo $?	# 1 mas com erro; REMOVER! ATENÇÃO!
echo -ne ""; (( $a -eq $b  -o  $a -ne $b )); echo $?	# 1 sem erro, ATENÇÃO!  papel de -o? Remover?

# com expansão, com aspas, expressões simples - ATENÇÃO!; -o não funciona entre comandos [], test,, (()) - todas linhas removidas

# com expansão, com aspas, expressões compostas
echo -ne ""; [ "$a" == "$b"  -o  "$a" != "$b" ]; echo $?	# 0	mas string vazia
echo -ne ""; test "$a" == "$b" -o  "$a" != "$b"; echo $?	# 0	mas string vazia
#echo -ne ""; (( "$a" == "$b"  -o  "$a" != "$b" )); echo $?	# 1 mas com erro; REMOVER! ATENÇÃO!
echo -ne ""; (( "$a" -eq "$b"  -o  "$a" -ne "$b" )); echo $?	# 1 sem erro, ATENÇÃO!  papel de -o? Remover?

echo; echo "NOT : !"
# sem expansão, sem aspas
echo -ne ""; ! [ a == b ]; echo $?	# 0	-eq não aceitável em [] e test; comparando strings, não variáveis
echo -ne ""; ! test a == b; echo $?	# 0
echo -ne ""; ! [[ a == b ]]; echo $?	# 0
echo -ne ""; ! [[ a -eq b ]]; echo $?	# 1	tolerado
echo -ne ""; ! (( a == b )); echo $?	# 1	cuidado, considerado 0?
#echo -ne ""; ! (( a -eq b )); echo $?	# 0 mas com erro; REMOVER! ATENÇÃO!

# sem expansão, com aspas
echo -ne ""; ! [ "a" == "b" ]; echo $?		# 0	-eq não aceitável em [] e test
echo -ne ""; ! test "a" == "b"; echo $?		# 0
echo -ne ""; ! [[ "a" == "b" ]]; echo $?	# 0
echo -ne ""; ! [[ "a" -eq "b" ]]; echo $?	# 1
echo -ne ""; ! (( "a" == "b" )); echo $?	# 1
#echo -ne ""; ! (( "a" -eq "b" )); echo $?	# 0 mas com erro; REMOVER! ATENÇÃO!

# com expansão, sem aspas
echo -ne ""; ! [ $a == $b ]; echo $?	# 1
echo -ne ""; ! [ $a -eq $b ]; echo $?	# 1
echo -ne ""; ! test $a == $b; echo $?	# 1
echo -ne ""; ! test $a -eq $b; echo $?	# 1
echo -ne ""; ! [[ $a == $b ]]; echo $?	# 1
echo -ne ""; ! [[ $a -eq $b ]]; echo $?	# 1
#echo -ne ""; ! (( $a == $b )); echo $?	# 0 mas com erro; REMOVER! ATENÇÃO!
echo -ne ""; ! (( $a -eq $b )); echo $?	# 0 cuidado, considerado 0?
echo "***"
# com expansão, com aspas
echo -ne ""; ! [ "$a" == "$b" ]; echo $?	# 1	-eq não aceitável em [] e test
echo -ne ""; ! test "$a" == "$b"; echo $?	# 1
echo -ne ""; ! [[ "$a" == "$b" ]]; echo $?	# 1
echo -ne ""; ! [[ "$a" -eq "$b" ]]; echo $?	# 1
#echo -ne ""; ! (( "$a" == "$b" )); echo $?	# 0 mas com erro; REMOVER! ATENÇÃO!
echo -ne ""; ! (( "$a" -eq "$b" )); echo $?	# 0 cuidado, considerado 0? Remover?
