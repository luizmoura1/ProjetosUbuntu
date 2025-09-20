#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  A R I T M É T I C A S  C O M  A W K'
echo '1) Invocação direta com BEGIN (sem here-string ou pipe)'
echo '-> Literais'
echo -n "awk 'BEGIN {print 2 + 3}' = "; awk 'BEGIN {print 2 + 3}'
echo '-> Literais e variáveis locais do awk'
echo -n "awk 'BEGIN {var1=2; var2=3; print var1 + var2}' = "; awk 'BEGIN {var1=2; var2=3; print var1 + var2}'
echo -n "awk -v var1=2 -v var2=3 'BEGIN {print var1 + var2}' = "; awk -v var1=2 -v var2=3 'BEGIN {print var1 + var2}'
echo '2) Invocação com entrada via here-string sem BEGIN'
echo '-> Literais e campos de entrada'
echo -n "awk '{print 2 + 3}' <<< '' = "; awk '{print 2 + 3}' <<< ''
echo -n "awk '{print \$1 + \$2}' <<< '2 3' = "; awk '{print $1 + $2}' <<< '2 3'
echo '-> Literais e variáveis locais do awk'
echo -n "awk '{var1=2; var2=3; print var1 + var2}' <<< '' = "; awk '{var1=2; var2=3; print var1 + var2}' <<< ''
echo -n "awk -v var1=2 -v var2=3 '{print var1 + var2}' <<< '' = "; awk -v var1=2 -v var2=3 '{print var1 + var2}' <<< ''
echo '3) Invocação com entrada via pipe sem BEGIN'
echo '-> Literais e campos de entrada'
echo -n "echo | awk '{print 2 + 3}' = "; echo | awk '{print 2 + 3}'
echo -n "echo '' | awk '{print 2 + 3}' = "; echo '' | awk '{print 2 + 3}'
echo -n "echo '2 3' | awk '{print \$1 + \$2}' = "; echo '2 3' | awk '{print $1 + $2}'
echo '-> Literais e variáveis locais do awk'
echo -n "echo | awk '{var1=2; var2=3; print var1 + var2}' = "; echo | awk '{var1=2; var2=3; print var1 + var2}'
echo -n "echo '' | awk '{var1=2; var2=3; print var1 + var2}' = "; echo '' | awk '{var1=2; var2=3; print var1 + var2}'
echo -n "echo | awk -v var1=2 -v var2=3 '{print var1 + var2}'  = "; echo | awk -v var1=2 -v var2=3 '{print var1 + var2}' 
echo -n "echo '' | awk -v var1=2 -v var2=3 '{print var1 + var2}' = "; echo '' | awk -v var1=2 -v var2=3 '{print var1 + var2}'
echo '-----------------------------------------------------------'
echo 'a=2;b=3';a=2;b=3
echo '1) Invocação direta com BEGIN (sem here-string ou pipe)'
echo '-> Variáveis'
echo -n "awk 'BEGIN {print '\$a' + '\$b'}' = "; awk 'BEGIN {print '$a' + '$b'}'
echo '-> Variáveis do Bash e variáveis locais do awk'
echo -n "awk 'BEGIN {var1='\$a'; var2='\$b'; print var1 + var2}' = "; awk 'BEGIN {var1='$a'; var2='$b'; print var1 + var2}'
echo -n "awk -v var1=\$a -v var2=\$b 'BEGIN {print var1 + var2}' = "; awk -v var1=$a -v var2=$b 'BEGIN {print var1 + var2}'
echo '2) Invocação com entrada via here-string sem BEGIN'
echo '-> Variáveis e campos de entrada'
echo -n "awk '{print '\$a' + '\$b'}' <<< '' = "; awk '{print '$a' + '$b'}' <<< ''		#BEGIN 	BEGIN 
echo -n "awk '{print \$1 + \$2}' <<< \"\$a \$b\" = "; awk '{print $1 + $2}' <<< "$a $b"
echo '-> Variáveis do Bash e variáveis locais do awk'
echo -n "awk '{var1='\$a'; var2='\$b'; print var1 + var2}' <<< '' = "; awk '{var1='$a'; var2='$b'; print var1 + var2}' <<< ''
echo -n "awk -v var1=\$a -v var2=\$b '{print var1 + var2}' <<< '' = "; awk -v var1=$a -v var2=$b '{print var1 + var2}' <<< ''	
echo '3) Invocação com entrada via pipe sem BEGIN'
echo '-> Variáveis e campos de entrada'
echo -n "echo | awk '{print '\$a' + '\$b'}' = "; echo | awk '{print '$a' + '$b'}'
echo -n "echo '' | awk '{print '\$a' + '\$b'}' = "; echo '' | awk '{print '$a' + '$b'}'
echo -n "echo \"\$a \$b\" | awk '{print \$1 + \$2}' = "; echo "$a $b" | awk '{print $1 + $2}'
echo '-> Variáveis do Bash e variáveis locais do awk'
echo -n "echo | awk '{var1='\$a'; var2='\$b'; print var1 + var2}' = "; echo | awk '{var1='$a'; var2='$b'; print var1 + var2}'
echo -n "echo '' | awk '{var1='\$a'; var2='\$b'; print var1 + var2}' = "; echo '' | awk '{var1='$a'; var2='$b'; print var1 + var2}'
echo -n "echo | awk -v var1=\$a -v var2=\$b '{print var1 + var2}' = "; echo | awk -v var1=$a -v var2=$b '{print var1 + var2}'
echo -n "echo '' | awk -v var1=\$a -v var2=\$b '{print var1 + var2}' = "; echo '' | awk -v var1=$a -v var2=$b '{print var1 + var2}'
#echo '-----------------------------------------------------------'
#echo 'Observações:'
#echo '1) O formato básico de uso do awk neste script é:'
#echo "   awk ' | BEGIN { ação } | { ação } '"
#echo '   O bloco BEGIN (opcional) executa antes da leitura da entrada.'
#echo '   O bloco { ação } (sem padrão) é aplicado à entrada fornecida,'
#echo '   que neste script é composta por valores literais ou variáveis do shell.'

#echo '2) Aspas duplas ao redor do bloco awk permitem interpolar variáveis do shell.'
#echo '   No entanto, ao usá-las, é necessário escapar os campos $1, $2 etc. com \$'
#echo '   para evitar que o Bash os expanda antes do awk.'

#echo '3) Ao passar strings ao awk via pipe (com echo) ou here-string (<<<),'
#echo '   use aspas duplas para que as variáveis do Bash na entrada sejam expandidas corretamente.'

#echo '4) Como neste script as variáveis são inteiros simples, não é necessário colocá-las'
#echo '   entre aspas ao interpolá-las diretamente no bloco awk.'

#echo '5) Também é possível definir variáveis diretamente dentro dos blocos {} (inclusive no BEGIN),'
#echo '   evitando o uso da opção -v. Isso funciona com valores literais e com variáveis do shell'
#echo '   interpoladas corretamente. No entanto, a opção -v é a forma mais segura de passar'
#echo '   variáveis do Bash para o awk, pois evita conflitos com $1, $2 e problemas de expansão.'

#echo '6) Para testar outras operações aritméticas, basta substituir o operador "+":'
#echo -e "  -	\t(subtração)"
#echo -e "  *	\t(multiplicação — lembre de escapar: \*)"
#echo -e "  /	\t(divisão)"
#echo -e "  %	\t(módulo)"
#echo -e "  ^	\t(potenciação — apenas em versões modernas do awk)"
#echo "  exp(b*log(a)) (potenciação portável: a^b)"

#echo -n "awk 'BEGIN {print 2 - 3}' = "; awk 'BEGIN {print 2 - 3}'
#echo -n "awk 'BEGIN {print 2 * 3}' = "; awk 'BEGIN {print 2 * 3}'
#echo -n "awk 'BEGIN {print 2 / 3}' = "; awk 'BEGIN {print 2 / 3}'
#echo -n "awk 'BEGIN {print 2 % 3}' = "; awk 'BEGIN {print 2 % 3}'
#echo -n "awk 'BEGIN {print 2 ^ 3}' = "; awk 'BEGIN {print 2 ^ 3}'





