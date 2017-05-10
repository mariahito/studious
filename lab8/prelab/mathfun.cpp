//Maria Hito (mh4wt)
//File name: mathfun.cpp
//03/27/17

#include <iostream>
#include <time.h>
#include <cstdlib>

using namespace std;

extern "C" int product (int, int);
extern "C" int power (int, int);

int main() {

  //declare local variables
  int num1, num2, answer1, answer2;

  //ask for input
  cout << "Please enter a positive integer:" << endl;
  cin >> num1;
  cout << "Please enter another positive integer:" << endl;
  cin >> num2;

  answer1 = product(num1, num2);

  cout << "The product of " << num1 << " and " << num2 << " is: " << answer1 << endl;

  answer2 = power(num1, num2);

  cout << "The power of " << num1 << " and " << num2 << " is: " << answer2 << endl;
  
  
}
