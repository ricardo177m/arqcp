#include <stdio.h>
#include "asm.h"

long num = 0;

int main(void)
{
  printf("Valor num:");
  scanf("%ld", &num);

  int n = steps();

  printf("steps = %d\n", n);

  return 0;
}
