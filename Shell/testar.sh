#!/usr/bin/env bash
# echoprintf.sh - ilustra os comandos de saída para tela
# Autor:	Luiz <lcmoura@yahoo.com>
# Histórico:	
# v1.0 10/06/2025, Luiz: - Versão inicial 
echo Texto com literais
echo echo Olá mundo
echo ----------
echo Olá mundo
echo
s1=Olá
s2=mundo
echo Texto com variáveis
echo s1=Olá
echo s2=mundo
echo echo '$s1 $s2'
echo ----------
echo $s1 $s2
echo
echo O comando echo inclui automaticamente nova linha após o último argumento:
echo 'echo $s1'
echo 'echo $s2'
echo --------------------
echo $s1
echo $s2
echo
echo A opção -n possibilita o escape da nova linha:
echo 'echo -n $s1'
echo 'echo $s2'
echo --------------------
echo -n $s1
echo $s2
echo
echo Uso de -e com escapes em texto encapsulado por aspas duplas:
echo echo -e \$s1\"\\a\"\$s2
echo --------------------
echo -e $s1"\a"$s2
echo
echo echo -e \$s1\"\\b\"\$s2
echo --------------------
echo -e $s1"\b"$s2
echo
echo echo -e \$s1\"\\c\"\$s2
echo --------------------
echo -e $s1"\c"$s2
echo
echo
echo echo -e \$s1\"\\e\"\$s2
echo --------------------
echo -e $s1"\e"$s2
echo
echo echo -e \$s1\"\\f\"\$s2
echo --------------------
echo -e $s1"\f"$s2
echo
echo echo -e \$s1\"\\n\"\$s2
echo --------------------
echo -e $s1"\n"$s2
echo
echo echo -e \$s1\"\\r\"\$s2
echo --------------------
echo -e $s1"\r"$s2
echo
echo echo -e \$s1\"\\t\"\$s2
echo --------------------
echo -e $s1"\t"$s2
echo
echo echo -e \$s1\"\\v\"\$s2
echo --------------------
echo -e $s1"\v"$s2
echo
echo Dois casos interessantes em que os escapes não precisam estar entre aspas:
echo echo -e \$s1\\\\\$s2
echo --------------------
echo -e $s1\\$s2
echo
echo echo -e \$s1"\\\""\$s2
echo --------------------
echo -e $s1\"$s2
echo

