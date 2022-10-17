#include <stdio.h>
#include "asm.h"

int A = 0, B = 0;

int main(void)
{
  printf("Valor a:");
  scanf("%d", &A);
  printf("Valor b:");
  scanf("%d", &B);

  char n = isMultiple();

  printf("isMultiple = %d:\n", n);

  return 0;
}
