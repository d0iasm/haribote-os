void api_end(void);

void hari_main(void)
{
  *((char*)0x00102600) = 0;
  api_end();
}
