// bootpack.c

void io_hlt(void);
void write_mem8(int addr, int data);

void HariMain(void) {
  for(int i=0xa0000; i<0xaffff; i++) {
    write_mem8(i, 15);
  }

  for(;;) {
    io_hlt();
  }
}
