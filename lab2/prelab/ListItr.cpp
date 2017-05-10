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
  cout << current;
}

void ListItr:: moveBackward(){
  if (!isPastBeginning())
    current=current->previous;
  cout << current;
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

}
    
