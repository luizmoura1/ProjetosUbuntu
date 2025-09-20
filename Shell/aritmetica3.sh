#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  A R I T M É T I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos: literais definidas pelo usuário em design-time.'
echo -n "echo 2+3 | bc = "; echo 2+3 | bc
echo -n "echo 2-3 | bc = "; echo 2-3 | bc
echo -n "echo 2*3 | bc = "; echo 2*3 | bc
echo -n "echo 'scale=4;2/3' | bc = "; echo 'scale=4;2/3' | bc
echo -n "echo 2%3 | bc = "; echo 2%3 | bc
echo -n "echo 2^3 | bc = "; echo 2^3 | bc
echo '-----------------------------------------------------------'
echo -n "bc <<< 2/3 = "; bc <<< 2/3
echo -n "bc <<< '2/3' = "; bc <<< '2/3'
echo -n 'bc <<< "2/3" = '; bc <<< "2/3"
echo -n "bc <<< 'scale=4;2/3' = "; bc <<< 'scale=4;2/3'
echo -n 'bc <<< "scale=4;2/3" = '; bc <<< "scale=4;2/3"
echo '-----------------------------------------------------------'
echo 'Operandos: variáveis definidas pelo usuário em design-time.'
a=2; b=3
echo 'a='$a; echo 'b='$b
echo -n "echo "\"\$a+\$b\"" | bc = "; echo "$a+$b" | bc
echo -n "echo "\"\$a-\$b\"" | bc = "; echo "$a-$b" | bc
echo -n "echo "\"\$a*\$b\"" | bc = "; echo "$a*$b" | bc
echo -n "echo \"scale=4;\$a/\$b\" | bc = "; echo "scale=4;$a/$b" | bc
echo -n "echo "\"\$a%\$b\"" | bc = "; echo "$a%$b" | bc
echo -n "echo "\"\$a^\$b\"" | bc = " ; echo "$a^$b" | bc
echo '-----------------------------------------------------------'
echo -n "bc <<< \$a/\$b = "; bc <<< $a/$b
echo -n 'bc <<< "$a/$b" = '; bc <<< "$a/$b"
echo -n 'bc <<< "scale=4;$a/$b" = '; bc <<< "scale=4;$a/$b"
echo '-----------------------------------------------------------'
#echo 'Observações:'
#echo 'A potenciação requer ^ em vez de **.'
#echo 'Para obter 0 antes da vírgula (ex: 0.66), use: result="0$result".'
#echo 'Com literais, aspas simples ou duplas funcionam.'
#echo 'Com variáveis, use aspas duplas para que elas sejam expandidas.'
#echo 'Aspas também são necessárias se houver espaços entre operandos e operadores.'
#echo 'Para divisões com casas decimais, use scale=n (n é o número de casas decimais desejado), entre aspas.'
#echo 'bc <<< expressão é equivalente a echo expressão | bc.'
#echo '<<< (here-string) envia uma string diretamente à entrada padrão (stdin) de um comando.'
#echo '| (pipe) envia a saída de um comando como entrada de outro.'



