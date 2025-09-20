#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  L Ó G I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos em design-time.'
var=0; echo 'var='$var;
echo "Operador AND: &&"
echo "Comando: []"
echo "Operadores relacionais: == e != (para strings!)"
#echo "Expressões relacionais: simples"
#echo "Sem aspas:"
echo "Sem aspas, expressões simples:"
echo -ne "[ \$var == \$var ] && [ \$var == \$var ]; echo \$?\t"; [ $var == $var ] && [ $var == $var ]; echo $?		# 0
echo -ne "[ \$var == \$var ] && [ \$var != \$var ]; echo \$?\t"; [ $var == $var ] && [ $var != $var ]; echo $?		# 1
echo -ne "[ \$var != \$var ] && [ \$var == \$var ]; echo \$?\t"; [ $var != $var ] && [ $var == $var ]; echo $?		# 1
echo -ne "[ \$var != \$var ] && [ \$var != \$var ]; echo \$?\t"; [ $var != $var ] && [ $var != $var ]; echo $?		# 1
#echo "Com aspas:"
echo -e "\nCom aspas, expressões simples:"
echo -ne "[ \"\$var\" == \"\$var\" ] && [ \"\$var\" == \"\$var\" ]; echo $?\t"; [ "$var" == "$var" ] && [ "$var" == "$var" ]; echo $?	# 0
echo -ne "[ \"\$var\" == \"\$var\" ] && [ \"\$var\" != \"\$var\" ]; echo $?\t"; [ "$var" == "$var" ] && [ "$var" != "$var" ]; echo $?	# 1
echo -ne "[ \"\$var\" != \"\$var\" ] && [ \"\$var\" == \"\$var\" ]; echo $?\t"; [ "$var" != "$var" ] && [ "$var" == "$var" ]; echo $?	# 1
echo -ne "[ \"\$var\" != \"\$var\" ] && [ \"\$var\" != \"\$var\" ]; echo $?\t"; [ "$var" != "$var" ] && [ "$var" != "$var" ]; echo $?	# 1
echo "Sem aspas, expressão composta:"
#echo -ne "\t"; [ $var == $var && $var == $var ]; echo $?	# 2	faltando `]'
#echo -ne "\t"; [ $var == $var && $var != $var ]; echo $?	# 2	faltando `]'
#echo -ne "\t"; [ $var != $var && $var == $var ]; echo $?	# 2	faltando `]'
#echo -ne "\t"; [ $var != $var && $var != $var ]; echo $?	# 2	faltando `]'
echo "Com aspas, expressão composta:"
#echo -ne "\t"; [ "$var" == "$var" && "$var" == "$var" ]; echo $?	# 2	faltando `]'
#echo -ne "\t"; [ "$var" == "$var" && "$var" != "$var" ]; echo $?	# 2	faltando `]'
#echo -ne "\t"; [ "$var" != "$var" && "$var" == "$var" ]; echo $?	# 2	faltando `]'
#echo -ne "\t"; [ "$var" != "$var" && "$var" != "$var" ]; echo $?	# 2	faltando `]'

#echo -e "\nOBSERVAÇÕES:"
#echo -e "Ausência ou presença de aspas não tem impacto porque o valor da variável é numérico, não contém espaço vazio ou em branco"
#echo -e "Sem ou com aspas, expressão composta retornaria 2."
#echo "O operador lógico && só deve conectar comandos completos e separados, não expressões".
#echo -e "\nPERGUNTA:"
#echo -e "Por que \$var == \$var e \$var != \$var funcionam se o conteúdo de \$var é numérico e os operadores são para strings?"
#echo -e "\nRESPOSTA:"
#echo -e "O Bash trata tudo como string por padrão. Mesmo que \$var tenha o valor 0, isso é a string '0'."
#echo -e "Os operadores '==' e '!=' são de comparação de strings, e comparar '0' com '0' (ou '0' com '1', etc.) funciona normalmente."
#echo -e "Só quando usamos operadores como '-eq' ou '-lt' é que o conteúdo é interpretado como número."

