//Maria Hito mh4wt 2 2 22017 ListItr.cpp
#include "ListItr.h"
#include <iostream>

using namespace std;

ListItr:: ListItr(ListNode* theNode){
  current = theNode;
}

bool ListItr:: isPastEnd() const{
  if (current->next==NULL)
    return true;
  else
    return false;
}

bool ListItr:: isPastBeginning() const{
  if (current->previous==NULL)
    return true;
  else
    return false;
}

void ListItr:: moveForward(){
  if (!isPastEnd())
    current=current->next;
  // cout << current;
}

void ListItr:: moveBackward(){
  if (!isPastBeginning())
    current=current->previous;
  // cout << current;
}

int ListItr:: retrieve() const{
  return current->value;
}

void printList(List& theList, bool forward){
  // if(forward==true){
  // moveForward();
  // }
  // if(forward == false){
  // moveBackward();
  // }
  //object of class ListItr
  if (theList.isEmpty()) {
    cout << "\nList is empty\n";
    return;
  }
  cout << "\n";
  if (forward) {
    ListItr itr = theList.first();

    while (!itr.isPastEnd()) {
      cout << itr.retrieve() << " ";
      itr.moveForward();
    }
  } else {
    ListItr itr = theList.last();

    while (!itr.isPastBeginning()) {
      cout << itr.retrieve() << " ";
      itr.moveBackward();
    }
  }
  cout << "\n";
}
