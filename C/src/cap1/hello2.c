#include <stdio.h>
#define SAUDACAO "Oi, "         // const char SAUDACAO[] = "Oi, ";

int main(int argc, char *argv[]){
    
    char nome[10];

    printf("LITERAL CLASSICA HELLOWORLD:");
    printf("\n\x1B[7mOi, mundo!\x1B[0m\n");
    
    printf("\nVALOR PADRAO DA VARIAVEL ANTES DA INICIALIZACAO:\n");
    printf("nome = %s", nome);
    printf("\n%s%s", SAUDACAO, nome);
    
    printf("\n");
    sprintf(nome,"Ana");
    printf("\nINICIALIZACAO:\n");
    printf("nome = %s\n", nome);
    printf("%s%s\n", SAUDACAO, nome);
    
    sprintf(nome,"Bela");
    printf("\nNOVA ATRIBUICAO:\n");
    printf("nome = %s\n", nome);
    printf("%s%s\n", SAUDACAO, nome);
    
    printf("\nENTRADA INTERATIVA:\n");
    printf("Digite seu nome: ");
    scanf("%s", nome);
    printf("%s%s!\n", SAUDACAO, nome);

    printf("\nENTRADA VIA ARGUMENTO:\n");
    printf("%s%s\n", SAUDACAO, argv[1]);
    
    printf("\nRESUMO:\n");
    printf("Constante:\tSAUDACAO = '%s'", SAUDACAO);
    printf("\nVariavel:\tnome = '%s'", nome);
    printf("\nConcatenacao:\t'%s%s'", SAUDACAO, nome);
    printf("\n\nMensagem com atribuicao da variavel\n");
    printf("nome:\t\t%s%s\n", SAUDACAO, nome);
    printf("argv[1]:\t%s%s\n", SAUDACAO, argv[1]);
    	
    return 0;
}
