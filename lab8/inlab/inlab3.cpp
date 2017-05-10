#include <iostream>

using namespace std;

void printArray (int nums[], int length) {
  for(int i = 0; i < length; i++) {
    cout<< nums[i] << ' '<< endl;
  }
}


int main() {
  int length = 5;
  int nums[] = {3, 4, 2, 5, 7};

  printArray(nums, length);
}
