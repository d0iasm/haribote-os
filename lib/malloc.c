#include "../apilib/apilib.h"

void* malloc(int size)
{
  char* p = api_malloc(size + 16);
  if (p != 0) {
    *((int*)p) = size;
    p += 16;
  }
  return p;
}
