#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  R E L A C I O N A I S - STRINGS'
echo '-----------------------------------------------------------'
echo 'Operandos: literais definidas pelo usuário em design-time.'
echo -n '[ "" = "" ]; echo $? = '; [ "" = "" ]; echo $?		# -eq
echo -n '[ "" == "" ]; echo $? = '; [ "" == "" ]; echo $?		# -eq
echo -n '[ "" != "" ]; echo $? = '; [ "" != "" ]; echo $?		# -ne
echo -n 'test "" = "" ; echo $? = '; test "" = ""; echo $?
echo -n 'test "" == "" ; echo $? = '; test "" == ""; echo $?
echo -n 'test "" != "" ; echo $? = '; test "" != ""; echo $?
echo -n '[[ "" = "" ]]; echo $? = '; [[ "" = "" ]]; echo $?
echo -n '[[ "" == "" ]]; echo $? = '; [[ "" == "" ]]; echo $?
echo -n '[[ "" != "" ]]; echo $? = '; [[ "" != "" ]]; echo $?
echo '-----------------------------------------------------------'
echo -n '[ "" ]; echo $? = '; [ "" ]; echo $?
echo -n '[ -z "" ]; echo $? = '; [ -z "" ]; echo $?
echo -n '[ -n "" ]; echo $? = '; [ -n "" ]; echo $?
echo -n 'test "" ; echo $? = '; test ""; echo $?
echo -n 'test -z "" ; echo $? = '; test -z ""; echo $?
echo -n 'test -n "" ; echo $? = '; test -n ""; echo $?
echo -n '[[ "" ]]; echo $? = '; [[  "" ]]; echo $?
echo -n '[[ -z "" ]]; echo $? = '; [[ -z "" ]]; echo $?
echo -n '[[ -n "" ]]; echo $? = '; [[ -n "" ]]; echo $?
echo '-----------------------------------------------------------'
echo 'Operandos: variáveis definidas pelo usuário em design-time.'
echo 'a="";b=""';a="";b=""						# mundando: a="" > a="" > a=""
echo -n '[ a = b ]; echo $? = '; [ a = b ]; echo $?			# não precisa $?   qui tem 'pano pra manga'!?
echo -n '[ a == b ]; echo $? = '; [ a == b ]; echo $?
echo -n '[ a != b ]; echo $? = '; [ a != b ]; echo $?
echo -n 'test a = b ; echo $? = '; test a = b; echo $?
echo -n 'test a == b ; echo $? = '; test a == b; echo $?
echo -n 'test a != b ; echo $? = '; test a != b; echo $?
echo -n '[[ a = b ]]; echo $? = '; [[ a = b ]]; echo $?
echo -n '[[ a == b ]]; echo $? = '; [[ a == b ]]; echo $?
echo -n '[[ a != b ]]; echo $? = '; [[ a != b ]]; echo $?
echo '-----------------------------------------------------------'
echo -n '[ a ]; echo $? = '; [ a ]; echo $?
echo -n '[ -z a ]; echo $? = '; [ -z a ]; echo $?
echo -n '[ -n a ]; echo $? = '; [ -n a ]; echo $?
echo -n 'test a ; echo $? = '; test a; echo $?
echo -n 'test -z a ; echo $? = '; test -z a; echo $?
echo -n 'test -n a ; echo $? = '; test -n a; echo $?
echo -n '[[ a ]]; echo $? = '; [[ a ]]; echo $?
echo -n '[[ -z a ]]; echo $? = '; [[ -z a ]]; echo $?
echo -n '[[ -n a ]]; echo $? = '; [[ -n a ]]; echo $?
echo '-----------------------------------------------------------'
#echo 'Os operadores >, <, >= e <= não podem ser usados com test nem com [...], independentemente dos operandos'
#echo 'porque seriam interpretados como operadores de redirecionamento (no caso de <= e >=, o "=" seria considerado nome de um arquivo).'
#echo '  forma ((...)), usada para expressões aritméticas, também aceita operações relacionais e não exige espaços. Ela utiliza operadores no estilo C: ==, !=, >, >=, <, <=.'
#echo 'O operador "=" representa atribuição e retornaria false; os operadores com hífen (como -eq, -ge etc.) causaraim erro.'
#echo 'Com ((...)) o valor de strings e variáveis não definidas é considerado zero (0).'
#echo 'Com [[...]], os operadores (com hífen) para inteiros podem ser usados com strings desde que tenham contéudo numérico - se não, seu conteúdo será considerado zero (0).'
#echo 'Se o conteúdo da string for numérico, os operadores poderão ser os mesmos usados para inteiros!!!'
#echo Observe a expansão automática com [[ ]]!  Podemos voltar à discussão anterior, se necessário.

