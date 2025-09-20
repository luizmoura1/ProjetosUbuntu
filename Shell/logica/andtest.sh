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
echo "Operador AND: &&"
echo "Comando: test"
echo "Operadores relacionais: == e != (para strings!)"
echo "Sem aspas, expressões simples:"
echo -ne "test \$var == \$var && test \$var == \$var; echo \$?\t"; test $var == $var && test $var == $var; echo $?	# 0
echo -ne "test \$var == \$var && test \$var != \$var; echo \$?\t"; test $var == $var && test $var != $var; echo $?	# 1
echo -ne "test \$var != \$var && test \$var == \$var; echo \$?\t"; test $var != $var && test $var == $var; echo $?	# 1
echo -ne "test \$var != \$var && test \$var != \$var; echo \$?\t"; test $var != $var && test $var != $var; echo $?	# 1
echo "Sem aspas, expressão composta:"
#echo -ne "\t"; test $var == $var && $var == $var ; echo $?	# 127	comando não encontrado
#echo -ne "\t"; test $var == $var && $var != $var ; echo $?	# 127	comando não encontrado
#echo -ne "test \$var != \$var && \$var == \$var; echo \$?\t"; test $var != $var && $var == $var; echo $?	# 1
#echo -ne "test \$var != \$var && \$var != \$var; echo \$?\t"; test $var != $var && $var != $var; echo $?	# 1
#echo -e "\nCom aspas, expressões simples:"
#echo -ne "test \"\$var\" == \"\$var\" && test \"\$var\" == \"\$var\"; echo \$?\t"; test "$var" == "$var" && test "$var" == "$var"; echo $?	# 0
#echo -ne "test \"\$var\" == \"\$var\" && test \"\$var\" != \"\$var\"; echo \$?\t"; test "$var" == "$var" && test "$var" != "$var"; echo $?	# 1
#echo -ne "test \"\$var\" != \"\$var\" && test \"\$var\" == \"\$var\"; echo \$?\t"; test "$var" != "$var" && test "$var" == "$var"; echo $?	# 1
#echo -ne "test \"\$var\" != \"\$var\" && test \"\$var\" != \"\$var\"; echo \$?\t"; test "$var" != "$var" && test "$var" != "$var"; echo $?	# 1
#echo "Com aspas, expressão composta:"
#echo -ne "\t"; test "$var" == "$var" && "$var" == "$var" ; echo $?	# 127	comando não encontrado
#echo -ne "\t"; test "$var" == "$var" && "$var" != "$var" ; echo $?	# 127	comando não encontrado
#echo -ne "test \"\$var\" != \"\$var\" && \"\$var\" == \"\$var\"; echo \$?\t"; test "$var" != "$var" && "$var" == "$var"; echo $?	# 1
#echo -ne "test \"\$var\" != \"\$var\" && \"\$var\" != \"\$var\"; echo \$?\t"; test "$var" != "$var" && "$var" != "$var"; echo $?	# 1
echo -e "\nOBSERVAÇÔES:"
echo -e "Ausência ou presença de aspas não tem impacto porque o valor da variável é numérico, não contém espaço vazio ou em branco."
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
echo "O operador lógico && só deve conectar comandos completos e separados, não expressões".
#echo -e "\nPERGUNTA:"
#echo -e "Por que \$var == \$var e \$var != \$var funcionam se o conteúdo de \$var é numérico e os operadores são para strings?"
#echo -e "\nRESPOSTA:"
echo -e "O Bash trata tudo como string por padrão. Mesmo que \$var tenha o valor 0, isso é a string '0'."
echo -e "Os operadores '==' e '!=' são de comparação de strings, e comparar '0' com '0' (ou '0' com '1', etc.) funciona normalmente."
echo -e "Só quando usamos operadores como '-eq' ou '-lt' é que o conteúdo é interpretado como número."

