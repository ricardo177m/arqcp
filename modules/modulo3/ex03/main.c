#include <stdio.h>

#include "asm.h"

char* ptr1 = "BadjoOraz";
char ptr2[100];

int main() {
	str_copy_porto2();
	printf("%s\n", ptr2);
	return 0;
}

