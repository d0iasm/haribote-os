#include <stdio.h>

int api_openwin(char* buf, int xsiz, int ysiz, int col_inv, char* title);
void api_putstrwin(int win, int x, int y, int col, int len, char* str);
void api_boxfilwin(int win, int x0, int y0, int x1, int y1, int col);
void api_initmalloc(void);
char* api_malloc(int size);
int api_getkey(int mode);
int api_alloctimer(void);
void api_inittimer(int timer, int data);
void api_settimer(int timer, int time);
void api_end(void);

int tsprintf(char* str, const char* fmt, ...);

void hari_main(void)
{
  char *buf, s[12];
  int win, timer, sec = 0, min = 0, hou = 0;
  api_initmalloc();
  buf = api_malloc(150 * 50);
  win = api_openwin(buf, 150, 50, -1, "noodle");
  timer = api_alloctimer();
  api_inittimer(timer, 128);
  for (;;) {
    tsprintf(s, "%d:%d:%d", hou, min, sec);
    api_boxfilwin(win, 28, 27, 115, 41, 7 /* 白 */);
    api_putstrwin(win, 28, 27, 0 /* 黒 */, 11, s);
    api_settimer(timer, 100); /* 1 秒間 */
    if (api_getkey(1) != 128) {
      break;
    }
    sec++;
    if (sec == 60) {
      sec = 0;
      min++;
      if (min == 60) {
        min = 0;
        hou++;
      }
    }
  }
  api_end();
}
