//Maria Hito (mh4wt)
//File name: threeinput.cpp
//4/5/17


#include <iostream>
#include "timer.h"
#include <cstdlib>

using namespace std;

extern "C" int threexplusone (int);


int main() {
  timer clock;
  int num;
  int loops;
  cout << "Please enter a positive integer:" << endl;
  cin >> num;
  //timer before and after loop
  cout << "enter loop number:" <<endl;
  cin >> loops;
  //start timer
  clock.start();
  for(int i = 0; i < loops; i++) {
    threexplusone(num);
  }
  //stop timer
  clock.stop();
   
   cout << "Number of steps: " << threexplusone(num) << endl;
    //average time = total time/loops, cout this
   double totalTime = clock.getTime();
   double avgTime = totalTime / loops;
   cout << "Average time for " << loops << " loops is: " << avgTime <<  " ms" << endl;
  
}
