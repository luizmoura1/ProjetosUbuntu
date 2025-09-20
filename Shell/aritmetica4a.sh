#!/usr/bin/env bash
echo 'O P E R A Ç Õ E S  A R I T M É T I C A S'
echo '-----------------------------------------------------------'
echo 'Operandos: literais definidas pelo usuário em design-time.'
echo -n "echo '2 3 + p' | dc = "; echo '2 3 + p' | dc
echo -n "echo '2 3 - p' | dc = "; echo '2 3 - p' | dc
echo -n "echo '2 3 * p' | dc = "; echo '2 3 * p' | dc
echo -n "echo '4 k 2 3 / p' | dc = "; echo '4 k 2 3 / p' | dc
echo -n "echo '2 3 % p' | dc = "; echo '2 3 % p' | dc
echo -n "echo '2 3 ^ p' | dc = "; echo '2 3 ^ p' | dc
echo '-----------------------------------------------------------'
echo -n "dc <<< '2 3 / p' = "; dc <<< '2 3 / p'
echo -n 'dc <<< "2 3 / p" = '; dc <<< "2 3 / p"
echo -n "dc <<< '4 k 2 3 / p' = "; dc <<< '4 k 2 3 / p'
echo -n 'dc <<< "4 k 2 3 / p" = '; dc <<< "4 k 2 3 / p"
echo '-----------------------------------------------------------'
echo 'Operandos: variáveis definidas pelo usuário em design-time.'
a=2; b=3
echo 'a='$a; echo 'b='$b
echo -n "echo \"\$a \$b + p\" | dc = "; echo "$a $b + p" | dc
echo -n "echo \"\$a \$b - p\" | dc = "; echo "$a $b - p" | dc
echo -n "echo \"\$a \$b * p\" | dc = "; echo "$a $b * p" | dc
echo -n "echo \"4 k \$a \$b / p\" | dc = "; echo "4 k $a $b / p" | dc
echo -n "echo \"\$a \$b % p\" | dc = "; echo "$a $b % p" | dc
echo -n "echo \"\$a \$b ^ p\" | dc = "; echo "$a $b ^ p" | dc
echo '-----------------------------------------------------------'
echo -n 'dc <<< "$a $b / p" = '; dc <<< "$a $b / p"
echo -n 'dc <<< "4 k $a $b / p" = '; dc <<< "4 k $a $b / p"
echo '-----------------------------------------------------------'
#echo 'Observações:'
#echo 'dc (desk calculator) usa notação polonesa reversa (RPN): operandos antes do operador.'
#echo 'p imprime o topo da pilha (resultado).'
#echo 'Sempre deve haver espaços entre operandos e operadores.'
#echo 'Para divisões com casas decimais, use n k (n = número de casas desejado), entre aspas.'
#echo 'Como em bc, a potenciação usa ^ em vez de **.'
#echo 'Para exibir 0 antes da vírgula (ex: 0.66), use: result="0$result".'
#echo 'Com literais, use aspas simples ou duplas.'
#echo 'Com variáveis, use aspas duplas para que sejam expandidas.'
#echo 'dc <<< expressão equivale a echo expressão | dc.'
#echo '<<< (here-string) envia uma string diretamente à entrada padrão (stdin).'
#echo '| (pipe) envia a saída de um comando como entrada de outro.'

