/* 
Comandos:
 cd ~/Documentos/ProjetosUbuntu/C/
 nano src/prog1.c  (ou nano | prog1.c |  em caso de omissão, nome é solicitado com Ctrl+O)
 gcc src/prog1.c | -o bin/prog1 |   em caso de omissão, a.out é gerado automaticamente em ~/Documentos/ProjetosUbuntu/C/
 ./bin/prog1 argv1
 */ 
// #define SAUDACAO "OI, "  <- lembrança para depois 

//Programa: Manipulacao de Texto - Capitulo 1 (C)
//Ambiente: Ubuntu - nano, gcc

#include <stdio.h>

int main(int argc, char *argv[]){
    const char SAUDACAO[] = "Oi, ";
    char nome[10];

    printf("LITERAL CLASSICA HELLOWORLD:");
    printf("\n\x1B[7m%s\x1B[0m\n", "Oi, mundo!");
    
    printf("\n%s", "VALOR PADRAO DA VARIAVEL ANTES DA INICIALIZACAO:");
    printf("\n%s%s", "nome = ", nome);
    printf("\n%s%s", SAUDACAO, nome);
    
    sprintf(nome,"Ana");
    printf("\n\nINICIALIZACAO:\n");
    printf("nome = %s\n", nome);
    printf("%s%s\n", SAUDACAO, nome);
    
    sprintf(nome,"Bela");
    printf("\nNOVA ATRIBUICAO:\n");
    printf("nome = %s\n", nome);
    printf("%s%s\n", SAUDACAO, nome);
    
    printf("\nENTRADA INTERATIVA:\n");
    printf("Digite seu nome: ");
    scanf("%s", nome);
    printf("%s%s\n", SAUDACAO, nome);

    printf("\nENTRADA VIA ARGUMENTO:\n");
    printf("%s%s\n", SAUDACAO, argv[1]);
    
    printf("\nRESUMO:\n");
    printf("Constante:\tSAUDACAO = %s\n", SAUDACAO);
    printf("Variavel:\tnome = %s\n", nome);
    printf("Concatenacao:\t%s%s\n", SAUDACAO, nome);
    printf("\nMensagem com atribuicao da variavel\n");
    printf("nome:\t\t%s%s\n", SAUDACAO, nome);
    printf("argv[1]:\t%s%s\n", SAUDACAO, argv[1]);		
    	
    return 0;
}
