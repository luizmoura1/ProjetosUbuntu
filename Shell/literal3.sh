#!/usr/bin/env bash
clear
echo 'O P E R A Ç Õ E S  A R I T M É T I C A S'
echo '---------------------------------------------------------------------------'
echo 'Operandos: variáveis definidas pelo usuário em design-time.'
a=2; b=3
echo 'a='$a 'b='$b
echo -e 'formas de imprimir a expressão\t\t\t\tcomando = resultado'
echo '---------------------------------------------------------------------------'
echo 'usando echo'
echo -en "echo -n 'expr \$a % \$b = ';expr \$a % \$b\t\t\t";echo -n 'expr $a % $b = ';expr $a % $b
echo -en 'echo -n "expr \$a % \$b = ";expr $a % $b\t\t';echo -n "expr \$a % \$b = ";expr $a % $b
echo '---------------------------------------------------------------------------'
echo 'usando echo e $(expr)'
echo -en "echo 'expr \$a % \$b = \$(expr \$a % \$b)'\t\t\t";echo 'expr $a % $b = $(expr $a % $b)'	# não expande!
echo -en 'echo "expr \$a % \$b = $(expr $a % $b)"\t\t\t';echo "expr \$a % \$b = $(expr $a % $b)"
echo -en "echo 'expr \$a % \$b = ' \$(expr \$a % \$b)\t\t\t";echo 'expr $a % $b = ' $(expr $a % $b)
echo -en 'echo "expr \$a % \$b = " $(expr $a % $b)\t\t';echo "expr \$a % \$b = " $(expr $a % $b)
echo '---------------------------------------------------------------------------'
echo 'usando printf'
printf "printf 'expr \$a %%%% \$b = ';expr \$a %% \$b\t\t\t";printf 'expr $a %% $b = ';expr $a % $b		# %%
printf 'printf "expr \$a %%%% \$b = ";expr $a %% $b\t\t';printf "expr \$a %% \$b = ";expr $a % $b		# %%
printf "%sprintf '%%sexpr \$a %%%% \$b = ';expr \$a %% \$b\t\t";printf '%sexpr $a %% $b = ';expr $a % $b	# %%
printf '%sprintf "%%sexpr \$a %%%% \$b = ";expr $a %% $b\t\t';printf "%sexpr \$a %% \$b = ";expr $a % $b	# %%
printf "%s\t\t" "printf '%s' 'expr \$a % \$b = ';expr \$a % \$b";printf '%s' 'expr $a % $b = ';expr $a % $b
printf '%s\t\t' 'printf "%s" "expr \$a % \$b = ";expr $a % $b';printf "%s" "expr \$a % \$b = ";expr $a % $b
echo '---------------------------------------------------------------------------'
echo 'usando printf e $(expr)'
printf "printf 'expr \$a %%%% \$b = \$(expr \$a %%%% \$b)\\\n'\t\t";printf 'expr $a %% $b = $(expr $a %% $b)\n'	# não expande! %%
printf 'printf "expr \$a %%%% \$b = $(expr $a %% $b)\\n"\t\t';printf "expr \$a %% \$b = $(expr $a % $b)\n"		# %% 
printf "printf 'expr \$a %%%% \$b = %%d\\\n' \$(expr \$a %% \$b)\t\t";printf 'expr $a %% $b = %d\n' $(expr $a % $b)	# %%
printf 'printf "expr \$a %%%% \$b = %%d\\n" $(expr $a %% $b)\t\t';printf "expr \$a %% \$b = %d\n" $(expr $a % $b)		# %%
printf "printf '%%s%%d\\\n' 'expr \$a %% \$b = ' \$(expr \$a %% \$b)\t";printf '%s%d\n' 'expr $a % $b = ' $(expr $a % $b)	# (%%)
printf 'printf "%%s%%d\\n" "expr \$a %% \$b = " $(expr $a %% $b)\t';printf "%s%d\n" "expr \$a % \$b = " $(expr $a % $b)		# (%%)
echo '---------------------------------------------------------------------------'

