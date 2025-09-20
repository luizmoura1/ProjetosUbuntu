#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  R E L A C I O N A I S  C O M  A W K - Números'	#EDITAR
echo '-----------------------------------------------------------'
echo 'x=2;y=3';x=2;y=3
echo '1) Invocação direta com BEGIN (sem here-string ou pipe)'
echo '-> Variáveis'

echo -ne "awk 'BEGIN {print '\$x' == '\$y'}'\t"; awk 'BEGIN {print '$x' == '$y'}'

echo 'Possibilidades:'
echo '1) Luiz:'
echo -ne "awk 'BEGIN {print \"'\$x' == '\$y'\\\t\\\t\", '\$x' == '\$y'}'\t"; awk 'BEGIN {print "'\$x' == '\$y'\t\t", '$x' == '$y'}'
echo '2) ChatGPT:'
echo -ne "awk 'BEGIN {print \"'\$x' == '\$y'\t\t\", $x == $y}'\t"; awk 'BEGIN {print "$x == $y\t\t", '"$x"' == '"$y"'}'
echo
echo "A ideia é que fosse impresso o seguinte (após a string e antes do resultado): '\$x' == '\$y'"
echo
echo '3) ChatGPT:'
echo -ne "awk 'BEGIN {print \"'\$x' == '\$y'\\t\\t\", \$x == \$y}'\t"; awk 'BEGIN {print "'\$x' == '\$y'\t\t", '$x' == '$y'}'

