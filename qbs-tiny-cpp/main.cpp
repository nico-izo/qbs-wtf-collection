#include <iostream>

int main()
{
#ifdef SOMETHING
	std::cout << SOMETHING << std::endl;
#endif

#ifdef PLEASE_COMPILE
	std::cout << "some_great_lib found" << std::endl;
#else
	std::cout << "some_great_lib not found" << std::endl;
#endif

	return 0;
}
