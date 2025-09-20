#!/usr/bin/env bash
# echo.sh - Demonstração de uso do comando echo com variáveis, opções e escapes
# Autor:	Luiz <lcmoura@yahoo.com>
# Histórico:	
# v1.0 10/06/2025, Luiz: - Versão inicial 
echo Texto utilizando literais
echo echo Olá mundo
echo ----------
echo Olá mundo
echo
s1=Olá
s2=mundo
echo Texto utilizando variáveis
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
echo A opção -n suprime a nova linha ao final da saída:
echo 'echo -n $s1'
echo 'echo $s2'
echo --------------------
echo -n $s1
echo $s2
echo; echo Uso da opção -e para interpretar sequências de escape:
echo; echo \\a alerta com som de sino, sem efeito visual
echo echo -e \$s1\"\\a\"\$s2
echo --------------------
echo -e $s1"\a"$s2
echo; echo \\b backspace, retrocede um espaço sobrepondo caractere anterior
echo echo -e \$s1\"\\b\"\$s2
echo --------------------
echo -e $s1"\b"$s2
echo; echo \\c cancela a impressão de caracteres seguintes, inclusive nova linha
echo echo -e \$s1\"\\c\"\$s2
echo --------------------
echo -e $s1"\c"$s2
echo
echo; echo \\e "esc(apa)" ou avança um espaço sobrepondo caractere seguinte
echo echo -e \$s1\"\\e\"\$s2
echo --------------------
echo -e $s1"\e"$s2
echo; echo \\f avança ou alimenta formulário, sem volta à primeira coluna
echo echo -e \$s1\"\\f\"\$s2
echo --------------------
echo -e $s1"\f"$s2
echo; echo \\n nova linha
echo echo -e \$s1\"\\n\"\$s2
echo --------------------
echo -e $s1"\n"$s2
echo; echo \\r retorna carro, cursor volta ao início da linha
echo echo -e \$s1\"\\r\"\$s2
echo --------------------
echo -e $s1"\r"$s2
echo; echo \\t tabulação horizontal
echo echo -e \$s1\"\\t\"\$s2
echo --------------------
echo -e $s1"\t"$s2
echo; echo \\v tabulação vertical
echo echo -e \$s1\"\\v\"\$s2
echo --------------------
echo -e $s1"\v"$s2
echo; echo \\\" escapa aspas duplas \"
echo echo -e \$s1\\\"\$s2	# echo -e \$s1"\\\""\$s2
echo --------------------
echo -e $s1\"$s2
echo; echo \\\' escapa aspas simples \'
echo echo -e \$s1\\\'\$s2	# echo -e \$s1"\\\'"\$s2
echo --------------------
echo -e $s1\'$s2
echo; echo \\\\ escapa barra invertida \\
echo echo -e \$s1\\\\\$s2
echo --------------------
echo -e $s1\\$s2
echo; echo Uso da opção -E para não interpretar sequências de escape
echo echo -E \$s1\"\\\a\\b\\c\\e\\f\\n\\r\\t\\v\"\\\"\\\'\\\\\$s2
echo --------------------
echo -E $s1"\a\b\c\e\f\n\r\t\v"\"\'\\$s2
echo

