#include <iostream>

void hello_lib_level1_part2();

void hello_lib_level2();

static int init() {
  std::cout << "load.: lib level 1" << std::endl;
  return 0;
}

static int foo = init();

static void print_foo() {
  std::cout << foo << std::endl;
}

void hello_lib_level1() {
  std::cout << "start: lib level 1" << std::endl;
  std::cout << "end..: lib level 1" << std::endl;
}
