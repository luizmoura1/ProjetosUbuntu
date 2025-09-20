#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  L Ó G I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos literais numéricos definidos em design-time.'

echo; echo "AND : &&"
echo -ne "[ 2 -eq 3 ] && [ 2 -ne 3 ]; echo \$? \t=\t"; [ 2 -eq 3 ] && [ 2 -ne 3 ]; echo $?
echo -ne "test 2 -eq 3 && test 2 -ne 3; echo \$? \t=\t"; test 2 -eq 3 && test 2 -ne 3; echo $?	#precisa do segundo test
echo -ne "[[ 2 -eq 3 && 2 -ne 3 ]]; echo \$? \t=\t"; [[ 2 -eq 3 && 2 -ne 3 ]]; echo $?
echo -ne "(( 2 == 3 && 2 != 3 )); echo \$? \t=\t"; (( 2 == 3 && 2 != 3 )); echo $?

echo; echo -e "AND : -a\t(suscetível a ambiguidades de parsing; evite usar com variáveis)"
echo -ne "[ 2 -eq 3 -a 2 -ne 3 ]; echo \$? \t=\t"; [ 2 -eq 3 -a 2 -ne 3 ]; echo $?
echo -ne "test 2 -eq 3 -a 2 -ne 3; echo \$? \t=\t"; test 2 -eq 3 -a 2 -ne 3 ; echo $?		# não precisa do segundo test

echo; echo "OR : ||"
echo -ne "[ 2 -eq 3 ] || [ 2 -ne 3 ]; echo \$? \t=\t"; [ 2 -eq 3 ] || [ 2 -ne 3 ]; echo $?
echo -ne "test 2 -eq 3 || test 2 -ne 3; echo \$? \t=\t"; test 2 -eq 3 || test 2 -ne 3; echo $?	#precisa do segundo test
echo -ne "[[ 2 -eq 3 || 2 -ne 3 ]]; echo \$? \t=\t"; [[ 2 -eq 3 || 2 -ne 3 ]]; echo $?
echo -ne "(( 2 == 3 || 2 != 3 )); echo \$? \t=\t"; (( 2 == 3 || 2 != 3 )); echo $?

echo; echo -e "OR : -o \t(suscetível a ambiguidades de parsing; evite usar com variáveis)"
echo -ne "[ 2 -eq 3 -o 2 -ne 3 ]; echo \$? \t=\t"; [ 2 -eq 3 -o 2 -ne 3 ]; echo $?
echo -ne "test 2 -eq 3 -o 2 -ne 3; echo \$? \t=\t"; test 2 -eq 3 -o 2 -ne 3 ; echo $?		# não precisa do segundo test

echo; echo "NOT : !"
echo -ne "! [ 2 -eq 3 ]; echo \$? \t\t\t=\t"; ! [ 2 -eq 3 ]; echo $?
echo -ne "! [ 2 -ne 3 ]; echo \$? \t\t\t=\t"; ! [ 2 -ne 3 ]; echo $?
echo -ne "! test 2 -eq 3 ; echo \$? \t\t=\t"; ! test 2 -eq 3 ; echo $?
echo -ne "! test 2 -ne 3 ; echo \$? \t\t=\t"; ! test 2 -ne 3 ; echo $?
echo -ne "! [[ 2 -eq 3 ]]; echo \$? \t\t=\t"; ! [[ 2 -eq 3 ]]; echo $?
echo -ne "! [[ 2 -ne 3 ]]; echo \$? \t\t=\t"; ! [[ 2 -ne 3 ]]; echo $?
echo -ne "! (( 2 == 3 )); echo \$? \t\t=\t"; ! (( 2 == 3 )); echo $?
echo -ne "! (( 2 != 3 )); echo \$? \t\t=\t"; ! (( 2 != 3 )); echo $?

echo; echo "OBSERVAÇÕES:"
echo "Os operadores lógicos existem para controle de fluxo (comandos), não para comparação (expressões)."
echo "Valor 0 significa VERDADEIRO; valor 1 significa FALSO."
echo 'Para outras expressões relacionais, basta substituir o operador "-eq" ou "-ne" por:'
echo -e "  -lt	\t(menor que)"
echo -e "  -le	\t(menor ou igual a)"
echo -e "  -gt	\t(maior que)"
echo -e "  -ge	\t(maior ou igual a)"
echo 'No comando (()), basta substituir o operador "==" ou "!=" por:'
echo -e "  <	\t(menor que)"
echo -e "  <=	\t(menor ou igual a)"
echo -e "  >	\t(maior que)"
echo -e "  >=	\t(maior ou igual a)"

#echo '-----------------------------------------------------------'
#echo 'Operandos: variáveis definidas pelo usuário em design-time.'
#a=2; b=3
#echo 'a=2'; echo 'b=3'
#echo -n "[ \$a -eq \$b ] && [ \$a -ne \$b ]; echo \$? = "; [ $a -eq $b ] && [ $a -ne $b ]; echo $?
#echo -n "[ \$a -eq \$b ] || [ \$a -ne \$b ]; echo \$? = "; [ $a -eq $b ] || [ $a -ne $b ]; echo $?
#echo -n "! [ \$a -eq \$b ]; echo \$? = "; ! [ $a -eq $b ]; echo $?
#echo -n "! [ \$a -ne \$b ]; echo \$? = "; ! [ $a -ne $b ]; echo $?

