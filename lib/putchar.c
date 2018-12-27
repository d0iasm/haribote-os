#include "../apilib/apilib.h"

int putchar(int c)
{
  api_putchar(c);
  return c;
}
