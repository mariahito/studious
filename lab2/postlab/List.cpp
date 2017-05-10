//Maria Hito mh4wt 2 2 2017 LIst.cpp
#include "List.h"
#include <iostream>
#include <iomanip>

using namespace std;

List::List(){
  head=new ListNode;
  tail=new ListNode;
  head->next=tail;
  head->previous=NULL;
  tail->previous=head;
  tail->next=NULL;
  count=0;
}
List::List(const List& source) { // Copy Constructor
  head=new ListNode;
  tail=new ListNode;
  head->next=tail;
  head->previous=NULL;
  tail->previous=head;
  tail->next=NULL;
  count=0;
  ListItr iter(source.head->next);
  while (!iter.isPastEnd()) { // deep copy of the list
    insertAtTail(iter.retrieve());
    iter.moveForward();
  }
}

List& List::operator=(const List& source) { //Equals operator
  if (this == &source)
    return *this;
  else {
    makeEmpty();
    ListItr iter(source.head->next);
    while (!iter.isPastEnd()) {
      insertAtTail(iter.retrieve());
      iter.moveForward();
    }
  }
  return *this;
}

bool List::isEmpty() const{

  if (count==0)
    return true;
  else
    return false;
}

void List::makeEmpty(){
  if (count==0)
    return;
  else{
    head->next=tail;
    tail->previous=head;
  }
}

ListItr List:: first(){
  return ListItr(head->next);
}

ListItr List:: last(){
  return ListItr(tail->previous);
}

void List::insertAfter(int x, ListItr position){
  ListNode *t= new ListNode;
  t->value=x;
  ListNode *curr= position.current;
  t->next= curr->next;
  t->previous= curr;
  curr->next->previous= t;
  curr->next=t;
}

void List::insertBefore(int x, ListItr position){
  ListNode *t= new ListNode;
  t->value=x;
  ListNode *curr= position.current;
  t->next=curr;
  t->previous=curr->previous;
  curr->previous->next=t;
  curr->previous=t;
}


void List::insertAtTail(int x){
  ListNode *t= new ListNode;
  t->value=x;
  t->next=tail;
  tail->previous->next=t;
  t->previous=tail->previous;
  tail->previous=t;
  count++;
}
ListItr List:: find(int x){
  ListItr a = first();
  while (!a.isPastEnd()){
    if(a.retrieve()==x){
      return a;
    }
    a.moveForward();
  }
  return ListItr(tail);
}

void List::remove(int x){
  // ListItr a= find(x);
  //ListNode *t = a.current;
  //if (t->value==x){
  //t->previous->next=t->next;
  //t->next->previous=t->previous;
  //t->next=NULL;
  //t->previous=NULL;
  ListNode*nodeToREmove = new ListNode();
  nodeToREmove->value = x;
  ListItr*itr = new ListItr(nodeToREmove);
  if(itr !=NULL){
    itr->current->previous->next = itr->current->next;
    itr->current->next->previous = itr->current->previous;
    delete itr;
    count--;
  }
}

int List::size() const{
  return count;
}

List:: ~List(){
  makeEmpty();
  //head->next=NULL;
  //tail->previous=NULL;
}
