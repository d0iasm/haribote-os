// bootpack.c

void io_hlt(void);
void io_cli(void);
void io_out8(int port, int data);
int io_load_eflags(void);
void io_store_eflags(int eflags);

void init_palette(void);
void set_palette(int start, int end, unsigned char *rgb);

void hari_main(void) {
  init_palette();

  // VRAM: 0xa0000 ~ 0xaffff
  char *p = (char *) 0xa0000; // Byte address of start value of VRAM

  for(int i=0; i<0xffff; i++) {
    *(p + i) = i & 0x0f;
  }

  for(;;) {
    io_hlt();
  }
}

void init_palette(void) {
  // Declare with static because to save overhead memories
  // Use DB instead of RESB in assembly
  static unsigned char table_rgb[16 * 3] = {
    0x00, 0x00, 0x00, // #000000: Black
    0xff, 0x00, 0x00, // #ff0000: Red
    0x00, 0xff, 0x00, // #00ff00: Green
    0xff, 0xff, 0x00, // #ffff00: Yellow
    0x00, 0x00, 0xff, // #0000ff: Blue
    0xff, 0x00, 0xff, // #ff00ff: Purple
    0x00, 0xff, 0xff, // #00ffff: Light blue
    0xff, 0xff, 0xff, // #ffffff: White
    0xc6, 0xc6, 0xc6, // #c6c6c6: Gray
    0x84, 0x00, 0x00, // #840000: Dark red
    0x00, 0x84, 0x00, // #008400: Dark green
    0x84, 0x84, 0x00, // #848400: Dark yellow
    0x00, 0x00, 0x84, // #000084: Dark blue
    0x84, 0x00, 0x84, // #840084: Dark purple
    0x00, 0x84, 0x84, // #008484: Dark light blue
    0x84, 0x84, 0x84, // #848484: Dark gray
  };
  set_palette(0, 15, table_rgb);
  return;
}

void set_palette(int start, int end, unsigned char *rgb) {
  int eflags = io_load_eflags(); // To record the current interrupt flag
  io_cli(); // CLI: To set the interrupt flag to 0
  io_out8(0x03c8, start); // Port 0x03c8, 0x03c9, and 0x03c7 control the DAC
  for(int i=0; i<=end; i++) {
    io_out8(0x3c9, rgb[0] / 4);
    io_out8(0x3c9, rgb[1] / 4);
    io_out8(0x3c9, rgb[2] / 4);
    rgb += 3;
  }
  io_store_eflags(eflags); // To revert interrupt flag to its original value
  return;
}

