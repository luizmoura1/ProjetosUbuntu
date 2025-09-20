#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  R E L A C I O N A I S  C O M  A W K -STRINGS'	#EDITAR
echo '-----------------------------------------------------------'
echo '1) Invocação direta com BEGIN (sem here-string ou pipe)'
echo '-> Literais (todos os operadores)'
echo -n "awk 'BEGIN {print 2 == 3}' = "; awk 'BEGIN {print 2 == 3}'
echo -n "awk 'BEGIN {print 2 != 3}' = "; awk 'BEGIN {print 2 != 3}'
echo -n "awk 'BEGIN {print 2 < 3}' = "; awk 'BEGIN {print 2 < 3}'
echo -n "awk 'BEGIN {print 2 <= 3}' = "; awk 'BEGIN {print 2 <= 3}'
echo -n "awk 'BEGIN {print (2 > 3)}' = "; awk 'BEGIN {print (2 > 3)}'
echo -n "awk 'BEGIN {print (2 >= 3)}' = "; awk 'BEGIN {print (2 >= 3)}'
echo; echo '-> Literais e variáveis locais do awk'
echo -n "awk 'BEGIN {var1=2; var2=3; print var1 == var2}' = "; awk 'BEGIN {var1=2; var2=3; print var1 == var2}'
echo -n "awk -v var1=2 -v var2=3 'BEGIN {print var1 == var2}' = "; awk -v var1=2 -v var2=3 'BEGIN {print var1 == var2}'
echo;echo '2) Invocação com entrada via here-string sem BEGIN'
echo '-> Literais e campos de entrada'
echo -n "awk '{print 2 == 3}' <<< '' = "; awk '{print 2 == 3}' <<< ''
echo;echo -n "awk '{print \$1 == \$2}' <<< '2 3' = "; awk '{print $1 == $2}' <<< '2 3'
echo; echo '-> Literais e variáveis locais do awk'
echo -n "awk '{var1=2; var2=3; print var1 == var2}' <<< '' = "; awk '{var1=2; var2=3; print var1 == var2}' <<< ''
echo -n "awk -v var1=2 -v var2=3 '{print var1 == var2}' <<< '' = "; awk -v var1=2 -v var2=3 '{print var1 == var2}' <<< ''
echo;echo '3) Invocação com entrada via pipe sem BEGIN'
echo '-> Literais e campos de entrada'
echo -n "echo | awk '{print 2 == 3}' = "; echo | awk '{print 2 == 3}'
echo -n "echo '' | awk '{print 2 == 3}' = "; echo '' | awk '{print 2 == 3}'
echo;echo -n "echo '2 3' | awk '{print \$1 == \$2}' = "; echo '2 3' | awk '{print $1 == $2}'
echo; echo '->Literais e variáveis locais do awk'
echo -n "echo | awk '{var1=2; var2=3; print var1 == var2}' = "; echo | awk '{var1=2; var2=3; print var1 == var2}'
echo -n "echo '' | awk '{var1=2; var2=3; print var1 == var2}' = "; echo '' | awk '{var1=2; var2=3; print var1 == var2}'
echo -n "echo | awk -v var1=2 -v var2=3 '{print var1 == var2}'  = "; echo | awk -v var1=2 -v var2=3 '{print var1 == var2}' 
echo -n "echo '' | awk -v var1=2 -v var2=3 '{print var1 == var2}' = "; echo '' | awk -v var1=2 -v var2=3 '{print var1 == var2}'
echo '-----------------------------------------------------------'
echo 'a=2;b=3';a=2;b=3
echo '1) Invocação direta com BEGIN (sem here-string ou pipe)'
echo '-> Variáveis'
echo -n "awk 'BEGIN {print '\$a' == '\$b'}' = "; awk 'BEGIN {print '$a' == '$b'}'
echo; echo '-> Variáveis do Bash e variáveis locais do awk'
echo -n "awk 'BEGIN {var1='\$a'; var2='\$b'; print var1 == var2}' = "; awk 'BEGIN {var1='$a'; var2='$b'; print var1 == var2}'
echo -n "awk -v var1=\$a -v var2=\$b 'BEGIN {print var1 == var2}' = "; awk -v var1=$a -v var2=$b 'BEGIN {print var1 == var2}'
echo;echo '2) Invocação com entrada via here-string sem BEGIN'
echo '-> Variáveis e campos de entrada'
echo -n "awk 'BEGIN {print '\$a' == '\$b'}' <<< '' = "; awk 'BEGIN {print '$a' == '$b'}' <<< ''
echo;echo -n "awk '{print \$1 == \$2}' <<< \"\$a \$b\" = "; awk '{print $1 == $2}' <<< "$a $b"
echo; echo '->Variáveis do Bash e variáveis locais do awk'
echo -n "awk '{var1='\$a'; var2='\$b'; print var1 == var2}' <<< '' = "; awk '{var1='$a'; var2='$b'; print var1 == var2}' <<< ''
echo -n "awk -v var1=\$a -v var2=\$b '{print var1 == var2}' <<< '' = "; awk -v var1=$a -v var2=$b '{print var1 == var2}' <<< ''	
echo;echo '3) Invocação com entrada via pipe sem BEGIN'
echo '-> Variáveis e campos de entrada'
echo -n "echo | awk '{print '\$a' == '\$b'}' = "; echo | awk '{print '$a' == '$b'}'
echo -n "echo '' | awk '{print '\$a' == '\$b'}' = "; echo '' | awk '{print '$a' == '$b'}'
echo;echo -n "echo \"\$a \$b\" | awk '{print \$1 == \$2}' = "; echo "$a $b" | awk '{print $1 == $2}'
echo; echo '->Variáveis do Bash e variáveis locais do awk'
echo -n "echo | awk '{var1='\$a'; var2='\$b'; print var1 == var2}' = "; echo | awk '{var1='$a'; var2='$b'; print var1 == var2}'
echo -n "echo '' | awk '{var1='\$a'; var2='\$b'; print var1 == var2}' = "; echo '' | awk '{var1='$a'; var2='$b'; print var1 == var2}'
echo -n "echo | awk -v var1=\$a -v var2=\$b '{print var1 == var2}' = "; echo | awk -v var1=$a -v var2=$b '{print var1 == var2}'
echo -n "echo '' | awk -v var1=\$a -v var2=\$b '{print var1 == var2}' = "; echo '' | awk -v var1=$a -v var2=$b '{print var1 == var2}'
echo '-----------------------------------------------------------'
# OBSERVAÇÕES:
# - No awk, variáveis não inicializadas são tratadas como zero em contextos numéricos,
#   ou como string vazia em contextos de texto. Isso pode levar a comparações inesperadas
#   sem gerar erro.
# - Exemplo: var1=2; var3 não definida => var1 == var3 avalia 2 == 0 (falso).
# - Operações com > ou >= (e também < e <=) devem ser colocadas entre parênteses
#   quando usadas após o comando print, para evitar ambiguidade na análise do código awk.






