#include <stdio.h>

#include "asm.h"

int main() {
	short result;

	printf("Enter a short: ");
	scanf("%hd", &s1);
	
	printf("Enter another short: ");
	scanf("%hd", &s2);

	result = crossSumBytes();
	printf("\nresult = %hd\n\n", result);
	
	return 0;
}

