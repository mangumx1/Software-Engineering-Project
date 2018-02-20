#include <stdio.h>
#include <iostream>
#include <utility>
#include <list>
#include <vector>
using namespace std;

typedef pair<int, *char[]> user;  // User ID, User's Name
typedef list<user> users;
typedef vector<users> all_users;

bool compareUsers(const user &a, const user &b) {
  if (a.second != b.second) {
    if(a.first == b.first) {
      return true;
    }
    return false;
  }
}
void login(string username, string password) {
  File *db.
  db = fopen("/* Database File Name */", rb);
  
  /* Insert Code Here... */
  
}

int main() {

  return 0;
}
