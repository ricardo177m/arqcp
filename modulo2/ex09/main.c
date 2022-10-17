#include <stdio.h>

#include "asm.h"

int A = 0;
short B = 0;
char C = 0;
char D = 0;

int main() {
	long result = 0;

	printf("A = ");	
	scanf("%d", &A);

	printf("B = ");	
	scanf("%hd", &B);

	printf("C = ");	
	scanf("%hhd", &C);
	
	printf("D = ");	
	scanf("%hhd", &D);
	
	result = sum_and_subtract();
	printf("\n%hhd + %d - %hhd + %hd = %ld\n", C, A, D, B, result);

	return 0;
}

