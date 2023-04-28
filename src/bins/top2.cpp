#include <src/libs/mylib_level1.hpp>
#include <src/libs/mylib_level2.hpp>
#include <iostream>

int main() {
  std::cout << "start: top" << std::endl;
  hello_lib_level1();
  hello_lib_level2();
  std::cout << "end..: top" << std::endl;
  return 0;
}
