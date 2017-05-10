#include <iostream>

class base {
public:
  virtual void f() const = 0 ;
  virtual ~base() {}
};

class A : public base {
public:
  virtual void f() const { std::cout << "A::f()" << std::endl; }
};

class B : public base {
public:
  virtual void f() const { std::cout << "B::f()" << std::endl; }
};

void dispatch(const base & x) {
  x.f();
}

int main() {
  A a ;
  B b ;

  dispatch(a) ;
  dispatch(b) ;
}
