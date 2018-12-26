#include "../apilib/apilib.h"

void hari_main(void)
{
  int fh;
  char c;
  fh = api_fopen("api.ls");
  if (fh != 0) {
    for (;;) {
      if (api_fread(&c, 1, fh) == 0) {
        break;
      }
      api_putchar(c);
    }
  }
  api_end();
}
