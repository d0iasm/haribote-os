void api_putstr0(char *s);
int api_openwin(char* buf, int xsiz, int ysiz, int col_inv, char* title);
void api_end(void);
char buf[150 * 50];

void hari_main(void)
{
  api_putstr0("Open a new window. \n");
  int win;
  win = api_openwin(buf, 150, 50, -1, "hello");
  api_end();
}
