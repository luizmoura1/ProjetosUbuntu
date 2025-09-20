#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  A R I T M É T I C A S'   # mudar para expressões com atribuição; comando ou não?
echo '-----------------------------------------------------------'
echo 'Operandos: literais definidas pelo usuário em design-time.'
echo -n "let c=2+3; echo \$c = "; let c=2+3; echo $c
echo -n "let c=2-3; echo \$c = "; let c=2-3; echo $c
echo -n "let c=2*3; echo \$c = "; let c=2*3; echo $c
echo -n "let c=2/3; echo \$c = "; let c=2/3; echo $c
echo -n "let c=2%3; echo \$c = "; let c=2%3; echo $c
echo -n "let c=2**3; echo \$c = "; let c=2**3; echo $c
echo '-----------------------------------------------------------'
echo 'Operandos: variáveis definidas pelo usuário em design-time.'
echo "let a=2 'b = 3' \"c = 4\"";let a=2 'b = 3' "c = 4"
echo -n "let c=a+b; echo \$c = "; let c=a+b; echo $c
echo -n "let c=a-b; echo \$c = "; let c=a-b; echo $c
echo -n "let c=a*b; echo \$c = "; let c=a*b; echo $c
echo -n "let c=a/b; echo \$c = "; let c=a/b; echo $c
echo -n "let c=a%b; echo \$c = "; let c=a%b; echo $c
echo -n "let c=a**b; echo \$c = "; let c=a**b; echo $c
echo '-----------------------------------------------------------'
echo 'Exemplos com mais argumentos e outras operações de atribuição:'
echo -ne "pós-incremento:\t\tlet x=10 y=x++; echo \$x \$y = "; let x=10 y=x++; echo $x $y
echo -ne "pós-decremento:\t\tlet x=10 y=x--; echo \$x \$y = "; let x=10 y=x--; echo $x $y
echo -ne "pré-incremento:\t\tlet x=10 y=++x; echo \$x \$y = "; let x=10 y=++x; echo $x $y
echo -ne "pré-decremento:\t\tlet x=10 y=--x; echo \$x \$y = "; let x=10 y=--x; echo $x $y
echo -ne "manutenção de sinal:\tlet x=10 x=+x; echo \$x = "; let x=10 x=+x; echo $x
echo -ne "inversão de sinal:\tlet x=10 x=-x; echo \$x = "; let x=10 x=-x; echo $x
echo '-----------------------------------------------------------'
echo 'Outras operaçoes de atribuição e uso de (()) em vez de let:'
echo -n "((c+=1));echo \$c = ";((c+=1));echo $c
echo -n "((c-=1));echo \$c = ";((c-=1));echo $c
echo -n "((c*=1));echo \$c = ";((c*=1));echo $c
echo -n "((c/=1));echo \$c = ";((c/=1));echo $c
echo -n "((c%=1));echo \$c = ";((c%=1));echo $c
echo '-----------------------------------------------------------'
echo 'Observações:'
echo 'let deve ter pelo menos um argumento (expressão que não precisa incluir atribuição nem variáveis).'
echo 'let com um só argumento pode ser substituído por ((argumento)).'
echo 'let não suporta números reais (decimais ou de ponto flutuante).'
echo 'Sempre que a expressão contiver espaços, use aspas simples ou duplas, exceto se (()) for usado em vez let.'
echo 'O operador de potenciação é ** em vez de ^.'
echo 'O uso de $ nas variáveis é opcional e geralmente desnecessário.'


