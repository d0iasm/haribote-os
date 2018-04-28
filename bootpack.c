// bootpack.c

void io_hlt(void);
void write_mem8(int addr, int data);

void HariMain(void) {
  // VRAM: 0xa0000 ~ 0xaffff
  for(int i=0xa0000; i<0xa7fff; i++) {
    write_mem8(i, 5);
  }

  for(int i=0xa7fff; i<0xaffff; i++) {
    write_mem8(i, 10);
  }

  for(;;) {
    io_hlt();
  }
}
