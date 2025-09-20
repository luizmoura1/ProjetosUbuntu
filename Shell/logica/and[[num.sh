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
echo "Comando: [[]]"
echo "Operadores relacionais: -eq e -ne (para números)"
echo "Sem aspas, expressões simples:"
echo -ne "[[ \$var -eq \$var ]] && [[ \$var -eq \$var ]]; echo \$?\t"; [[ $var -eq $var ]] && [[ $var -eq $var ]]; echo $?	# 0
echo -ne "[[ \$var -eq \$var ]] && [[ \$var -ne \$var ]]; echo \$?\t"; [[ $var -eq $var ]] && [[ $var -ne $var ]]; echo $?	# 1
echo -ne "[[ \$var -ne \$var ]] && [[ \$var -eq \$var ]]; echo \$?\t"; [[ $var -ne $var ]] && [[ $var -eq $var ]]; echo $?	# 1
echo -ne "[[ \$var -ne \$var ]] && [[ \$var -ne \$var ]]; echo \$?\t"; [[ $var -ne $var ]] && [[ $var -ne $var ]]; echo $?	# 1
echo "Sem aspas, expressão composta:"
echo -ne "[[ \$var -eq \$var && \$var -eq \$var ]]; echo \$?\t"; [[ $var -eq $var && $var -eq $var ]]; echo $?	# 0
echo -ne "[[ \$var -eq \$var && \$var -ne \$var ]]; echo \$?\t"; [[ $var -eq $var && $var -ne $var ]]; echo $?	# 1
echo -ne "[[ \$var -ne \$var && \$var -eq \$var ]]; echo \$?\t"; [[ $var -ne $var && $var -eq $var ]]; echo $?	# 1
echo -ne "[[ \$var -ne \$var && \$var -ne \$var ]]; echo \$?\t"; [[ $var -ne $var && $var -ne $var ]]; echo $?	# 1
echo "Com aspas, expressões simples:"
echo -ne "[[ \"\$var\" -eq \"\$var\" ]] && [[ \"\$var\" -eq \"\$var\" ]]; echo \$?\t"; [[ "$var" -eq "$var" ]] && [[ "$var" -eq "$var" ]]; echo $?	# 0
echo -ne "[[ \"\$var\" -eq \"\$var\" ]] && [[ \"\$var\" -ne \"\$var\" ]]; echo \$?\t"; [[ "$var" -eq "$var" ]] && [[ "$var" -ne "$var" ]]; echo $?	# 1
echo -ne "[[ \"\$var\" -ne \"\$var\" ]] && [[ \"\$var\" -eq \"\$var\" ]]; echo \$?\t"; [[ "$var" -ne "$var" ]] && [[ "$var" -eq "$var" ]]; echo $?	# 1
echo -ne "[[ \"\$var\" -ne \"\$var\" ]] && [[ \"\$var\" -ne \"\$var\" ]]; echo \$?\t"; [[ "$var" -ne "$var" ]] && [[ "$var" -ne "$var" ]]; echo $?	# 1
echo "Com aspas, expressão composta:"
echo -ne "[[ \"\$var\" -eq \"\$var\" && \"\$var\" -eq \"\$var\" ]]; echo \$?\t"; [[ "$var" -eq "$var" && "$var" -eq "$var" ]]; echo $?	# 0
echo -ne "[[ \"\$var\" -eq \"\$var\" && \"\$var\" -ne \"\$var\" ]]; echo \$?\t"; [[ "$var" -eq "$var" && "$var" -ne "$var" ]]; echo $?	# 1
echo -ne "[[ \"\$var\" -ne \"\$var\" && \"\$var\" -eq \"\$var\" ]]; echo \$?\t"; [[ "$var" -ne "$var" && "$var" -eq "$var" ]]; echo $?	# 1
echo -ne "[[ \"\$var\" -ne \"\$var\" && \"\$var\" -ne \"\$var\" ]]; echo \$?\t"; [[ "$var" -ne "$var" && "$var" -ne "$var" ]]; echo $?	# 1
echo -e "\nAusência ou presença de aspas não tem impacto porque o valor da variável não contém espaço vazio ou em branco"

