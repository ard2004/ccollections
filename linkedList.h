#ifndef linkedList_H
#define linkedList_H
typedef struct node {
  int data;
  struct node *next;
} Node;
extern Node *head;
extern Node *tail;
extern int count;
void insertAhead(int data);
void insertBehind(int data);
void search(int data);
void deleteNode(int delData);
void printll();
void printMenu();
#endif // linkedList_H
