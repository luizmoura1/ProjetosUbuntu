#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  R E L A C I O N A I S  C O M  A W K'
echo '==========================================================='

###############################################################
echo '1) Invocação direta com awk (sem echo ou <<<)'
###############################################################

echo '-> Literais com BEGIN'
echo -n "awk 'BEGIN {print 2 == 3}' = "; awk 'BEGIN {print 2 == 3}'
echo -n "awk 'BEGIN {print 2 != 3}' = "; awk 'BEGIN {print 2 != 3}'
echo -n "awk 'BEGIN {print 2 < 3}' = "; awk 'BEGIN {print 2 < 3}'
echo -n "awk 'BEGIN {print 2 <= 3}' = "; awk 'BEGIN {print 2 <= 3}'
echo -n "awk 'BEGIN {print (2 > 3)}' = "; awk 'BEGIN {print (2 > 3)}'
echo -n "awk 'BEGIN {print (2 >= 3)}' = "; awk 'BEGIN {print (2 >= 3)}'

echo
echo '-> Variáveis internas com BEGIN'
echo -n "awk 'BEGIN {var1=2; var2=3; print var1 == var2}' = "; awk 'BEGIN {var1=2; var2=3; print var1 == var2}'
echo -n "awk -v var1=2 -v var2=3 'BEGIN {print var1 == var2}' = "; awk -v var1=2 -v var2=3 'BEGIN {print var1 == var2}'

echo
echo '-> Variáveis do Bash com BEGIN'
a=2; b=3; echo "a=$a; b=$b"
echo -n "awk 'BEGIN {print '\$a' == '\$b'}' = "; awk 'BEGIN {print '$a' == '$b'}'
echo -n "awk 'BEGIN {var1='\$a'; var2='\$b'; print var1 == var2}' = "; awk 'BEGIN {var1='$a'; var2='$b'; print var1 == var2}'
echo -n "awk -v var1=\$a -v var2=\$b 'BEGIN {print var1 == var2}' = "; awk -v var1=$a -v var2=$b 'BEGIN {print var1 == var2}'

###############################################################
echo
echo '2) Invocação com entrada via pipe: echo | awk'
###############################################################

echo
echo '-> Variáveis internas sem BEGIN'
echo -n "echo | awk '{var1=2; var2=3; print var1 == var2}' = "; echo | awk '{var1=2; var2=3; print var1 == var2}'
echo -n "echo | awk -v var1=2 -v var2=3 '{print var1 == var2}' = "; echo | awk -v var1=2 -v var2=3 '{print var1 == var2}'

echo
echo '-> Variáveis do Bash sem BEGIN'
echo -n "echo | awk '{var1=\$a; var2=\$b; print var1 == var2}' = "; echo | awk '{var1='$a'; var2='$b'; print var1 == var2}'
echo -n "echo | awk -v var1=\$a -v var2=\$b '{print var1 == var2}' = "; echo | awk -v var1=$a -v var2=$b '{print var1 == var2}'

echo
echo '-> Literais sem BEGIN (linha simulada)'
echo -n "echo '2 3' | awk '{print \$1 == \$2}' = "; echo '2 3' | awk '{print $1 == $2}'
echo -n "echo | awk '{print 2 == 3}' = "; echo | awk '{print 2 == 3}'

###############################################################
echo
echo '3) Invocação com entrada via here-string: <<<'
###############################################################

echo
echo '-> Variáveis internas sem BEGIN'
echo -n "awk '{var1=2; var2=3; print var1 == var2}' <<< '' = "; awk '{var1=2; var2=3; print var1 == var2}' <<< ''
echo -n "awk -v var1=2 -v var2=3 '{print var1 == var2}' <<< '' = "; awk -v var1=2 -v var2=3 '{print var1 == var2}' <<< ''

echo
echo '-> Variáveis do Bash sem BEGIN'
echo -n "awk '{var1=\$a; var2=\$b; print var1 == var2}' <<< '' = "; awk '{var1='$a'; var2='$b'; print var1 == var2}' <<< ''
echo -n "awk -v var1=\$a -v var2=\$b '{print var1 == var2}' <<< '' = "; awk -v var1=$a -v var2=$b '{print var1 == var2}' <<< ''

echo
echo '-> Literais simuladas em linha'
echo -n "awk '{print \$1 == \$2}' <<< '2 3' = "; awk '{print $1 == $2}' <<< '2 3'

echo
echo '-> Variáveis do Bash simuladas em linha'
echo -n "awk '{print \$1 == \$2}' <<< \"\$a \$b\" = "; awk '{print $1 == $2}' <<< "$a $b"

echo
echo '-> Literais diretas com código'
echo -n "awk '{print 2 == 3}' <<< '' = "; awk '{print 2 == 3}' <<< ''
echo -n "awk 'BEGIN {print '\$a' == '\$b'}' <<< '' = "; awk 'BEGIN {print '$a' == '$b'}' <<< ''

