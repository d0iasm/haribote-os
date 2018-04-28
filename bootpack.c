// bootpack.c

void io_hlt(void);
void write_mem8(int addr, int data);

void HariMain(void) {
  char *p; // Byte address

  // VRAM: 0xa0000 ~ 0xaffff
  for(int i=0xa0000; i<0xaffff; i++) {
    p = (char*) i;
    *p = i & 0x0f;
  }

  for(;;) {
    io_hlt();
  }
}
