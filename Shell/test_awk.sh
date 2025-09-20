clear
echo 'Tentativas de invocação direta com BEGIN'
echo 'primeiro caractere: dígito'
s=1A
echo "s=$s"
# O que nós queremos?
#Nós queremos que awk 'BEGIN{print uma_coisa}', awk 'BEGIN{var=outra_coisa; print uma_coisa}' e awk -v var=outra_coisa 'BEGIN{print alguma_coisa}' 
#imprimam o conteúdo da variável, isto é, 1A
#Deve haver 3 colunas na mesma linha
#A primeira coluna mostra o comando - que, se copiado e colado no terminal, imprime 1A
#A segunda coluna mostra o comando já com a variável expandida - ou seja, um literal a ser tratado pelo awk
#A terceira coluna mostra o resultado, a saída, isto é, imprime 1A
echo '---------------------------------------------------------------------------------------------'


