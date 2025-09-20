#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  A R I T M É T I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos: literais definidas pelo usuário em design-time.'
echo -n "awk 'BEGIN {print 2 + 3}' = "; awk 'BEGIN {print 2 + 3}'
echo -n "awk 'BEGIN {print 2 - 3}' = "; awk 'BEGIN {print 2 - 3}'
echo -n "awk 'BEGIN {print 2 * 3}' = "; awk 'BEGIN {print 2 * 3}'
echo -n "awk 'BEGIN {print 2 / 3}' = "; awk 'BEGIN {print 2 / 3}'
echo -n "awk 'BEGIN {print 2 % 3}' = "; awk 'BEGIN {print 2 % 3}'
echo -n "awk 'BEGIN {print 2 ^ 3}' = "; awk 'BEGIN {print 2 ^ 3}'
echo '-----------------------------------------------------------'
echo -n "awk 'BEGIN {var1=2; var2=3; print var1 + var2}' = "; awk 'BEGIN {var1=2; var2=3; print var1 + var2}'
echo -n "awk -v var1=2 -v var2=3 'BEGIN {print var1 + var2}' = "; awk -v var1=2 -v var2=3 'BEGIN {print var1 + var2}'
echo '-----------------------------------------------------------'
echo -n "echo | awk '{var1=2; var2=3; print var1 + var2}' = "; echo | awk '{var1=2; var2=3; print var1 + var2}'
echo -n "echo | awk -v var1=2 -v var2=3 '{print var1 + var2}' = "; echo | awk -v var1=2 -v var2=3 '{print var1 + var2}'
echo '-----------------------------------------------------------'
echo -n "awk '{print \$1 + \$2}' <<< '2 3' = "; awk '{print $1 + $2}' <<< '2 3'
echo -n "awk '{print 2 + 3}' <<< '' = "; awk '{print 2 + 3}' <<< ''		# nova forma
echo -n "echo '2 3' | awk '{print \$1 + \$2}' = "; echo '2 3' | awk '{print $1 + $2}'
echo -n "echo '' | awk '{print 2 + 3}' = "; echo '' | awk '{print 2 + 3}'	# nova forma
echo -n "echo | awk '{print 2 + 3}' = "; echo | awk '{print 2 + 3}'
echo '-----------------------------------------------------------'
echo 'Operandos: variáveis definidas pelo usuário em design-time.'
a=2; b=3
echo 'a='$a';b='$b
echo -n "awk 'BEGIN {print '\$a' + '\$b'}' = "; awk 'BEGIN {print '$a' + '$b'}'
#echo 'Para os outros operadores, ver Observações
echo '-----------------------------------------------------------'
echo -n "awk 'BEGIN {var1='\$a'; var2='\$b'; print var1 + var2}' = "; awk 'BEGIN {var1='$a'; var2='$b'; print var1 + var2}'
echo -n "awk -v var1=\$a -v var2=\$b 'BEGIN {print var1 + var2}' = "; awk -v var1=$a -v var2=$b 'BEGIN {print var1 + var2}'
echo '-----------------------------------------------------------'
echo -n "echo | awk '{var1='\$a'; var2='\$b'; print var1 + var2}' = "; echo | awk '{var1='$a'; var2='$b'; print var1 + var2}'
echo -n "echo | awk -v var1=\$a -v var2=\$b '{print var1 + var2}' = "; echo | awk -v var1=$a -v var2=$b '{print var1 + var2}'
echo '-----------------------------------------------------------'
echo -n "awk '{print \$1 + \$2}' <<< \"\$a \$b\" = "; awk '{print $1 + $2}' <<< "$a $b"		# ERRO corrigido - comentar em observações - aqui precisa aspas duplas
echo -n "awk 'BEGIN {print '\$a' + '\$b'}' <<< '' = "; awk 'BEGIN {print '$a' + '$b'}' <<< ''	# ERRO corrigido - comentar em observações
echo -n "echo \"\$a \$b\" | awk '{print \$1 + \$2}' = "; echo "$a $b" | awk '{print $1 + $2}'	# ERRO corrigido - comentar em observações - aqui precisa aspas duplas
echo -n "echo '' | awk '{print '\$a' + '\$b'}' = "; echo '' | awk '{print '$a' + '$b'}'
echo -n "echo | awk '{print '\$a' + '\$b'}' = "; echo | awk '{print '$a' + '$b'}'
#echo '-----------------------------------------------------------'
#echo 'Observações:'
#echo '1) O formato básico de uso do awk neste script é:'
#echo "   awk ' | BEGIN { ação } | { ação } '"
#echo '   O bloco BEGIN (opcional) executa antes da leitura da entrada.'
#echo '   O bloco { ação } (sem padrão) é aplicado à entrada fornecida,'
#echo '   que neste script é composta por valores literais ou variáveis do shell.'
#echo '2) Aspas duplas ao redor do bloco awk permitem interpolar variáveis do shell,'
#echo ' mas exigem o escape dos campos $1, $2 etc. com \$.'
#echo '3) A string passada ao awk por meio de echo ou <<< precisa estar entre aspas duplas'
#echo ' para que as variáveis do shell sejam expandidas corretamente.'
#echo '4) Como neste script as variáveis representam inteiros simples, não há necessidade de colocá-las'
#echo ' entre aspas ao usá-las como argumentos ou ao interpolá-las diretamente dentro de blocos {} no awk.'
#echo '5) Também é possível definir variáveis diretamente dentro dos blocos {} (incluindo BEGIN {}) do awk,'
#echo ' evitando o uso de -v. Isso é válido tanto com valores literais quanto com variáveis do shell.'
#echo '5) Para testar outras operações aritméticas, basta substituir o operador "+":'
#echo -e "  -	\t(subtração)"
#echo -e "  *	\t(multiplicação — lembre de escapar: \*)"
#echo -e "  /	\t(divisão)"
#echo -e "  %	\t(módulo)"
#echo -e "  ^	\t(potenciação — apenas em versões modernas do awk)"
#echo "  exp(b*log(a)) (potenciação portável: a^b)"
#echo 'LINHAS RETIRADAS POR DUPLICIDADE: (ordem pode estar errada)'
#echo -n "echo | awk \"{print 2 + 3}\" = "; echo | awk "{print 2 + 3}"
#echo -n "echo \"2 3\" | awk '{print \$1 + \$2}' = "; echo "2 3" | awk '{print $1 + $2}'
#echo -n "awk '{print \$1 + \$2}' <<< \"2 3\" = "; awk '{print $1 + $2}' <<< "2 3"
#echo -n "echo | awk -v var1=2 -v var2=3 \"{print var1 + var2}\" = "; echo | awk -v var1=2 -v var2=3 "{print var1 + var2}"
#echo -n "echo | awk -v var1=\$a -v var2=\$b \"{print var1 + var2}\" = "; echo | awk -v var1=$a -v var2=$b "{print var1 + var2}"
#echo -n "echo | awk \"{var1=2; var2=3; print var1 + var2}\" = "; echo | awk "{var1=2; var2=3; print var1 + var2}"
#echo -n "awk -v var1=2 -v var2=3 \"BEGIN {print var1 + var2}\" = "; awk -v var1=2 -v var2=3 "BEGIN {print var1 + var2}"
#echo -n "awk \"BEGIN {var1=2; var2=3; print var1 + var2}\" = "; awk "BEGIN {var1=2; var2=3; print var1 + var2}"
#echo -n "echo | awk \"{var1=\$a; var2=\$b; print var1 + var2}\" = "; echo | awk "{var1=$a; var2=$b; print var1 + var2}"
#echo -n "awk -v var1=\$a -v var2=\$b \"BEGIN {print var1 + var2}\" = "; awk -v var1=$a -v var2=$b "BEGIN {print var1 + var2}"
#echo -n "awk \"BEGIN {var1=\$a; var2=\$b; print var1 + var2}\" = "; awk "BEGIN {var1=$a; var2=$b; print var1 + var2}"
#echo -n "echo | awk \"{print \$a + \$b}\" = "; echo | awk "{print $a + $b}"
#echo -n "echo \"\$a \$b\" | awk \"{print \\\$1 + \\\$2}\" = "; echo "$a $b" | awk "{print \$1 + \$2}"
#echo -n "awk \"{print \\\$1 + \\\$2}\" <<< \"\$a \$b\" = "; awk "{print \$1 + \$2}" <<< "$a $b"



