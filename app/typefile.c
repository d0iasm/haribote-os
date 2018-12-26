#include "../apilib/apilib.h"

void hari_main(void)
{
  int fh;
  char c;
  fh = api_fopen("hoge.txt");
  if (fh != 0) {
    for (;;) {
      if (api_fread(&c, 1, fh) == 0) {
        break;
      }
      api_putchar(c);
    }
  } else {
    api_putstr0("No file.");
  }
  api_end();
}
