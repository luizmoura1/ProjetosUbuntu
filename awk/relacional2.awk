#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  R E L A C I O N A I S COM AWK'
echo '-----------------------------------------------------------'
echo 'Operandos literais definidos em design-time.'
echo -n "awk 'BEGIN {print 2 == 3}' = "; awk 'BEGIN {print 2 == 3}'
echo -n "awk 'BEGIN {print 2 == 3}' = "; awk 'BEGIN {print 2 != 3}'
echo -n "awk 'BEGIN {print 2 == 3}' = "; awk 'BEGIN {print 2 < 3}'
echo -n "awk 'BEGIN {print 2 == 3}' = "; awk 'BEGIN {print 2 <= 3}'
echo -n "awk 'BEGIN {print 2 == 3}' = "; awk 'BEGIN {print 2 > 3}'
echo -n "awk 'BEGIN {print 2 == 3}' = "; awk 'BEGIN {print 2 >= 3}'
echo '-----------------------------------------------------------'

echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos em design-time.'
echo 'a=2;b=3';a=2;b=3

echo -n "awk -v a=$a -v b=$b 'BEGIN {print a == b}' = "; awk -v a=$a -v b=$b 'BEGIN {print a == b}'
echo -n "awk -v a=$a -v b=$b 'BEGIN {print a != b}' = "; awk -v a=$a -v b=$b 'BEGIN {print a != b}'
echo -n "awk -v a=$a -v b=$b 'BEGIN {print a < b}' = "; awk -v a=$a -v b=$b 'BEGIN {print a < b}'
echo -n "awk -v a=$a -v b=$b 'BEGIN {print a <= b}' = "; awk -v a=$a -v b=$b 'BEGIN {print a <= b}'
echo -n "awk -v a=$a -v b=$b 'BEGIN {print a > b}' = "; awk -v a=$a -v b=$b 'BEGIN {print a > b}'
echo -n "awk -v a=$a -v b=$b 'BEGIN {print a <= b}' = "; awk -v a=$a -v b=$b 'BEGIN {print a >= b}'

echo '-----------------------------------------------------------'
echo '-----------------------------------------------------------'

