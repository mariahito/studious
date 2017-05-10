// Maria HIto mh4wt 23 01 2017 LifeCycle.h
#ifndef MYOBJECT_H
#define MYOBJECT_H
#include<iostream>
using namespace std;

class MyObject {
 public:
  static int numObjs;
  MyObject(const char *n = "--default--");      // default constructor
  MyObject(const MyObject& rhs);                // copy constructor
  ~MyObject();                                  // destructor
  string getName() const {
    return name;
  }
  void setName(const string newName) {
    name = newName;
  }
  friend ostream& operator<<(ostream& output, const MyObject& obj);
 private:
  string name;
  int id;
};

//---------------------------------------------------------- prototypes
MyObject getMaxMyObj(const MyObject o1, const MyObject o2);
int cmpMyObj(const MyObject o1, const MyObject o2);
void swapMyObj(MyObject& o1, MyObject& o2);
#endif
