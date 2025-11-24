/* 
Comandos:
 cd ~/Documentos/ProjetosUbuntu/C/
 nano src/prog.c  (ou nano | prog.c |  em caso de omissão, nome é solicitado com Ctrl+O)
 gcc src/prog.c | -o bin/prog |   em caso de omissão, a.out é gerado automaticamente em ~/Documentos/ProjetosUbuntu/C/
 ./bin/prog argv1
 */ 
// #define SAUDACAO "OI, "  <- lembrança para depois 

//Programa: Manipulacao de Texto - Capitulo 1 (C)
//Ambiente: Ubuntu - nano, gcc

#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]){
    const char SAUDACAO[] = "Oi, ";
    char nome[10];			// char nome[10] = ""; | depois nome[0] = '\0';
 
    printf("\x1b[32mLITERAIS, CONSTANTE SAUDACAO e VARIAVEL nome\x1b[0m");

    printf("\n1 - LITERAL CLASSICO HELLOWORLD:\n");
    printf("\x1b[7m%s\x1B[0m", "Oi, mundo!");

    printf("\n\n\x1b[32m============ ATRIBUICOES EM DESIGN-TIME ============\x1b[0m");
    printf("\n2 - VALOR PADRAO DA VARIAVEL ANTES DA INICIALIZACAO:\n");
    printf("nome = \"%s\"", nome);		// variável declarada, mas ainda não inicializada (conteúdo indefinido)
    printf("\n%s%s", SAUDACAO, nome);
    
    sprintf(nome,"Ana");
    // snprintf(nome, sizeof nome, "Ana");
    // memcpy(nome, "Ana", sizeof "Ana" | 4 | sizeof nome - 1);  nome[sizeof nome - 1] = '\0';  // com #include <string.h>
    // strcpy(nome, "Ana");                                                                     // com #include <string.h>
    printf("\n\n3 - INICIALIZACAO:\n");
    printf("nome = \"%s\"\n", nome);
    printf("%s%s\n", SAUDACAO, nome);
    
    sprintf(nome,"Bela");
    printf("\n4 -NOVA ATRIBUICAO:\n");
    printf("nome = \"%s\"\n", nome);
    printf("%s%s\n", SAUDACAO, nome);
    
    printf("\n\x1b[32m========== ATRIBUICOES EM INVOCATION-TIME ==========\x1b[0m");
    printf("\n5 - ENTRADA POR ARGUMENTO:\n");
    printf("%s%s\n", SAUDACAO, argv[1]);  // argv[1] |!= NULL| &&  | argv[1] -> (argv[1] ? argv[1] : "")
    //sprintf(nome, "%s", argv[1]);	// snprintf(nome, sizeof nome, "%s", argv[1]);
    //printf("%s%s\n", SAUDACAO, nome);

    printf("\n\x1b[32m============== ATRIBUICOES EM RUNTIME ==============\x1b[0m");
    printf("\n6 - ENTRADA POR INTERACAO:\n");
    printf("Digite seu nome: ");
    scanf("%s", nome);		// scanf("%9s", nome);   // 9 = tamanho - 1 (deixa espaço para o '\0') | fgets(nome, sizeof nome, stdin);
    printf("%s%s\n", SAUDACAO, nome);

    printf("\n\x1b[32m====================== RESUMO ======================\x1b[0m");
    printf("\nConstante SAUDACAO:\t'%s'", SAUDACAO);
    printf("\nVariavel nome:\t\t'%s'", nome);
    printf("\nConcatenacao:\t\t'%s%s'", SAUDACAO, nome);
    printf("\nMensagem com atribuicao da variavel\n");
    printf("nome:\t\t%s%s\n", SAUDACAO, nome);
    printf("argv[1]:\t%s%s\n", SAUDACAO, argv[1]);	// argv[1] |!= NULL| &&  | argv[1] -> (argv[1] ? argv[1] : "")
    
    return 0;
}

