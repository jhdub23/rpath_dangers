#include <iostream>

void hello_lib_level1();
void hello_lib_level2();

int main() {
  std::cout << "start: top" << std::endl;
  hello_lib_level1();
  hello_lib_level2();
  std::cout << "end..: top" << std::endl;
  return 0;
}
