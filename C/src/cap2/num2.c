/*
Programa: Manipulacao de Números - Capitulo 2 (C)
Ambiente: Ubuntu - gcc / nano
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(int argc, char *argv[]){
    int n1, palpite;
    srand(time(NULL));                  // inicializa o gerador com o tempo atual
    const int N1 = (rand() % 9) + 1;    /* número aleatório de 1 a 9 */
    
    printf("LITERAL NUMERICA:\n");
    printf("%d\n", 41);
        
    printf("\nDECLARACAO DE VARIAVEL -> VALOR INDEFINIDO:\n");
    printf("n1 = %d\n", n1);
     
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

    printf("\nDESAFIO:\n");
    printf("Adivinhe o valor da constante N1 (1-9): ");
    scanf("%d", &palpite);
    printf("%s N1 = %d.\n", (palpite == N1) ? "Acertou." : "Nao foi dessa vez.", N1);

    return 0;
}
