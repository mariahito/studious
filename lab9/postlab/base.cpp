#include <iostream>

class A {
public:
  void f() const { std::cout << "A::f()" << std::endl; }
};

class B {
public:
  void f() const { std::cout << "B::f()" << std::endl; }
};

int main()
{
  A a ;
  B b ;

  a.f() ;
  b.f() ;
}
