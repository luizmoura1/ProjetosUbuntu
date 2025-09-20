#!/usr/bin/env bash
clear
echo 'O P E R A Ç Õ E S  A R I T M É T I C A S'
echo '-----------------------------------------------------------------'
echo 'Operandos: literais definidas pelo usuário em design-time.'
echo -e 'forma de expressar\t\tcomando\t\t\tresultado'
echo '-----------------------------------------------------------------'
echo 'usando echo'
echo -en 'echo -en "expr 2 + 3 = ";\texpr 2 + 3\t\t';expr 2 + 3
echo -en "echo -en 'expr 2 + 3 = ';\texpr 2 + 3\t\t";expr 2 + 3
echo '-----------------------------------------------------------------'
echo 'usando echo e $(expr)'
echo -en 'echo -en "\$(expr 2 + 3) = ";\techo $(expr 2 + 3)\t';echo $(expr 2 + 3)
echo -en "echo -en '\$(expr 2 + 3) = ';\techo \$(expr 2 + 3)\t";echo $(expr 2 + 3)
echo '-----------------------------------------------------------------'
echo 'usando printf'
printf 'printf "expr 2 + 3 = ";\t\texpr 2 + 3\t\t';expr 2 + 3
printf "printf 'expr 2 + 3 = ';\t\texpr 2 + 3\t\t";expr 2 + 3
printf '%s\t\t' 'printf "%s" "expr 2 + 3 = ";    expr 2 + 3';expr 2 + 3
printf "%s\t\t" "printf '%s' 'expr 2 + 3 = ';    expr 2 + 3";expr 2 + 3
printf '%sprintf "%%sexpr 2 + 3 = ";\texpr 2 + 3\t\t';expr 2 + 3
printf "%sprintf '%%sexpr 2 + 3 = ';\texpr 2 + 3\t\t";expr 2 + 3
echo '-----------------------------------------------------------------'
echo 'usando printf e $(expr)'
printf 'printf "\$(expr 2 + 3) = ";\tprintf $(expr 2 + 3)\t';printf $(expr 2 + 3);printf '\n'
printf "printf '\$(expr 2 + 3) = ';\tprintf \$(expr 2 + 3)\t";printf $(expr 2 + 3);printf "\n"
printf '%s\t' 'printf "%s" "\$(expr 2 + 3) = ";printf $(expr 2 + 3)';printf $(expr 2 + 3);printf '\n'
printf "%s\t" "printf '%s' '\$(expr 2 + 3) = '; printf \$(expr 2 + 3)";printf $(expr 2 + 3);printf "\n"
printf '%sprintf "%%s\$(expr 2 + 3) = ";\tprintf $(expr 2 + 3)\t';printf $(expr 2 + 3);printf '%s\n'
printf "%sprintf '%%s\$(expr 2 + 3) = ';\tprintf \$(expr 2 + 3)\t";printf $(expr 2 + 3);printf "%s\n"
echo '-----------------------------------------------------------------'

printf "printf '%%s%%d\\\n' 'expr 2 %% 3 = ' \$(expr 2 %% 3)\t"
printf '%s%d\n' 'expr 2 % 3 = ' $(expr 2 % 3)




