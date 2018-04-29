// bootpack.c
#include <stdio.h>

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
void init_screen(char *vram, int xsize, int ysize);
void init_mouse_cursor8(char *mouse, char bc);
void putfont8(char *vram, int xsize, int x, int y, char c, char *font);
void putfonts8_asc(char *vram, int xsize, int x, int y, char c, unsigned char *s);
void putblock8_8(char *vram, int vxsize, int pxsize, int pysize, int px0, int py0, char *buf, int bxsize);

// Libraries
int tsprintf(char *str, const char *fmt, ...);


// This struct size is 12 bytes
struct BOOTINFO {
  char cyls, leds, vmode, reserve; // 1 byte * 4 = 4 bytes
  short scrnx, scrny; // 2 bytes * 2 = 4 bytes
  char *vram; // 1 byte
};

// Each GDT size is 8 bytes and there are 8192 segmentations (0~8191)
// GDT is global segment descriptor table
// Set this desctiption address to GDTR resistor
struct SEGMENT_DESCRIPTOR {
  short limit_low, base_low;
  char base_mid, access_right;
  char limit_high, base_high;
};

// IDT size is 8 bytes and there are 256 intteruptions (0~255)
// IDT is interrupt descriptor table
struct GATE_DESCRIPTOR {
  short offset_low, selector;
  char dw_count, access_right;
  short offset_high;
};

void init_gdtidt(void);
void set_segmdesc(struct SEGMENT_DESCRIPTOR *sd, unsigned int limit, int base, int ar);
void set_gatedesc(struct GATE_DESCRIPTOR *gd, int offset, int selector, int ar);
void load_gdtr(int limit, int addr);
void load_idtr(int limit, int addr);


void hari_main(void) {
  struct BOOTINFO *binfo = (struct BOOTINFO *) 0x0ff0;
  extern char hankaku[4096];

  init_palette();
  init_screen(binfo->vram, binfo->scrnx, binfo->scrny);

  putfont8(binfo->vram, binfo->scrnx, 10, 10, COL8_FFFFFF, hankaku + 'A' * 16);
  putfont8(binfo->vram, binfo->scrnx, 20, 10, COL8_FFFFFF, hankaku + 'B' * 16);
  putfont8(binfo->vram, binfo->scrnx, 30, 10, COL8_FFFFFF, hankaku + 'C' * 16);
  putfont8(binfo->vram, binfo->scrnx, 50, 10, COL8_FFFFFF, hankaku + '1' * 16);
  putfont8(binfo->vram, binfo->scrnx, 60, 10, COL8_FFFFFF, hankaku + '2' * 16);
  putfont8(binfo->vram, binfo->scrnx, 70, 10, COL8_FFFFFF, hankaku + '3' * 16);

  putfonts8_asc(binfo->vram, binfo->scrnx, 31, 31, COL8_000000, "Haribote OS.");
  putfonts8_asc(binfo->vram, binfo->scrnx, 30, 30, COL8_FFFFFF, "Haribote OS.");

  char s[40];
  tsprintf(s, "scrnx = %d", binfo->scrnx);
  putfonts8_asc(binfo->vram, binfo->scrnx, 10, 60, COL8_FFFFFF, s);

  char mcursor[256];
  int mx = (binfo->scrnx - 16) / 2;
  int my = (binfo->scrny - 28 - 16) / 2;
  init_mouse_cursor8(mcursor, COL8_008484);
  putblock8_8(binfo->vram, binfo->scrnx, 16, 16, mx, my, mcursor, 16);

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

void init_screen(char *vram, int xsize, int ysize) {
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

void init_mouse_cursor8(char *mouse, char bc) {
  static char cursor[16][16] = {
    "**************..",
    "*OOOOOOOOOOO*...",
    "*OOOOOOOOOO*....",
    "*OOOOOOOOO*.....",
    "*OOOOOOOO*......",
    "*OOOOOOO*.......",
    "*OOOOOOO*.......",
    "*OOOOOOOO*......",
    "*OOOO**OOO*.....",
    "*OOO*..*OOO*....",
    "*OO*....*OOO*...",
    "*O*......*OOO*..",
    "**........*OOO*.",
    "*..........*OOO*",
    "............*OO*",
    ".............***"
  };

  for(int y=0; y<16; y++) {
    for(int x=0; x<16; x++) {
      if (cursor[x][y] == '*') {
        mouse[y * 16 + x] = COL8_000000;
      } else if (cursor[y][x] == 'O') {
        mouse[y * 16 + x] = COL8_FFFFFF;
      } else if (cursor[y][x] == '.') {
        mouse[y * 16 + x] = bc;
      }
    }
  }
  return;
}

void putfont8(char *vram, int xsize, int x, int y, char c, char *font) {
  char *p;
  char d;

  for(int i=0; i<16; i++) {
    p = vram + (y + i) * xsize + x;
    d = font[i];
    if ((d & 0x80) != 0) { p[0] = c; } // d & 0x80 means a leftmost bit is 1 
    if ((d & 0x40) != 0) { p[1] = c; }
    if ((d & 0x20) != 0) { p[2] = c; }
    if ((d & 0x10) != 0) { p[3] = c; }
    if ((d & 0x08) != 0) { p[4] = c; }
    if ((d & 0x04) != 0) { p[5] = c; }
    if ((d & 0x02) != 0) { p[6] = c; }
    if ((d & 0x01) != 0) { p[7] = c; }
  }
  return;
}

void putfonts8_asc(char *vram, int xsize, int x, int y, char c, unsigned char *s) {
  extern char hankaku[4096];
  for (; *s != 0x00; s++) {
    putfont8(vram, xsize, x, y, c, hankaku + *s * 16);
    x += 8;
  }
  return;
}

void putblock8_8(char *vram, int vxsize, int pxsize,
    int pysize, int px0, int py0, char *buf, int bxsize) {
  int x, y;
  for (y = 0; y < pysize; y++) {
    for (x = 0; x < pxsize; x++) {
      vram[(py0 + y) * vxsize + (px0 + x)] = buf[y * bxsize + x];
    }
  }
  return;
}

void init_gdtidt(void) {
  struct SEGMENT_DESCRIPTOR *gdt = (struct SEGMENT_DESCRIPTOR *) 0x00270000;
  struct GATE_DESCRIPTOR *idt = (struct GATE_DESCRIPTOR *) 0x0026f800;

  for (int i=0; i<8192; i++) {
    set_segmdesc(gdt + i, 0, 0, 0);
  }

  set_segmdesc(gdt + 1, 0xffffffff, 0x00000000, 0x4092);
  set_segmdesc(gdt + 2, 0x0007ffff, 0x00280000, 0x409a);
  load_gdtr(0xffff, 0x00270000);

  for (int i=0; i<256; i++) {
    set_gatedesc(idt + i, 0, 0, 0);
  }
  load_idtr(0x7ff, 0x0026f800);

  return;
}

void set_segmdesc(struct SEGMENT_DESCRIPTOR *sd, unsigned int limit, int base, int ar) {
  if (limit > 0xfffff) {
    ar |= 0x8000; // G_bit = 1
    limit /= 0x1000;
  }

  sd->limit_low = limit & 0xffff;
  sd->base_low = base & 0xffff;
  sd->base_mid = (base >> 16) & 0xff;
  sd->access_right = ar & 0xff;
  sd->limit_high = ((limit >> 16) & 0x0f) | ((ar >> 8) & 0xf0);
  sd->base_high = (base >> 24) & 0xff;
  return;
}

void set_gatedesc(struct GATE_DESCRIPTOR *gd, int offset, int selector, int ar) {
  gd->offset_low = offset & 0xffff;
  gd->selector = selector;
  gd->dw_count = (ar >> 8) & 0xff;
  gd->access_right = ar & 0xff;
  gd->offset_high = (offset >> 16) & 0xffff;
  return;
}


