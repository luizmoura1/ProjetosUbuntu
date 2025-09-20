echo "a=2;b=3";a=2;b=3
echo '---------------------------------------------------------'
echo 'operações aritméticas'
# let d=a/b	# if let d
echo -ne "if let d=a/b;then echo \$a;else echo \$b;fi\t\t"
if let d=a/b;then echo $a;else echo $b;fi
let d=a/b;echo -e "resultado (\$d) = $d\t\tcódigo de saída (\$?) = $?"
echo
# ((e=a/b))	# if ((e))
echo -ne "if ((e=a/b));then echo \$a;else echo \$b;fi\t\t"
if ((e=a/b));then echo $a;else echo $b;fi
((e=a/b));echo -e "resultado (\$e) = $e\t\tcódigo de saída (\$?) = $?"
echo '---------------------------------------------------------'
echo 'operações relacionais'
echo -ne "if [ \$a -gt \$b ];then echo \$a;else echo \$b;fi\t\t"
if [ $a -gt $b ];then echo $a;else echo $b;fi
echo '---------------------------------------------------------'
echo 'testes'
# expressão com apenas um operando, sem operador
#f é variável com qualquer valor ou é qualquer literal
echo -ne "if [ f ];then echo \$a;else echo \$b;fi\t\t\t"
if [ f ];then echo $a;else echo $b;fi
echo -ne "if [[ f ]];then echo $a;else echo $b;fi\t\t\t"
if [[ f ]];then echo $a;else echo $b;fi
echo -ne "if test f;then echo \$a;else echo \$b;fi\t\t\t"
if test f;then echo $a;else echo $b;fi
echo '---------------------------------------------------------'
echo 'com uso do operador ternário'
# operador ternário: se a > b, c = a, senão c = b
echo -ne "c=\$((a > b ? a : b));echo \$c\t\t\t\t"
c=$((a > b ? a : b));echo $c
echo '---------------------------------------------------------'


