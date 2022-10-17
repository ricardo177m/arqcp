#include <stdio.h>
#include "asm.h"

int op1 = 0, op2 = 0, op3 = 0;

int main(void)
{
  printf("Valor op1:");
  scanf("%d", &op1);
  printf("Valor op2:");
  scanf("%d", &op2);
  printf("Valor op3:");
  scanf("%d", &op3);

  long long n = sum3ints();

  printf("sum3ints = %lld:0x%llx\n", n, n);

  return 0;
}
