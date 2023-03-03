#include <iostream>
using namespace std;

int main() {
	char* x = nullptr;
	char y = 42;
	cout << x[(long)&y];
	cin.get();
}