#include "../apilib/apilib.h"

void free(void* p)
{
  char* q = p;
  int size;
  if (q != 0) {
    q -= 16;
    size = *((int*)q);
    api_free(q, size + 16);
  }
  return;
}
