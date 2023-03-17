#include <stdio.h>
int asmMAX();

extern int n1, n2;

int max = 0;

int main() {
	printf("Starting the C program...\n");

	max = asmMAX();
	printf("The max of %d and %d is %d\n", n1, n2, max);

	return 0;
}