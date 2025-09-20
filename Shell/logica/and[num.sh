#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  L Ó G I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos em design-time.'
var=0; echo 'var='$var;
echo "Operador AND: &&"
echo "Comando: []"
echo "Operadores relacionais: -eq e -ne (para números)"
#echo "Expressões relacionais: simples"
#echo "Sem aspas:"
echo "Sem aspas, expressões simples:"
echo -ne "[ \$var -eq \$var ] && [ \$var -eq \$var ]; echo \$?\t\t"; [ $var -eq $var ] && [ $var -eq $var ]; echo $?	# 0
echo -ne "[ \$var -eq \$var ] && [ \$var -ne \$var ]; echo \$?\t\t"; [ $var -eq $var ] && [ $var -ne $var ]; echo $?	# 1
echo -ne "[ \$var -ne \$var ] && [ \$var -eq \$var ]; echo \$?\t\t"; [ $var -ne $var ] && [ $var -eq $var ]; echo $?	# 1
echo -ne "[ \$var -ne \$var ] && [ \$var -ne \$var ]; echo \$?\t\t"; [ $var -ne $var ] && [ $var -ne $var ]; echo $?	# 1
echo -e "\nCom aspas, expressões simples:"
echo -ne "[ \"\$var\" -eq \"\$var\" ] && [ \"\$var\" -eq \"\$var\" ]; echo \$?\t\t"; [ "$var" -eq "$var" ] && [ "$var" -eq "$var" ]; echo $?	# 0
echo -ne "[ \"\$var\" -eq \"\$var\" ] && [ \"\$var\" -ne \"\$var\" ]; echo \$?\t\t"; [ "$var" -eq "$var" ] && [ "$var" -ne "$var" ]; echo $?	# 1
echo -ne "[ \"\$var\" -ne \"\$var\" ] && [ \"\$var\" -eq \"\$var\" ]; echo \$?\t\t"; [ "$var" -ne "$var" ] && [ "$var" -eq "$var" ]; echo $?	# 1
echo -ne "[ \"\$var\" -ne \"\$var\" ] && [ \"\$var\" -ne \"\$var\" ]; echo \$?\t\t"; [ "$var" -ne "$var" ] && [ "$var" -ne "$var" ]; echo $?	# 1

echo "Sem aspas, expressão composta:"
#echo -ne "\t"; [ $var -eq $var && $var -eq $var ]; echo $?	# 2	faltando `]'
#echo -ne "\t"; [ $var -eq $var && $var -ne $var ]; echo $?	# 2	faltando `]'
#echo -ne "\t"; [ $var -ne $var && $var -eq $var ]; echo $?	# 2	faltando `]'
#echo -ne "\t"; [ $var -ne $var && $var -ne $var ]; echo $?	# 2	faltando `]'
echo "Com aspas, expressão composta:"
#echo -ne "\t"; [ "$var" -eq "$var" && "$var" -eq "$var" ]; echo $?	# 2	faltando `]'
#echo -ne "\t"; [ "$var" -eq "$var" && "$var" -ne "$var" ]; echo $?	# 2	faltando `]'
#echo -ne "\t"; [ "$var" -ne "$var" && "$var" -eq "$var" ]; echo $?	# 2	faltando `]'
#echo -ne "\t"; [ "$var" -ne "$var" && "$var" -ne "$var" ]; echo $?	# 2	faltando `]'
#echo -e "\nOBSERVAÇÕES:"
#echo "Ausência ou presença de aspas não tem impacto porque o valor da variável é numérico, não contém espaço vazio ou em branco."
#echo "Aspas em expressões numéricas são toleradas, mas podem causar erro se a variável contiver espaços ou valores não numéricos."
#echo -e "\nSem ou com aspas, expressão composta retornaria 2."
#echo "O operador lógico && só deve conectar ou ser usado entre comandos completos e separados, não expressões."



