// libs.c: Self made libraries.
#include "bootpack.h"


// TODO: Bug when the length of a char is 2
int strcmp(char *s1, char *s2) {
  int sz1 = sizeof(s1);
  int sz2 = sizeof(s2);

  if (sz1 < sz2) {
    return -1;
  } else if (sz1 > sz2) {
    return 1;
  } else {
    for (int i=0; i<sz1; i++) {
      if (s1[i] != s2[i]) {
        return -2;
      }
    } 
  }
  return 0;
}
