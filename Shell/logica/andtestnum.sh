#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  L Ó G I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos em design-time.'
var=0; echo 'var='$var;			# única linha a ser mudada para verificar os seguintes casos:
#1)	var=0	# caso atual
#2)	var="0"
#3)	var=" "
#4)	var="z"
#5)	var=""
#6)	var=z
#7)	var=
echo "Operador lógico: &&"
echo "Comando: test"
echo "Operadores relacionais: -eq e -ne (para números)"
echo "Sem aspas, expressões simples:"
echo -ne "test \$var -eq \$var && test \$var -eq \$var; echo \$?\t"; test $var -eq $var && test $var -eq $var; echo $?	# 0
echo -ne "test \$var -eq \$var && test \$var -ne \$var; echo \$?\t"; test $var -eq $var && test $var -ne $var; echo $?	# 1
echo -ne "test \$var -ne \$var && test \$var -eq \$var; echo \$?\t"; test $var -ne $var && test $var -eq $var; echo $?	# 1
echo -ne "test \$var -ne \$var && test \$var -ne \$var; echo \$?\t"; test $var -ne $var && test $var -ne $var; echo $?	# 1
echo -e "\nSem aspas, expressão composta:"
#echo -ne "\t"; test $var -eq $var && $var -eq $var ; echo $?	# 127	comando não encontrado
#echo -ne "\t"; test $var -eq $var && $var -ne $var ; echo $?	# 127	comando não encontrado
#echo -ne "test \$var -ne \$var && \$var -eq \$var; echo \$?\t"; test $var -ne $var && $var -eq $var; echo $?	# 1
#echo -ne "test \$var -ne \$var && \$var -ne \$var; echo \$?\t"; test $var -ne $var && $var -ne $var; echo $?	# 1
echo "Com aspas, expressões simples:"
#echo -ne "test \"\$var\" -eq \"\$var\" && test \"\$var\" -eq \"\$var\"; echo \$?\t"; test "$var" -eq "$var" && test "$var" -eq "$var"; echo $?	# 0
#echo -ne "test \"\$var\" -eq \"\$var\" && test \"\$var\" -ne \"\$var\"; echo \$?\t"; test "$var" -eq "$var" && test "$var" -ne "$var"; echo $?	# 1
#echo -ne "test \"\$var\" -ne \"\$var\" && test \"\$var\" -eq \"\$var\"; echo \$?\t"; test "$var" -ne "$var" && test "$var" -eq "$var"; echo $?	# 1
#echo -ne "test \"\$var\" -ne \"\$var\" && test \"\$var\" -ne \"\$var\"; echo \$?\t"; test "$var" -ne "$var" && test "$var" -ne "$var"; echo $?	# 1
echo "Com aspas, expressão composta:"
#echo -ne "\t"; test "$var" -eq "$var" && "$var" -eq "$var" ; echo $?	# 127	comando não encontrado
#echo -ne "\t"; test "$var" -eq "$var" && "$var" -ne "$var" ; echo $?	# 127	comando não encontrado
#echo -ne "test \"\$var\" -ne \"\$var\" && \"\$var\" -eq \"\$var\"; echo \$?\t"; test "$var" -ne "$var" && "$var" -eq "$var"; echo $?	# 1
#echo -ne "test \"\$var\" -ne \"\$var\" && \"\$var\" -ne \"\$var\"; echo \$?\t"; test "$var" -ne "$var" && "$var" -ne "$var"; echo $?	# 1
echo -e "\nOBSERVAÇÕES:"
echo -e "Ausência ou presença de aspas não tem impacto porque o valor da variável é numérico, não contém espaço vazio ou em branco."
echo "Aspas em expressões numéricas são toleradas, mas podem causar erro se a variável contiver espaços ou valores não numéricos."
#echo -e "\nPERGUNTAS:"
#echo -e "Por que expressão composta não funciona quando a primeira expressão relacional é verdadeira?"
#echo -e "Por que && pode ser usado nas expressões compostas que funcionaram (quando a primeira expressão relacional é falsa)?"
#echo -e "\nRESPOSTAS:"
#echo "Estrutura da operação lógica para test: comando 'expressão relacional' && comando 'expressão relacional'"
#echo "Estrutura chamada de 'expressão composta' ou 'expressão dupla': comando 'expressão relacional' && 'expressão relacional'. Nestes casos, "
#echo "sendo a primeira expressão relacional avaliada como verdadeira pelo primeiro comando, a segunda deveria ser avaliada, mas não há um segundo comando.  Então ocorre um erro."
#echo "Em outras palavras, sendo o primeiro comando bem sucedido (status=0), o segundo comando falha (status=1, porque não existe).  Então ocorre um erro."
#echo "Sendo a primeira expressão relacional avaliada como falsa pelo primeiro comando, a segunda não precisa ser avaliada.  Então, apesar de não haver um segundo comando, não ocorre nenhum erro."
#echo  "Da mesma forma, sendo primeiro comando mal sucedido (status=1), o segundo comando é desconsiderado.  Então, apesar de não haver um segundo comando, não ocorre nenhum erro."
echo "O operador lógico && só deve conectar ou ser usado entre comandos completos e separados, não expressões".







