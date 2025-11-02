#include <stdio.h>
// Não imprime \xDC, \xDB e \xDF
int main(){
    printf("\n\t\x5F\x5F\x5B\x23\x23\x5D\x5F\x5F");
    printf("\n\t\x5EO\x2A\x2A\x2A\x2AO\x5E\n\n");
    return 0;
}

