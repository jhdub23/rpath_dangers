#include <iostream>

void hello_lib_level1();

int main() {
  std::cout << "start: top" << std::endl;
  hello_lib_level1();
  std::cout << "end..: top" << std::endl;
  return 0;
}
