#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  L Ó G I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos variáveis não definidos em design-time.'
a=; b=; echo 'a='; echo 'b='			# única linha a ser mudada para verificar diferentes casos
echo; echo "AND : &&"
# sem expansão, sem aspas, expressões simples
echo -ne ""; [ a == b ] && [ a != b ]; echo $?
echo -ne ""; [ a -eq b ] && [ a -ne b ]; echo $?
echo -ne ""; test a == b && test a != b; echo $?
echo -ne ""; test a -eq b && test a -ne b; echo $?
echo -ne ""; [[ a == b ]] && [[ a != b ]]; echo $?
echo -ne ""; [[ a -eq b ]] && [[ a -ne b ]]; echo $?
echo -ne ""; (( a == b )) && (( a != b )); echo $?
echo -ne ""; (( a -eq b )) && (( a -ne b )); echo $?

# sem expansão, sem aspas, expressões compostas
echo -ne ""; [ a == b  &&  a != b ]; echo $?
echo -ne ""; [ a -eq b  &&  a -ne b ]; echo $?
echo -ne ""; test a == b &&  a != b; echo $?
echo -ne ""; test a -eq b &&  a -ne b; echo $?
echo -ne ""; [[ a == b  &&  a != b ]]; echo $?
echo -ne ""; [[ a -eq b  && a -ne b ]]; echo $?
echo -ne ""; (( a == b  &&  a != b )); echo $?
echo -ne ""; (( a -eq b  && a -ne b )); echo $?

# sem expansão, com aspas, expressões simples
echo -ne ""; [ "a" == "b" ] && [ "a" != "b" ]; echo $?
echo -ne ""; [ "a" -eq "b" ] && [ "a" -ne "b" ]; echo $?
echo -ne ""; test "a" == "b" && test "a" != "b"; echo $?
echo -ne ""; test "a" -eq "b" && test "a" -ne "b"; echo $?
echo -ne ""; [[ "a" == "b" ]] && [[ "a" != "b" ]]; echo $?
echo -ne ""; [[ "a" -eq "b" ]] && [[ "a" -ne "b" ]]; echo $?
echo -ne ""; (( "a" == "b" )) && (( "a" != "b" )); echo $?
echo -ne ""; (( "a" -eq "b" )) && (( "a" -ne "b" )); echo $?

# sem expansão, com aspas, expressões compostas
echo -ne ""; [ "a" == "b"  &&  "a" != "b" ]; echo $?
echo -ne ""; [ "a" -eq "b"  &&  "a" -ne "b" ]; echo $?
echo -ne ""; test "a" == "b" &&  "a" != "b"; echo $?
echo -ne ""; test "a" -eq "b" &&  "a" -ne "b"; echo $?
echo -ne ""; [[ "a" == "b"  &&  "a" != "b" ]]; echo $?
echo -ne ""; [[ "a" -eq "b"  && "a" -ne "b" ]]; echo $?
echo -ne ""; (( "a" == "b"  &&  "a" != "b" )); echo $?
echo -ne ""; (( "a" -eq "b"  && "a" -ne "b" )); echo $?

# com expansão, sem aspas, expressões simples
echo -ne ""; [ $a == $b ] && [ $a != $b ]; echo $?
echo -ne ""; [ $a -eq $b ] && [ $a -ne $b ]; echo $?
echo -ne ""; test $a == $b && test $a != $b; echo $?
echo -ne ""; test $a -eq $b && test $a -ne $b; echo $?
echo -ne ""; [[ $a == $b ]] && [[ $a != $b ]]; echo $?
echo -ne ""; [[ $a -eq $b ]] && [[ $a -ne $b ]]; echo $?
echo -ne ""; (( $a == $b )) && (( $a != $b )); echo $?
echo -ne ""; (( $a -eq $b )) && (( $a -ne $b )); echo $?

# com expansão, sem aspas, expressões compostas
echo -ne ""; [ $a == $b  &&  $a != $b ]; echo $?
echo -ne ""; [ $a -eq $b  &&  $a -ne $b ]; echo $?
echo -ne ""; test $a == $b &&  $a != $b; echo $?
echo -ne ""; test $a -eq $b &&  $a -ne $b; echo $?
echo -ne ""; [[ $a == $b  &&  $a != $b ]]; echo $?
echo -ne ""; [[ $a -eq $b  && $a -ne $b ]]; echo $?
echo -ne ""; (( $a == $b  &&  $a != $b )); echo $?
echo -ne ""; (( $a -eq $b  && $a -ne $b )); echo $?

# com expansão, com aspas, expressões simples
echo -ne ""; [ "$a" == "$b" ] && [ "$a" != "$b" ]; echo $?
echo -ne ""; [ "$a" -eq "$b" ] && [ "$a" -ne "$b" ]; echo $?
echo -ne ""; test "$a" == "$b" && test "$a" != "$b"; echo $?
echo -ne ""; test "$a" -eq "$b" && test "$a" -ne "$b"; echo $?
echo -ne ""; [[ "$a" == "$b" ]] && [[ "$a" != "$b" ]]; echo $?
echo -ne ""; [[ "$a" -eq "$b" ]] && [[ "$a" -ne "$b" ]]; echo $?
echo -ne ""; (( "$a" == "$b" )) && (( "$a" != "$b" )); echo $?
echo -ne ""; (( "$a" -eq "$b" )) && (( "$a" -ne "$b" )); echo $?

# com expansão, com aspas, expressões compostas
echo -ne ""; [ "$a" == "$b"  &&  "$a" != "$b" ]; echo $?
echo -ne ""; [ "$a" -eq "$b"  &&  "$a" -ne "$b" ]; echo $?
echo -ne ""; test "$a" == "$b" &&  "$a" != "$b"; echo $?
echo -ne ""; test "$a" -eq "$b" &&  "$a" -ne "$b"; echo $?
echo -ne ""; [[ "$a" == "$b"  &&  "$a" != "$b" ]]; echo $?
echo -ne ""; [[ "$a" -eq "$b"  && "$a" -ne "$b" ]]; echo $?
echo -ne ""; (( "$a" == "$b"  &&  "$a" != "$b" )); echo $?
echo -ne ""; (( "$a" -eq "$b"  && "$a" -ne "$b" )); echo $?

echo; echo -e "AND : -a"
# sem expansão, sem aspas, expressões simples
echo -ne ""; [ a == b ] -a [ a != b ]; echo $?
echo -ne ""; [ a -eq b ] -a [ a -ne b ]; echo $?
echo -ne ""; test a == b -a test a != b; echo $?
echo -ne ""; test a -eq b -a test a -ne b; echo $?
echo -ne ""; [[ a == b ]] -a [[ a != b ]]; echo $?
echo -ne ""; [[ a -eq b ]] -a [[ a -ne b ]]; echo $?
echo -ne ""; (( a == b )) -a (( a != b )); echo $?
echo -ne ""; (( a -eq b )) -a (( a -ne b )); echo $?

# sem expansão, sem aspas, expressões compostas
echo -ne ""; [ a == b  -a  a != b ]; echo $?
echo -ne ""; [ a -eq b  -a  a -ne b ]; echo $?
echo -ne ""; test a == b -a  a != b; echo $?
echo -ne ""; test a -eq b -a  a -ne b; echo $?
echo -ne ""; [[ a == b  -a  a != b ]]; echo $?
echo -ne ""; [[ a -eq b  -a  a -ne b ]]; echo $?
echo -ne ""; (( a == b  -a  a != b )); echo $?
echo -ne ""; (( a -eq b  -a  a -ne b )); echo $?

# sem expansão, com aspas, expressões simples
echo -ne ""; [ "a" == "b" ] -a [ "a" != "b" ]; echo $?
echo -ne ""; [ "a" -eq "b" ] -a [ "a" -ne "b" ]; echo $?
echo -ne ""; test "a" == "b" -a test "a" != "b"; echo $?
echo -ne ""; test "a" -eq "b" -a test "a" -ne "b"; echo $?
echo -ne ""; [[ "a" == "b" ]] -a [[ "a" != "b" ]]; echo $?
echo -ne ""; [[ "a" -eq "b" ]] -a [[ "a" -ne "b" ]]; echo $?
echo -ne ""; (( "a" == "b" )) -a (( "a" != "b" )); echo $?
echo -ne ""; (( "a" -eq "b" )) -a (( "a" -ne "b" )); echo $?

# sem expansão, com aspas, expressões compostas
echo -ne ""; [ "a" == "b"  -a  "a" != "b" ]; echo $?
echo -ne ""; [ "a" -eq "b"  -a  "a" -ne "b" ]; echo $?
echo -ne ""; test "a" == "b" -a  "a" != "b"; echo $?
echo -ne ""; test "a" -eq "b" -a  "a" -ne "b"; echo $?
echo -ne ""; [[ "a" == "b"  -a  "a" != "b" ]]; echo $?
echo -ne ""; [[ "a" -eq "b"  -a  "a" -ne "b" ]]; echo $?
echo -ne ""; (( "a" == "b"  -a  "a" != "b" )); echo $?
echo -ne ""; (( "a" -eq "b"  -a  "a" -ne "b" )); echo $?

# com expansão, sem aspas, expressões simples
echo -ne ""; [ $a == $b ] -a [ $a != $b ]; echo $?
echo -ne ""; [ $a -eq $b ] -a [ $a -ne $b ]; echo $?
echo -ne ""; test $a == $b -a test $a != $b; echo $?
echo -ne ""; test $a -eq $b -a test $a -ne $b; echo $?
echo -ne ""; [[ $a == $b ]] -a [[ $a != $b ]]; echo $?
echo -ne ""; [[ $a -eq $b ]] -a [[ $a -ne $b ]]; echo $?
echo -ne ""; (( $a == $b )) -a (( $a != $b )); echo $?
echo -ne ""; (( $a -eq $b )) -a (( $a -ne $b )); echo $?

# com expansão, sem aspas, expressões compostas
echo -ne ""; [ $a == $b  -a  $a != $b ]; echo $?
echo -ne ""; [ $a -eq $b  -a  $a -ne $b ]; echo $?
echo -ne ""; test $a == $b -a  $a != $b; echo $?
echo -ne ""; test $a -eq $b -a  $a -ne $b; echo $?
echo -ne ""; [[ $a == $b  -a  $a != $b ]]; echo $?
echo -ne ""; [[ $a -eq $b  -a  $a -ne $b ]]; echo $?
echo -ne ""; (( $a == $b  -a  $a != $b )); echo $?
echo -ne ""; (( $a -eq $b  -a  $a -ne $b )); echo $?

# com expansão, com aspas, expressões simples
echo -ne ""; [ "$a" == "$b" ] -a [ "$a" != "$b" ]; echo $?
echo -ne ""; [ "$a" -eq "$b" ] -a [ "$a" -ne "$b" ]; echo $?
echo -ne ""; test "$a" == "$b" -a test "$a" != "$b"; echo $?
echo -ne ""; test "$a" -eq "$b" -a test "$a" -ne "$b"; echo $?
echo -ne ""; [[ "$a" == "$b" ]] -a [[ "$a" != "$b" ]]; echo $?
echo -ne ""; [[ "$a" -eq "$b" ]] -a [[ "$a" -ne "$b" ]]; echo $?
echo -ne ""; (( "$a" == "$b" )) -a (( "$a" != "$b" )); echo $?
echo -ne ""; (( "$a" -eq "$b" )) -a (( "$a" -ne "$b" )); echo $?

# com expansão, com aspas, expressões compostas
echo -ne ""; [ "$a" == "$b"  -a  "$a" != "$b" ]; echo $?
echo -ne ""; [ "$a" -eq "$b"  -a  "$a" -ne "$b" ]; echo $?
echo -ne ""; test "$a" == "$b" -a  "$a" != "$b"; echo $?
echo -ne ""; test "$a" -eq "$b" -a  "$a" -ne "$b"; echo $?
echo -ne ""; [[ "$a" == "$b"  -a  "$a" != "$b" ]]; echo $?
echo -ne ""; [[ "$a" -eq "$b"  -a  "$a" -ne "$b" ]]; echo $?
echo -ne ""; (( "$a" == "$b"  -a  "$a" != "$b" )); echo $?
echo -ne ""; (( "$a" -eq "$b"  -a  "$a" -ne "$b" )); echo $?

echo; echo "OR : ||"
# sem expansão, sem aspas, expressões simples
echo -ne ""; [ a == b ] || [ a != b ]; echo $?
echo -ne ""; [ a -eq b ] || [ a -ne b ]; echo $?
echo -ne ""; test a == b || test a != b; echo $?
echo -ne ""; test a -eq b || test a -ne b; echo $?
echo -ne ""; [[ a == b ]] || [[ a != b ]]; echo $?
echo -ne ""; [[ a -eq b ]] || [[ a -ne b ]]; echo $?
echo -ne ""; (( a == b )) || (( a != b )); echo $?
echo -ne ""; (( a -eq b )) || (( a -ne b )); echo $?

# sem expansão, sem aspas, expressões compostas
echo -ne ""; [ a == b  ||  a != b ]; echo $?
echo -ne ""; [ a -eq b  ||  a -ne b ]; echo $?
echo -ne ""; test a == b ||  a != b; echo $?
echo -ne ""; test a -eq b ||  a -ne b; echo $?
echo -ne ""; [[ a == b  ||  a != b ]]; echo $?
echo -ne ""; [[ a -eq b  || a -ne b ]]; echo $?
echo -ne ""; (( a == b  ||  a != b )); echo $?
echo -ne ""; (( a -eq b  || a -ne b )); echo $?

# sem expansão, com aspas, expressões simples
echo -ne ""; [ "a" == "b" ] || [ "a" != "b" ]; echo $?
echo -ne ""; [ "a" -eq "b" ] || [ "a" -ne "b" ]; echo $?
echo -ne ""; test "a" == "b" || test "a" != "b"; echo $?
echo -ne ""; test "a" -eq "b" || test "a" -ne "b"; echo $?
echo -ne ""; [[ "a" == "b" ]] || [[ "a" != "b" ]]; echo $?
echo -ne ""; [[ "a" -eq "b" ]] || [[ "a" -ne "b" ]]; echo $?
echo -ne ""; (( "a" == "b" )) || (( "a" != "b" )); echo $?
echo -ne ""; (( "a" -eq "b" )) || (( "a" -ne "b" )); echo $?

# sem expansão, com aspas, expressões compostas
echo -ne ""; [ "a" == "b"  ||  "a" != "b" ]; echo $?
echo -ne ""; [ "a" -eq "b"  ||  "a" -ne "b" ]; echo $?
echo -ne ""; test "a" == "b" ||  "a" != "b"; echo $?
echo -ne ""; test "a" -eq "b" ||  "a" -ne "b"; echo $?
echo -ne ""; [[ "a" == "b"  ||  "a" != "b" ]]; echo $?
echo -ne ""; [[ "a" -eq "b"  ||  "a" -ne "b" ]]; echo $?
echo -ne ""; (( "a" == "b"  ||  "a" != "b" )); echo $?
echo -ne ""; (( "a" -eq "b"  ||  "a" -ne "b" )); echo $?

# com expansão, sem aspas, expressões simples
echo -ne ""; [ $a == $b ] || [ $a != $b ]; echo $?
echo -ne ""; [ $a -eq $b ] || [ $a -ne $b ]; echo $?
echo -ne ""; test $a == $b || test $a != $b; echo $?
echo -ne ""; test $a -eq $b || test $a -ne $b; echo $?
echo -ne ""; [[ $a == $b ]] || [[ $a != $b ]]; echo $?
echo -ne ""; [[ $a -eq $b ]] || [[ $a -ne $b ]]; echo $?
echo -ne ""; (( $a == $b )) || (( $a != $b )); echo $?
echo -ne ""; (( $a -eq $b )) || (( $a -ne $b )); echo $?

# com expansão, sem aspas, expressões compostas
echo -ne ""; [ $a == $b  ||  $a != $b ]; echo $?
echo -ne ""; [ $a -eq $b  ||  $a -ne $b ]; echo $?
echo -ne ""; test $a == $b ||  $a != $b; echo $?
echo -ne ""; test $a -eq $b ||  $a -ne $b; echo $?
echo -ne ""; [[ $a == $b  ||  $a != $b ]]; echo $?
echo -ne ""; [[ $a -eq $b  ||  $a -ne $b ]]; echo $?
echo -ne ""; (( $a == $b  ||  $a != $b )); echo $?
echo -ne ""; (( $a -eq $b  ||  $a -ne $b )); echo $?

# com expansão, com aspas, expressões simples
echo -ne ""; [ "$a" == "$b" ] || [ "$a" != "$b" ]; echo $?
echo -ne ""; [ "$a" -eq "$b" ] || [ "$a" -ne "$b" ]; echo $?
echo -ne ""; test "$a" == "$b" || test "$a" != "$b"; echo $?
echo -ne ""; test "$a" -eq "$b" || test "$a" -ne "$b"; echo $?
echo -ne ""; [[ "$a" == "$b" ]] || [[ "$a" != "$b" ]]; echo $?
echo -ne ""; [[ "$a" -eq "$b" ]] || [[ "$a" -ne "$b" ]]; echo $?
echo -ne ""; (( "$a" == "$b" )) || (( "$a" != "$b" )); echo $?
echo -ne ""; (( "$a" -eq "$b" )) || (( "$a" -ne "$b" )); echo $?

# com expansão, com aspas, expressões compostas
echo -ne ""; [ "$a" == "$b"  ||  "$a" != "$b" ]; echo $?
echo -ne ""; [ "$a" -eq "$b"  ||  "$a" -ne "$b" ]; echo $?
echo -ne ""; test "$a" == "$b" ||  "$a" != "$b"; echo $?
echo -ne ""; test "$a" -eq "$b" ||  "$a" -ne "$b"; echo $?
echo -ne ""; [[ "$a" == "$b"  ||  "$a" != "$b" ]]; echo $?
echo -ne ""; [[ "$a" -eq "$b"  ||  "$a" -ne "$b" ]]; echo $?
echo -ne ""; (( "$a" == "$b"  ||  "$a" != "$b" )); echo $?
echo -ne ""; (( "$a" -eq "$b"  ||  "$a" -ne "$b" )); echo $?

echo; echo -e "OR : -o"
# sem expansão, sem aspas, expressões simples
echo -ne ""; [ a == b ] -o [ a != b ]; echo $?
echo -ne ""; [ a -eq b ] -o [ a -ne b ]; echo $?
echo -ne ""; test a == b -o test a != b; echo $?
echo -ne ""; test a -eq b -o test a -ne b; echo $?
echo -ne ""; [[ a == b ]] -o [[ a != b ]]; echo $?
echo -ne ""; [[ a -eq b ]] -o [[ a -ne b ]]; echo $?
echo -ne ""; (( a == b )) -o (( a != b )); echo $?
echo -ne ""; (( a -eq b )) -o (( a -ne b )); echo $?

# sem expansão, sem aspas, expressões compostas
echo -ne ""; [ a == b  -o  a != b ]; echo $?
echo -ne ""; [ a -eq b  -o  a -ne b ]; echo $?
echo -ne ""; test a == b -o  a != b; echo $?
echo -ne ""; test a -eq b -o  a -ne b; echo $?
echo -ne ""; [[ a == b  -o  a != b ]]; echo $?
echo -ne ""; [[ a -eq b  -o  a -ne b ]]; echo $?
echo -ne ""; (( a == b  -o  a != b )); echo $?
echo -ne ""; (( a -eq b  -o  a -ne b )); echo $?

# sem expansão, com aspas, expressões simples
echo -ne ""; [ "a" == "b" ] -o [ "a" != "b" ]; echo $?
echo -ne ""; [ "a" -eq "b" ] -o [ "a" -ne "b" ]; echo $?
echo -ne ""; test "a" == "b" -o test "a" != "b"; echo $?
echo -ne ""; test "a" -eq "b" -o test "a" -ne "b"; echo $?
echo -ne ""; [[ "a" == "b" ]] -o [[ "a" != "b" ]]; echo $?
echo -ne ""; [[ "a" -eq "b" ]] -o [[ "a" -ne "b" ]]; echo $?
echo -ne ""; (( "a" == "b" )) -o (( "a" != "b" )); echo $?
echo -ne ""; (( "a" -eq "b" )) -o (( "a" -ne "b" )); echo $?

# sem expansão, com aspas, expressões compostas
echo -ne ""; [ "a" == "b"  -o  "a" != "b" ]; echo $?
echo -ne ""; [ "a" -eq "b"  -o  "a" -ne "b" ]; echo $?
echo -ne ""; test "a" == "b" -o  "a" != "b"; echo $?
echo -ne ""; test "a" -eq "b" -o  "a" -ne "b"; echo $?
echo -ne ""; [[ "a" == "b"  -o  "a" != "b" ]]; echo $?
echo -ne ""; [[ "a" -eq "b"  -o  "a" -ne "b" ]]; echo $?
echo -ne ""; (( "a" == "b"  -o  "a" != "b" )); echo $?
echo -ne ""; (( "a" -eq "b"  -o  "a" -ne "b" )); echo $?

# com expansão, sem aspas, expressões simples
echo -ne ""; [ $a == $b ] -o [ $a != $b ]; echo $?
echo -ne ""; [ $a -eq $b ] -o [ $a -ne $b ]; echo $?
echo -ne ""; test $a == $b -o test $a != $b; echo $?
echo -ne ""; test $a -eq $b -o test $a -ne $b; echo $?
echo -ne ""; [[ $a == $b ]] -o [[ $a != $b ]]; echo $?
echo -ne ""; [[ $a -eq $b ]] -o [[ $a -ne $b ]]; echo $?
echo -ne ""; (( $a == $b )) -o (( $a != $b )); echo $?
echo -ne ""; (( $a -eq $b )) -o (( $a -ne $b )); echo $?

# com expansão, sem aspas, expressões compostas
echo -ne ""; [ $a == $b  -o  $a != $b ]; echo $?
echo -ne ""; [ $a -eq $b  -o  $a -ne $b ]; echo $?
echo -ne ""; test $a == $b -o  $a != $b; echo $?
echo -ne ""; test $a -eq $b -o  $a -ne $b; echo $?
echo -ne ""; [[ $a == $b  -o  $a != $b ]]; echo $?
echo -ne ""; [[ $a -eq $b  -o  $a -ne $b ]]; echo $?
echo -ne ""; (( $a == $b  -o  $a != $b )); echo $?
echo -ne ""; (( $a -eq $b  -o  $a -ne $b )); echo $?

# com expansão, com aspas, expressões simples
echo -ne ""; [ "$a" == "$b" ] -o [ "$a" != "$b" ]; echo $?
echo -ne ""; [ "$a" -eq "$b" ] -o [ "$a" -ne "$b" ]; echo $?
echo -ne ""; test "$a" == "$b" -o test "$a" != "$b"; echo $?
echo -ne ""; test "$a" -eq "$b" -o test "$a" -ne "$b"; echo $?
echo -ne ""; [[ "$a" == "$b" ]] -o [[ "$a" != "$b" ]]; echo $?
echo -ne ""; [[ "$a" -eq "$b" ]] -o [[ "$a" -ne "$b" ]]; echo $?
echo -ne ""; (( "$a" == "$b" )) -o (( "$a" != "$b" )); echo $?
echo -ne ""; (( "$a" -eq "$b" )) -o (( "$a" -ne "$b" )); echo $?

# com expansão, com aspas, expressões compostas
echo -ne ""; [ "$a" == "$b"  -o  "$a" != "$b" ]; echo $?
echo -ne ""; [ "$a" -eq "$b"  -o  "$a" -ne "$b" ]; echo $?
echo -ne ""; test "$a" == "$b" -o  "$a" != "$b"; echo $?
echo -ne ""; test "$a" -eq "$b" -o  "$a" -ne "$b"; echo $?
echo -ne ""; [[ "$a" == "$b"  -o  "$a" != "$b" ]]; echo $?
echo -ne ""; [[ "$a" -eq "$b"  -o  "$a" -ne "$b" ]]; echo $?
echo -ne ""; (( "$a" == "$b"  -o  "$a" != "$b" )); echo $?
echo -ne ""; (( "$a" -eq "$b"  -o  "$a" -ne "$b" )); echo $?

echo; echo "NOT : !"
# sem expansão, sem aspas
echo -ne ""; ! [ a == b ]; echo $?
echo -ne ""; ! [ a -eq b ]; echo $?
echo -ne ""; ! test a == b; echo $?
echo -ne ""; ! test a -eq b; echo $?
echo -ne ""; ! [[ a == b ]]; echo $?
echo -ne ""; ! [[ a -eq b ]]; echo $?
echo -ne ""; ! (( a == b )); echo $?
echo -ne ""; ! (( a -eq b )); echo $?
# sem expansão, com aspas
echo -ne ""; ! [ "a" == "b" ]; echo $?
echo -ne ""; ! [ "a" -eq "b" ]; echo $?
echo -ne ""; ! test "a" == "b"; echo $?
echo -ne ""; ! test "a" -eq "b"; echo $?
echo -ne ""; ! [[ "a" == "b" ]]; echo $?
echo -ne ""; ! [[ "a" -eq "b" ]]; echo $?
echo -ne ""; ! (( "a" == "b" )); echo $?
echo -ne ""; ! (( "a" -eq "b" )); echo $?
# com expansão, sem aspas
echo -ne ""; ! [ $a == $b ]; echo $?
echo -ne ""; ! [ $a -eq $b ]; echo $?
echo -ne ""; ! test $a == $b; echo $?
echo -ne ""; ! test $a -eq $b; echo $?
echo -ne ""; ! [[ $a == $b ]]; echo $?
echo -ne ""; ! [[ $a -eq $b ]]; echo $?
echo -ne ""; ! (( $a == $b )); echo $?
echo -ne ""; ! (( $a -eq $b )); echo $?
# com expansão, com aspas
echo -ne ""; ! [ "$a" == "$b" ]; echo $?
echo -ne ""; ! [ "$a" -eq "$b" ]; echo $?
echo -ne ""; ! test "$a" == "$b"; echo $?
echo -ne ""; ! test "$a" -eq "$b"; echo $?
echo -ne ""; ! [[ "$a" == "$b" ]]; echo $?
echo -ne ""; ! [[ "$a" -eq "$b" ]]; echo $?
echo -ne ""; ! (( "$a" == "$b" )); echo $?
echo -ne ""; ! (( "$a" -eq "$b" )); echo $?


#Se o resultado da expressão lógica for falso (0), então (( )) retorna 1 porque no Bash o valor retornado é invertido em relação ao valor lógico (interno da expressão).
#Ou seja, neste caso, tanto a expressão como o valor de retorno resultam em "falso", e apenas as representações numéricas são invertidas.
#Inversamente, se o resultado da expressão lógica for verdadeiro (1), então (( )) retorna 0 porque no Bash o valor retornado é invertido em relação ao valor lógico (interno da expressão).
#Ou seja, neste caso segundo caso, tanto a expressão como o valor de retorno resultam em "verdadeiro", e apenas as representações numéricas são invertidas.



