#include <stdio.h>
const int a = 0x02;
int b = 0x03;

int foo() {
  printf("Hello, world!");
  return 0;
}

int main() {
  int number = 0;
  printf("%d", number);
  number = b;
  return 0;
}
