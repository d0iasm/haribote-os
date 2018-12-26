#include "../apilib/apilib.h"

void hari_main(void)
{
  char* buf;
  int win;
  api_initmalloc();
  buf = api_malloc(150 * 50);
  win = api_openwin(buf, 150, 50, -1, "hello");
  api_boxfilwin(win, 8, 36, 141, 43, 6 /* Light blue */);
  api_putstrwin(win, 28, 28, 0 /* Black */, 12, "hello, world");
  for (;;) {
    if (api_getkey(1) == 0x0a) {
      break; /* Break if an enter is pressed. */
    }
  }
  api_end();
}
