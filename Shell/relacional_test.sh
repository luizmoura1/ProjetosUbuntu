#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  R E L A C I O N A I S - STRINGS'
echo '-----------------------------------------------------------'
echo 'Operandos: variáveis definidas pelo usuário em design-time.'
echo 'b="cinco";a=""';b="cinco";a=""
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
# Resumo para strings:
# operador	conteúdo igual	conteúdo diferente
# ==, =		0 (V)		1 (F)
# !=		1 (F)		0 (V)
#		não vazia	vazia
# -n str, str	0 (V)		1 (F)
# -z str	1 (F)		0 (F)		
