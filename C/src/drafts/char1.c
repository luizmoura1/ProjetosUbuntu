#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main(){
    srand((unsigned) time(NULL));
    unsigned char c = (rand() % (0x7E - 0x21 + 1)) + 0x21;
    printf("Caractere sorteado: %c\n", c);
    
    printf("%s", "  ");
    for(int i = 0; i < 5; i++) {
        printf("%c", c);
    }
    printf("\n");
    
    
    
    //printf("%s\n", "  \x21\x21\x21\x21\x21");
    //printf("%s\n", " \x21     \x21  \x21\x21\x21\x21  \x21        \x21\x21   \x21    \x21  \x21\x21\x21\x21  \x21\x21\x21\x21\x21\x21");
    //printf("%s\n", " \x21       \x21    \x21 \x21       \x21  \x21  \x21\x21   \x21 \x21    \x21 \x21");
    //printf("%s\n", "  \x21\x21\x21\x21\x21  \x21    \x21 \x21      \x21    \x21 \x21 \x21  \x21 \x21      \x21\x21\x21\x21\x21");
    //printf("%s\n", "       \x21 \x21    \x21 \x21      \x21\x21\x21\x21\x21\x21 \x21  \x21 \x21 \x21  \x21\x21\x21 \x21");
    //printf("%s\n", " \x21     \x21 \x21    \x21 \x21      \x21    \x21 \x21   \x21\x21 \x21    \x21 \x21");
    //printf("%s\n", "  \x21\x21\x21\x21\x21   \x21\x21\x21\x21  \x21\x21\x21\x21\x21\x21 \x21    \x21 \x21    \x21  \x21\x21\x21\x21  \x21\x21\x21\x21\x21\x21 ");	
    return 0;
}
