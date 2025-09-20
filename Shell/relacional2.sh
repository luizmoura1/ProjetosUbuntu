#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  R E L A C I O N A I S'
echo '-----------------------------------------------------------'
echo 'Operandos literais definidos pelo usuário em design-time.'
echo -n '[ 2 -eq 3 ]; echo $? = '; [ 2 -eq 3 ]; echo $?			# não precisa $ e escape se string entre ''
echo -n '[ 2 -ne 3 ]; echo $? = '; [ 2 -ne 3 ]; echo $?
echo -n '[ 2 -lt 3 ]; echo $? = '; [ 2 -lt 3 ]; echo $?
echo -n '[ 2 -le 3 ]; echo $? = '; [ 2 -le 3 ]; echo $?
echo -n '[ 2 -gt 3 ]; echo $? = '; [ 2 -gt 3 ]; echo $?
echo -n '[ 2 -ge 3 ]; echo $? = '; [ 2 -ge 3 ]; echo $?
echo '-----------------------------------------------------------'
echo -n 'test 2 -eq 3 ; echo $? = '; test 2 -eq 3; echo $?		# não precisa $ e escape se string entre ''
echo -n '[[ 2 -eq 3 ]]; echo $? = '; [[ 2 -eq 3 ]]; echo $?
echo -n '((2==3)); echo $? = '; ((2==3)); echo $?		# ver outros operadores em Observações
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos pelo usuário em design-time.'
echo 'a=2;b=3';a=2;b=3
echo -n '[ $a -eq $b ]; echo $? = '; [ $a -eq $b ]; echo $?		# não precisa $ e escape se string entre ''
echo -n '[ $a -ne $b ]; echo $? = '; [ $a -ne $b ]; echo $?
echo -n '[ $a -lt $b ]; echo $? = '; [ $a -lt $b ]; echo $?
echo -n '[ $a -le $b ]; echo $? = '; [ $a -le $b ]; echo $?
echo -n '[ $a -gt $b ]; echo $? = '; [ $a -gt $b ]; echo $?
echo -n '[ $a -ge $b ]; echo $? = '; [ $a -ge $b ]; echo $?
echo '-----------------------------------------------------------'
echo -n 'test $a -eq $b ; echo $? = '; test $a -eq $b; echo $?		# não precisa $, e escape se string entre ''
echo -n '[[ a -eq b ]]; echo $? = '; [[ a -eq b ]]; echo $?		# $ desnecessário; tanto faz '' como ""
echo -n '((a==b)); echo $? = '; ((a==b)); echo $?		# aqui também $ é desnecessário
echo '-----------------------------------------------------------'
# Observações:
# Em expressões aritméticas com [[ ... ]], como [[ a -eq b ]], não é necessário usar o símbolo $ (ver comentário na linha 25).
# Se as variáveis forem definidas previamente, o Bash compara seus valores.
# Se não, interpreta seus valores como zero antes da comparação.
# Operadores relacionais -eq, -ne, -lt, -le, -gt e -ge funcionam apenas com inteiros.
# Para números reais (com casas decimais), use ferramentas externas, como 'bc', que retornam 0 ou 1,
# e então compare esse resultado no shell.
#
# Com (( )), usamos operadores relacionais estilo C: ==, !=, <, <=, >, >= (não -eq, -ne, -lt, etc.).
# Esses operadores coincidem com os usados em test, [] e [[ ]] para strings,
# mas aqui o operador = não é válido (representa apenas atribuição).
#
# Cuidado: os operadores > e < não podem ser usados diretamente com [ ] ou test para comparar números ou strings,
# pois o shell os interpreta como redirecionadores de arquivos,
# causando erros ou criação de arquivos inesperados.
#
# Para comparações lexicográficas de strings com [ ] ou test, faça:
#   [ "A" \< "B" ]    # necessário escapar < e > para evitar interpretação como redirecionadores
#   test "A" \< "B"   # também funciona com escape obrigatório
# Ou prefira [[ ]], que trata < e > como operadores lexicográficos sem precisar escapar.

