/* cd ~/Documentos/ProjetosUbuntu/C/ 
nano src/prog1.c  (ou nano | prog1.c |  em caso de omissão, nome é solicitado com Ctrl+O)
gcc src/prog1.c | -o bin/prog1 |   em caso de omissão, a.out é gerado automaticamente em ~/Documentos/ProjetosUbuntu/C/
./bin/prog1 */

// Programa: Manipulacao de Números - Capitulo 2 (C)
// Ambiente: Ubuntu - gcc / nano

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
    const int N1 = 9;
    int n1;
    
    printf("LITERAL NUMERICA:\n");
    printf("%d\n", 41);
        
    printf("\n%s", "DECLARACAO DE VARIAVEL -> VALOR INDEFINIDO:\n");
    printf("%s%d\n", "n1 = ", n1);
     
    n1 = 7;
    printf("\nINICIALIZACAO:\n");
    printf("n1 = %d\n", n1);
    
    n1 = 10;
    printf("\nNOVA ATRIBUICAO:\n");
    printf("n1 = %d\n", n1);
    
    printf("\nENTRADA VIA ARGUMENTO:\n");
    printf("n1 = %d\n", (argc > 1) ? atoi(argv[1]) : 0);


    printf("\nENTRADA INTERATIVA:\n");
    printf("Digite um valor: ");
    scanf("%d", &n1);
    printf("n1 = %d\n", n1);
    
    printf("\nOPERACOES ARITMETICAS:\n");
    printf("n1 + N1 = %d\n", n1 + N1);
    printf("n1 - N1 = %d\n", n1 - N1);
    printf("n1 * N1 = %d\n", n1 * N1);
    printf("n1 / N1 = %d\n", n1 / N1);
    printf("n1 %% N1 = %d\n", n1 % N1);
    printf("\n");   	
    return 0;
}
