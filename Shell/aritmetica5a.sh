#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  A R I T M É T I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos literais definidos pelo usuário em design-time.'
echo 'com atribuição'
echo -n "let c=2+3; echo \$c = "; let c=2+3; echo $c
echo -n "let c=2-3; echo \$c = "; let c=2-3; echo $c
echo -n "let c=2*3; echo \$c = "; let c=2*3; echo $c
echo -n "let c=2/3; echo \$c = "; let c=2/3; echo $c
echo -n "let c=2%3; echo \$c = "; let c=2%3; echo $c
echo -n "let c=2**3; echo \$c = "; let c=2**3; echo $c
echo '-----------------------------------------------------------'
echo 'sem atribuição'
echo -n "let 2+3; echo \$? = "; let 2+3; echo $?
echo -n "let 2-3; echo \$? = "; let 2-3; echo $?
echo -n "let 2*3; echo \$? = "; let 2*3; echo $?
echo -n "let 2/3; echo \$? = "; let 2/3; echo $?
echo -n "let 2%3; echo \$? = "; let 2%3; echo $?
echo -n "let 2**3; echo \$? = "; let 2**3; echo $?
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos pelo usuário em design-time.'
echo 'com atribuição'
echo "let a=2 'b = 3' \"c = 4\"";let a=2 'b = 3' "c = 4"
echo -n "let c=a+b; echo \$c = "; let c=a+b; echo $c
echo -n "let c=a-b; echo \$c = "; let c=a-b; echo $c
echo -n "let c=a*b; echo \$c = "; let c=a*b; echo $c
echo -n "let c=a/b; echo \$c = "; let c=a/b; echo $c
echo -n "let c=a%b; echo \$c = "; let c=a%b; echo $c
echo -n "let c=a**b; echo \$c = "; let c=a**b; echo $c
echo '-----------------------------------------------------------'
echo 'sem atribuição'
echo -n "let a+b; echo \$? = "; let a+b; echo $?
echo -n "let a-b; echo \$? = "; let a-b; echo $?
echo -n "let a*b; echo \$? = "; let a*b; echo $?
echo -n "let a/b; echo \$? = "; let a/b; echo $?
echo -n "let a%b; echo \$? = "; let a%b; echo $?
echo -n "let a**b; echo \$? = "; let a**b; echo $?
echo '-----------------------------------------------------------'
#echo 'Observações:'
#echo 'Sem atribuição o resultado não é armazenado, mas afeta o código de retorno $? – 0 se verdadeiro, 1 se falso'
#echo 'let deve receber pelo menos um argumento: uma expressão aritmética, que não precisa conter atribuição nem variáveis.'
#echo 'let não suporta números reais (decimais ou de ponto flutuante).'
#echo 'Sempre que a expressão contiver espaços, use aspas simples ou duplas.'
#echo 'O operador de potenciação é ** em vez de ^.'
#echo 'O uso de $ nas variáveis é opcional e geralmente desnecessário.'

