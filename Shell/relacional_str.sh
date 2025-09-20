#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  R E L A C I O N A I S - STRINGS'
echo '-----------------------------------------------------------'
echo 'Operandos literais definidos pelo usuário em design-time.'
echo -n '[ " " = "B" ]; echo $? = '; [ " " = "B" ]; echo $?
echo -n '[ " " == "B" ]; echo $? = '; [ " " == "B" ]; echo $?
echo -n '[ " " != "B" ]; echo $? = '; [ " " != "B" ]; echo $?
echo -n 'test " " = "B" ; echo $? = '; test " " = "B"; echo $?
echo -n 'test " " == "B" ; echo $? = '; test " " == "B"; echo $?
echo -n 'test " " != "B" ; echo $? = '; test " " != "B"; echo $?
echo -n '[[ " " = "B" ]]; echo $? = '; [[ " " = "B" ]]; echo $?
echo -n '[[ " " == "B" ]]; echo $? = '; [[ " " == "B" ]]; echo $?
echo -n '[[ " " != "B" ]]; echo $? = '; [[ " " != "B" ]]; echo $?
echo '-----------------------------------------------------------'
echo -n '[ " " ]; echo $? = '; [ " " ]; echo $?
echo -n '[ -n " " ]; echo $? = '; [ -n " " ]; echo $?
echo -n '[ -z " " ]; echo $? = '; [ -z " " ]; echo $?
echo -n 'test " " ; echo $? = '; test " "; echo $?
echo -n 'test -n " " ; echo $? = '; test -n " "; echo $?
echo -n 'test -z " " ; echo $? = '; test -z " "; echo $?
echo -n '[[ " " ]]; echo $? = '; [[  " " ]]; echo $?
echo -n '[[ -n " " ]]; echo $? = '; [[ -n " " ]]; echo $?
echo -n '[[ -z " " ]]; echo $? = '; [[ -z " " ]]; echo $?
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos pelo usuário em design-time.'
echo 'a="";b="6"';a="";b="6"
echo -n '[ "$a" = $b ]; echo $? = '; [ "$a" = $b ]; echo $?
echo -n '[ "$a" == $b ]; echo $? = '; [ "$a" == $b ]; echo $?
echo -n '[ "$a" != $b ]; echo $? = '; [ "$a" != $b ]; echo $?
echo -n 'test "$a" = $b ; echo $? = '; test "$a" = $b; echo $?
echo -n 'test "$a" == $b ; echo $? = '; test "$a" == $b; echo $?
echo -n 'test "$a" != $b ; echo $? = '; test "$a" != $b; echo $?
echo -n '[[ $a = $b ]]; echo $? = '; [[ $a = $b ]]; echo $?
echo -n '[[ $a == $b ]]; echo $? = '; [[ $a == $b ]]; echo $?
echo -n '[[ $a != $b ]]; echo $? = '; [[ $a != $b ]]; echo $?
echo '-----------------------------------------------------------'
echo -n '[ "$a" ]; echo $? = '; [ "$a" ]; echo $?
echo -n '[ -n "$a" ]; echo $? = '; [ -n "$a" ]; echo $?
echo -n '[ -z "$a" ]; echo $? = '; [ -z "$a" ]; echo $?
echo -n 'test "$a" ; echo $? = '; test "$a"; echo $?
echo -n 'test -n "$a" ; echo $? = '; test -n "$a"; echo $?
echo -n 'test -z "$a" ; echo $? = '; test -z "$a"; echo $?
echo -n '[[ $a ]]; echo $? = '; [[ $a ]]; echo $?
echo -n '[[ -n $a ]]; echo $? = '; [[ -n $a ]]; echo $?
echo -n '[[ -z $a ]]; echo $? = '; [[ -z $a ]]; echo $?
echo '-----------------------------------------------------------'
#echo 'Com test e [...] os operadores >, <, >= e <= não podem ser usados, independentemente dos operandos'.
#echo 'E os operandos deverão estar entre aspas para evitar erros quando tiverem valores nulos ou contendo espaços.'
#echo 'porque seriam interpretados como operadores de redirecionamento (no caso de <= e >=, o "=" seria considerado nome de um arquivo).'
#echo 'Com ((...)) operações relacionais também são possíveis e espaços não são exigidos. Operadores apenas no estilo C: ==, !=, >, >=, <, <=.'
#echo 'O operador "=" representa atribuição e retornaria false; os operadores com hífen (como -eq, -ge etc.) causariam erro.'
#echo 'E o valor de strings (sem conteúdo numérico) e variáveis não definidas é considerado zero (0).'
#echo 'Com [[...]] os operadores para inteiros (com hífen) podem ser usados com strings desde que tenham conteúdo numérico - se não, seu conteúdo será considerado zero (0).'
# Resumo para strings:
# operador	conteúdo igual	conteúdo diferente
# ==, =		0 (V)		1 (F)
# !=		1 (F)		0 (V)
#		não vazia	vazia
# -n str, str	0 (V)		1 (F)
# -z str	1 (F)		0 (V)		
