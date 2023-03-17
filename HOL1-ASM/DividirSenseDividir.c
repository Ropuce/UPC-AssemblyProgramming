#include <stdio.h>

int main() {
	register int var_a = 10;
	register int divisor = 3;
	register int quocient = 0;

	while (var_a > divisor) {
		var_a -= divisor;
		quocient++;
	}

	printf("Quocient: %i\nResta: %i", quocient, var_a);

}