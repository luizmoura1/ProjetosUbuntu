#!/usr/bin/env bash
# printf.sh - Demonstração de uso do comando printf com variáveis, opções e escapes
# Autor: Luiz <lcmoura@yahoo.com>
# Histórico: 
# v1.0 12/06/2025, Luiz: - Tradução do echo.sh para printf

printf "%s\n" "Texto utilizando literais"
printf "%s\n" "printf \"Olá mundo\""
printf "----------\n"
printf "%s\n" "Olá mundo"
printf "\n"

s1=Olá
s2=mundo

printf "%s\n" "Texto utilizando variáveis"
printf "%s\n" "s1=Olá"
printf "%s\n" "s2=mundo"
printf "%s\n" "printf \"\\$s1 \\$s2\""
printf "----------\n"
printf "%s\n" "$s1 $s2"
printf "\n"

printf "%s\n" "O comando printf não inclui nova linha automaticamente:"
printf "%s\n" "printf \"\\$s1\""
printf "%s\n" "printf \"\\$s2\""
printf "--------------------\n"
printf "%s" "$s1"
printf "%s\n" "$s2"
printf "\n"

printf "%s\n" "Uso da interpretação de sequências de escape com printf:"

# Nota sobre compatibilidade:
# Algumas sequências de escape como \a, \e, \v, \f, \c podem ter efeitos diferentes ou não funcionar
# em todos os terminais ou em diferentes shells.

printf "\n"
printf "%s\n" "\\a alerta com som de sino, sem efeito visual"
printf "%s\n" "printf \"\\$s1\\a\\$s2\""
printf "----------\n"
printf "%s\n" "$s1\a$s2"

printf "\n%s\n" "\\b retrocede um espaço, sobrepondo caractere anterior"
printf "%s\n" "printf \"\\$s1\\b\\$s2\""
printf "----------\n"
printf "%s\n" "$s1$s2"

printf "\n%s\n" "\\c cancela impressão de caracteres seguintes"
printf "%s\n" "printf \"\\$s1\\c\\$s2\""
printf "----------\n"
printf "%s\n" "$s1\c$s2"

printf "\n%s\n" "\\e escape ANSI, pode sobrepor caractere seguinte"
printf "%s\n" "printf \"\\$s1\\e\\$s2\""
printf "----------\n"
printf "%s\n" "$s1\e$s2"

printf "\n%s\n" "\\f avança formulário (sem retorno à coluna 1)"
printf "%s\n" "printf \"\\$s1\\f\\$s2\""
printf "----------\n"
printf "%s\n" "$s1$s2"

printf "\n%s\n" "\\n nova linha"
printf "%s\n" "printf \"\\$s1\\n\\$s2\""
printf "----------\n"
printf "%s\n" "$s1
$s2"

printf "\n%s\n" "\\r retorno de carro (volta ao início da linha)"
printf "%s\n" "printf \"\\$s1\\r\\$s2\""
printf "----------\n"
printf "%s\n" "$s1
$s2"

printf "\n%s\n" "\\t tabulação horizontal"
printf "%s\n" "printf \"\\$s1\\t\\$s2\""
printf "----------\n"
printf "%s\n" "$s1	$s2"

printf "\n%s\n" "\\v tabulação vertical"
printf "%s\n" "printf \"\\$s1\\v\\$s2\""
printf "----------\n"
printf "%s\n" "$s1$s2"

printf "\n%s\n" "\\\" aspas duplas"
printf "%s\n" "printf \"\\$s1\\\"\\$s2\""
printf "----------\n"
printf "%s\n" "$s1"""$s2"

printf "\n%s\n" "\\\' aspas simples"
printf "%s\n" "printf \"\\$s1\\\'\\$s2\""
printf "----------\n"
printf "%s\n" "$s1'$s2"

printf "\n%s\n" "\\\\ barra invertida"
printf "%s\n" "printf \"\\$s1\\\\\\$s2\""
printf "----------\n"
printf "%s\n" "$s1\$s2"

