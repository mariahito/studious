#include <iostream>

using namespace std;

//swap using pass by value
void swap1 (int x, int y) {
  int temp = 9;
  temp = x;
  x = y;
  y = temp;
}
/*
//swap using pass by reference
void swap2 (int& x, int& y) {
  int temp;
  temp = x;
  x = y;
  y = temp;
}
*/
int main() {
  int a = 5, b = 3;
  
  swap1(a,b);
  cout<< a << " "<< b <<endl;
  /*
  swap2(a,b);
  cout<<"Pass by reference swap: "<< a << " "<< b <<endl;
  */
  return 0;
}
