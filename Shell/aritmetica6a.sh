#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  A R I T M É T I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos literais definidos pelo usuário em design-time.'
echo 'com atribuição'
echo -n "((c=2+3)); echo \$c = "; ((c=2+3)); echo $c
echo -n "((c=2-3)); echo \$c = "; ((c=2-3)); echo $c
echo -n "((c=2*3)); echo \$c = "; ((c=2*3)); echo $c
echo -n "((c=2/3)); echo \$c = "; ((c=2/3)); echo $c
echo -n "((c=2%3)); echo \$c = "; ((c=2%3)); echo $c
echo -n "((c=2**3)); echo \$c = "; ((c=2**3)); echo $c
echo '-----------------------------------------------------------'
echo 'sem atribuição'
echo -n "((2+3)); echo \$? = "; ((2+3)); echo $?
echo -n "((2-3)); echo \$? = "; ((2-3)); echo $?
echo -n "((2*3)); echo \$? = "; ((2*3)); echo $?
echo -n "((2/3)); echo \$? = "; ((2/3)); echo $?
echo -n "((2%3)); echo \$? = "; ((2%3)); echo $?
echo -n "((2**3)); echo \$? = "; ((2**3)); echo $?
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos pelo usuário em design-time.'
echo 'com atribuição'
echo "((a=2)); ((b = 3)); ((c = 4))";((a=2));((b = 3));((c = 4))
echo -n "((c=a+b)); echo \$c = "; ((c=a+b)); echo $c
echo -n "((c=a-b)); echo \$c = "; ((c=a-b)); echo $c
echo -n "((c=a*b)); echo \$c = "; ((c=a*b)); echo $c
echo -n "((c=a/b)); echo \$c = "; ((c=a/b)); echo $c
echo -n "((c=a%b)); echo \$c = "; ((c=a%b)); echo $c
echo -n "((c=a**b)); echo \$c = "; ((c=a**b)); echo $c
echo '-----------------------------------------------------------'
echo 'sem atribuição'
echo -n "((a+b)); echo \$? = "; ((a+b)); echo $?
echo -n "((a-b)); echo \$? = "; ((a-b)); echo $?
echo -n "((a*b)); echo \$? = "; ((a*b)); echo $?
echo -n "((a/b)); echo \$? = "; ((a/b)); echo $?
echo -n "((a%b)); echo \$? = "; ((a%b)); echo $?
echo -n "((a**b)); echo \$? = "; ((a**b)); echo $?
echo '-----------------------------------------------------------'
#echo 'Observações:'
#echo '(( )) deve receber apenas um argumento: uma única expressão aritmética, com ou sem atribuição ou variáveis — ao contrário do comando let, que aceita múltiplas expressões.'
#echo 'Sem atribuição, o resultado da expressão não é armazenado,'
#echo 'mas a construção retorna um código de saída ($?): 0 se a expressão for verdadeira, 1 se for falsa.'
#echo 'Assim como o comando let, (( )) avalia expressões aritméticas.'
#echo 'Se a atribuição envolver apenas uma variável e um valor literal, o uso de (( )) ou let é opcional.'
#echo 'A operação de potenciação usa ** em vez de ^, e não há suporte para números reais (decimais ou de ponto flutuante).'
#echo 'O uso de $ nas variáveis é opcional dentro de (( )), e geralmente desnecessário.'
#echo 'Aspas não são necessárias, mesmo com espaços, pois (( )) trata corretamente a expressão.'



