#include <iostream>

#include "hello.h"
#include "calculator.h"

int main()
{
	Calculator calc;

	print_hello();

	int five = calc.Add(2, 3);

	std::cout << "Result: " << five << std::endl;

	return 0;
}