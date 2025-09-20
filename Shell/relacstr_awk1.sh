#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  R E L A C I O N A I S  C O M  A W K - Números'	#EDITAR
echo '-----------------------------------------------------------'
echo '1) Invocação direta com BEGIN (sem here-string ou pipe)'
echo '-> Literais (todos os operadores)'
echo -ne "awk 'BEGIN {print \"2 == 3\\\t\\\t\", 2 == 3}'\t"; awk 'BEGIN {print "2 == 3\t\t", 2 == 3}'
echo -ne "awk 'BEGIN {print \"2 != 3\\\t\\\t\", 2 != 3}'\t"; awk 'BEGIN {print "2 != 3\t\t", 2 != 3}'
echo -ne "awk 'BEGIN {print \"2 < 3\\\t\\\t\", 2 < 3}'\t\t"; awk 'BEGIN {print "2 < 3\t\t", 2 < 3}'
echo -ne "awk 'BEGIN {print \"2 <= 3\\\t\\\t\", 2 <= 3}'\t"; awk 'BEGIN {print "2 <= 3\t\t", 2 <= 3}'
echo -ne "awk 'BEGIN {print \"(2 > 3)\\\t\\\t\", (2 > 3)}'\t"; awk 'BEGIN {print "(2 > 3)\t\t", (2 > 3)}'
echo -ne "awk 'BEGIN {print \"(2 >= 3)\\\t\", (2 >= 3)}'\t"; awk 'BEGIN {print "(2 >= 3)\t", (2 >= 3)}'

echo; echo '-> Literais e variáveis locais do awk'
echo -ne "awk 'BEGIN {a=2; b=3; print a == b}'\t"; awk 'BEGIN {a=2; b=3; print a == b}'
echo -ne "awk -v a=2 -v b=3 'BEGIN {print a == b}'\t"; awk -v a=2 -v b=3 'BEGIN {print a == b}'
echo '-----------------------------------------------------------'
echo 'x=2;y=3';x=2;y=3
echo '1) Invocação direta com BEGIN (sem here-string ou pipe)'
echo '-> Variáveis'
echo -ne "awk 'BEGIN {print '\$x' == '\$y'}'\t"; awk 'BEGIN {print '$x' == '$y'}'
echo; echo '-> Variáveis do Bash e variáveis locais do awk'
echo -ne "awk 'BEGIN {a='\$x'; b='\$y'; print a == b}'\t"; awk 'BEGIN {a='$x'; b='$y'; print a == b}'
echo -ne "awk -v a=\$x -v b=\$y 'BEGIN {print a == b}'\t"; awk -v a=$x -v b=$y 'BEGIN {print a == b}'
echo '-----------------------------------------------------------'






