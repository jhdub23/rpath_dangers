#include <src/libs/mylib_level2_v1.hpp>
#include <iostream>

static int init() {
  std::cout << "load.: lib level 2 version 1" << std::endl;
  return 0;
}
static int foo = init();

static void print_foo() {
  std::cout << foo << std::endl;
}

void hello_lib_level2() {
  std::cout << "start: lib level 2 version 1" << std::endl;
  std::cout << "end..: lib level 2 version 1" << std::endl;
}
