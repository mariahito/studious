#include <iostream>

using namespace std;

//swap using pass by reference
void swap2 (int& x, int y) {
  int temp = 9;
  temp = x;
  x = y;
  y = temp;
}

int main() {
  int a = 5, b = 3;
  
  
  
  swap2(a,b);
  cout<< a << " "<< b <<endl;
  
  return 0;
}
