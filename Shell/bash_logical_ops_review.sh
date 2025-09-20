#!/usr/bin/env bash
# Revisado: Operações Lógicas com variáveis nulas (a=; b=)
echo 'O P E R A Ç Õ E S  L Ó G I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos variáveis definidos em design-time com valor nulo.'
a=; b=; echo "a=\$a"; echo "b=\$b"

echo; echo "AND : &&"
# sem expansão, sem aspas, expressões simples
[ a == b ] && [ a != b ]; echo $?       # 0
[[ a == b ]] && [[ a != b ]]; echo $?   # 0
[[ a -eq b ]] && [[ a -ne b ]]; echo $? # 0 (tolerado em [[ ]])
(( a == b )) && (( a != b )); echo $?   # 1 (sem erro)

# sem expansão, sem aspas, expressões compostas
[[ a == b && a != b ]]; echo $?         # 0
[[ a -eq b && a -ne b ]]; echo $?       # 0
(( a == b && a != b )); echo $?         # 1 (sem erro)

# sem expansão, com aspas, expressões simples
[ "a" == "b" ] && [ "a" != "b" ]; echo $?      # 0
[[ "a" == "b" ]] && [[ "a" != "b" ]]; echo $? # 0
[[ "a" -eq "b" ]] && [[ "a" -ne "b" ]]; echo $? # 0 (tolerado)
(( "a" == "b" )) && (( "a" != "b" )); echo $?   # 1

# sem expansão, com aspas, expressões compostas
[[ "a" == "b" && "a" != "b" ]]; echo $?         # 0
[[ "a" -eq "b" && "a" -ne "b" ]]; echo $?       # 0
(( "a" -eq "b" && "a" -ne "b" )); echo $?       # 1

# com expansão, com aspas, expressões simples
[ "$a" == "$b" ] && [ "$a" != "$b" ]; echo $?      # 1
[[ "$a" == "$b" ]] && [[ "$a" != "$b" ]]; echo $? # 1
[[ "$a" -eq "$b" ]] && [[ "$a" -ne "$b" ]]; echo $? # 1
(( "$a" -eq "$b" )) && (( "$a" -ne "$b" )); echo $? # 1

# com expansão, com aspas, expressões compostas
[[ "$a" == "$b" && "$a" != "$b" ]]; echo $?         # 1
[[ "$a" -eq "$b" && "$a" -ne "$b" ]]; echo $?       # 1
(( "$a" -eq "$b" && "$a" -ne "$b" )); echo $?       # 1

echo; echo "OR : ||"
# sem expansão, sem aspas, expressões simples
[ a == b ] || [ a != b ]; echo $?        # 0
[[ a == b ]] || [[ a != b ]]; echo $?    # 0
[[ a -eq b ]] || [[ a -ne b ]]; echo $?  # 0
(( a == b )) || (( a != b )); echo $?    # 0

# sem expansão, sem aspas, expressões compostas
[[ a == b || a != b ]]; echo $?          # 0
[[ a -eq b || a -ne b ]]; echo $?        # 0
(( a == b || a != b )); echo $?          # 0

# sem expansão, com aspas, expressões simples
[ "a" == "b" ] || [ "a" != "b" ]; echo $?      # 0
[[ "a" == "b" ]] || [[ "a" != "b" ]]; echo $? # 0
[[ "a" -eq "b" ]] || [[ "a" -ne "b" ]]; echo $? # 0
(( "a" == "b" )) || (( "a" != "b" )); echo $?   # 0

# sem expansão, com aspas, expressões compostas
[[ "a" == "b" || "a" != "b" ]]; echo $?         # 0
[[ "a" -eq "b" || "a" -ne "b" ]]; echo $?       # 0
(( "a" -eq "b" || "a" -ne "b" )); echo $?       # 1

# com expansão, com aspas, expressões simples
[ "$a" == "$b" ] || [ "$a" != "$b" ]; echo $?      # 0
[[ "$a" == "$b" ]] || [[ "$a" != "$b" ]]; echo $? # 0
[[ "$a" -eq "$b" ]] || [[ "$a" -ne "$b" ]]; echo $? # 0
(( "$a" -eq "$b" )) || (( "$a" -ne "$b" )); echo $? # 1

# com expansão, com aspas, expressões compostas
[[ "$a" == "$b" || "$a" != "$b" ]]; echo $?         # 0
[[ "$a" -eq "$b" || "$a" -ne "$b" ]]; echo $?       # 0
(( "$a" -eq "$b" || "$a" -ne "$b" )); echo $?       # 1

echo; echo "NOT : !"
# sem expansão, sem aspas
! [ a == b ]; echo $?          # 0
! [[ a == b ]]; echo $?        # 0
! [[ a -eq b ]]; echo $?       # 1
! (( a == b )); echo $?        # 1

# sem expansão, com aspas
! [ "a" == "b" ]; echo $?      # 0
! [[ "a" == "b" ]]; echo $?   # 0
! [[ "a" -eq "b" ]]; echo $?  # 1
! (( "a" == "b" )); echo $?   # 1

# com expansão, com aspas
! [ "$a" == "$b" ]; echo $?      # 1
! [[ "$a" == "$b" ]]; echo $?   # 1
! [[ "$a" -eq "$b" ]]; echo $?  # 1
! (( "$a" -eq "$b" )); echo $?   # 0
