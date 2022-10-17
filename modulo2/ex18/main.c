#include <stdio.h>
#include "asm.h"

int i = 0;

int main(void)
{
  printf("Valor num:");
  scanf("%d", &i);

  int n = sum();

  printf("sum = %d\n", n);

  return 0;
}
