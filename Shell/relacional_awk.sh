#!/usr/bin/env bash

echo 'O P E R A Ç Õ E S   R E L A C I O N A I S   C O M   AWK'
echo '---------------------------------------------------------'

# Literais
echo 'Operandos: literais definidos em tempo de design.'
echo -n "awk 'BEGIN {print (3 > 2)}' = "; awk 'BEGIN {print (3 > 2)}'
echo -n "awk 'BEGIN {print 3 < 2}' = "; awk 'BEGIN {print 3 < 2}'
echo -n "awk 'BEGIN {print 3 == 3}' = "; awk 'BEGIN {print 3 == 3}'
echo -n "awk 'BEGIN {print 3 != 2}' = "; awk 'BEGIN {print 3 != 2}'
echo

# Variáveis Bash injetadas via -v
a=5
b=7
echo "Operandos: variáveis Bash (a=$a, b=$b)"
echo -n "awk -v a=$a -v b=$b 'BEGIN {print a > b}' = "; awk -v a=$a -v b=$b 'BEGIN {print a > b}'
echo -n "awk -v a=$a -v b=$b 'BEGIN {print a < b}' = "; awk -v a=$a -v b=$b 'BEGIN {print a < b}'
echo -n "awk -v a=$a -v b=$b 'BEGIN {print a == b}' = "; awk -v a=$a -v b=$b 'BEGIN {print a == b}'
echo -n "awk -v a=$a -v b=$b 'BEGIN {print a != b}' = "; awk -v a=$a -v b=$b 'BEGIN {print a != b}'
echo

# Relacionais com campos posicionais
echo 'Operandos: campos de entrada posicional.'
echo -n "echo '10 20' | awk '{print \$1 > \$2}' = "; echo '10 20' | awk '{print $1 > $2}'
echo -n "echo '30 20' | awk '{print \$1 > \$2}' = "; echo '30 20' | awk '{print $1 > $2}'
echo

# Comparações de strings
echo 'Comparações de strings:'
echo -n "awk 'BEGIN {print \"abc\" == \"abc\"}' = "; awk 'BEGIN {print "abc" == "abc"}'
echo -n "awk 'BEGIN {print \"abc\" < \"xyz\"}' = "; awk 'BEGIN {print "abc" < "xyz"}'
echo -n "awk 'BEGIN {print \"abc\" > \"xyz\"}' = "; awk 'BEGIN {print "abc" > "xyz"}'
echo

echo '---------------------------------------------------------'

