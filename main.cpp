#include "MyCppLibrary/hello.hpp"
#include <iostream>

int main() {
  std::cout << "hello world: " << hello::hi() << std::endl;
  return 0;
}
