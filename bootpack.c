// bootpack.c

#define COL8_000000 0
#define COL8_FF0000 1
#define COL8_00FF00 2
#define COL8_FFFF00 3
#define COL8_0000FF 4
#define COL8_FF00FF 5
#define COL8_00FFFF 6
#define COL8_FFFFFF 7
#define COL8_C6C6C6 8
#define COL8_840000 9
#define COL8_008400 10
#define COL8_848400 11
#define COL8_000084 12
#define COL8_840084 13
#define COL8_008484 14
#define COL8_848484 15

void io_hlt(void);
void io_cli(void);
void io_out8(int port, int data);
int io_load_eflags(void);
void io_store_eflags(int eflags);

void init_palette(void);
void set_palette(int start, int end, unsigned char *rgb);
void boxfill8(unsigned char *vram, int xsize, unsigned char c, int x0, int y0, int x1, int y1);
void init_screen(unsigned char *vram, int xsize, int ysize);

void hari_main(void) {
  init_palette();

  // VRAM: 0xa0000 ~ 0xaffff
  // VRAM has 320*200 = 64,000 pixels
  // The upper left coordinate is (0, 0), and the lower right is (319, 199)
  short *binfo_scrnx = (short *) 0x0ff4;
  short *binfo_scrny = (short *) 0x0ff6;
  int *binfo_vram = (int *) 0x0ff8; 
  int xsize = *binfo_scrnx;
  int ysize = *binfo_scrny;
  char *vram = (char *) *binfo_vram; // Byte address of start value of VRAM
  
  init_screen(vram, xsize, ysize);
  
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

void boxfill8(unsigned char *vram, int xsize, unsigned char c, int x0, int y0, int x1, int y1) {
  for(int y=y0; y<=y1; y++) {
    for(int x=x0; x<=x1; x++) {
      vram[y * xsize + x] = c;
    }
  }
  return;
}

void init_screen(unsigned char *vram, int xsize, int ysize) {
  boxfill8(vram, xsize, COL8_008484, 0, 0, xsize-1, ysize-29);
  boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize-28, xsize-1, ysize-28);
  boxfill8(vram, xsize, COL8_FFFFFF, 0, ysize-27, xsize-1, ysize-27);
  boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize-26, xsize-1, ysize-1);

  boxfill8(vram, xsize, COL8_FFFFFF,  3, ysize-24, 59, ysize-24);
  boxfill8(vram, xsize, COL8_FFFFFF,  2, ysize-24,  2, ysize-4);
  boxfill8(vram, xsize, COL8_848484,  3, ysize-4, 59, ysize-4);
  boxfill8(vram, xsize, COL8_848484, 59, ysize-23, 59, ysize-5);
  boxfill8(vram, xsize, COL8_000000,  2, ysize-3, 59, ysize-3);
  boxfill8(vram, xsize, COL8_000000, 60, ysize-24, 60, ysize-3);

  boxfill8(vram, xsize, COL8_848484, xsize-47, ysize-24, xsize-4, ysize-24);
  boxfill8(vram, xsize, COL8_848484, xsize-47, ysize-23, xsize-47, ysize-4);
  boxfill8(vram, xsize, COL8_FFFFFF, xsize-47, ysize-3, xsize-4, ysize-3);
  boxfill8(vram, xsize, COL8_FFFFFF, xsize-3, ysize-24, xsize-3, ysize-3);
}
