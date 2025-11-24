#include <stdio.h>
int main(){
  // printf(); // error: too few arguments to function ‘printf’ 
  // printf(""); // warning: zero-length gnu_printf format string [-Wformat-zero-length]
  printf("%s", "");
  printf(" ");
  printf("\n");
  return 0;
}
