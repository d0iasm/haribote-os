// graphic.c: Draw characters and figures on a screen
#include "bootpack.h"

void init_palette(void)
{
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
  unsigned char table2[216 * 3];
  int r, g, b;

  for (b = 0; b < 6; b++) {
    for (g = 0; g < 6; g++) {
      for (r = 0; r < 6; r++) {
        table2[(r + g * 6 + b * 36) * 3 + 0] = r * 51;
        table2[(r + g * 6 + b * 36) * 3 + 1] = g * 51;
        table2[(r + g * 6 + b * 36) * 3 + 2] = b * 51;
      }
    }
  }
  set_palette(0, 15, table_rgb);
  set_palette(0, 15, table2);
  return;
}

void set_palette(int start, int end, unsigned char* rgb)
{
  int eflags = io_load_eflags(); // To record the current interrupt flag
  io_cli();                      // CLI: To set the interrupt flag to 0
  io_out8(0x03c8, start);        // Port 0x03c8, 0x03c9, and 0x03c7 control the DAC
  for (int i = 0; i <= end; i++) {
    io_out8(0x3c9, rgb[0] / 4);
    io_out8(0x3c9, rgb[1] / 4);
    io_out8(0x3c9, rgb[2] / 4);
    rgb += 3;
  }
  io_store_eflags(eflags); // To revert interrupt flag to its original value
  return;
}

void boxfill8(unsigned char* vram, int xsize, unsigned char c, int x0, int y0, int x1, int y1)
{
  for (int y = y0; y <= y1; y++) {
    for (int x = x0; x <= x1; x++) {
      vram[y * xsize + x] = c;
    }
  }
  return;
}

void init_screen8(char* vram, int xsize, int ysize)
{
  boxfill8(vram, xsize, COL8_008484, 0, 0, xsize - 1, ysize - 29);
  boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize - 28, xsize - 1, ysize - 28);
  boxfill8(vram, xsize, COL8_FFFFFF, 0, ysize - 27, xsize - 1, ysize - 27);
  boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize - 26, xsize - 1, ysize - 1);

  boxfill8(vram, xsize, COL8_FFFFFF, 3, ysize - 24, 59, ysize - 24);
  boxfill8(vram, xsize, COL8_FFFFFF, 2, ysize - 24, 2, ysize - 4);
  boxfill8(vram, xsize, COL8_848484, 3, ysize - 4, 59, ysize - 4);
  boxfill8(vram, xsize, COL8_848484, 59, ysize - 23, 59, ysize - 5);
  boxfill8(vram, xsize, COL8_000000, 2, ysize - 3, 59, ysize - 3);
  boxfill8(vram, xsize, COL8_000000, 60, ysize - 24, 60, ysize - 3);

  boxfill8(vram, xsize, COL8_848484, xsize - 47, ysize - 24, xsize - 4, ysize - 24);
  boxfill8(vram, xsize, COL8_848484, xsize - 47, ysize - 23, xsize - 47, ysize - 4);
  boxfill8(vram, xsize, COL8_FFFFFF, xsize - 47, ysize - 3, xsize - 4, ysize - 3);
  boxfill8(vram, xsize, COL8_FFFFFF, xsize - 3, ysize - 24, xsize - 3, ysize - 3);
}

void init_mouse_cursor8(char* mouse, char bc)
{
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

  for (int y = 0; y < 16; y++) {
    for (int x = 0; x < 16; x++) {
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

void putfont8(char* vram, int xsize, int x, int y, char c, char* font)
{
  char* p;
  char d;

  for (int i = 0; i < 16; i++) {
    p = vram + (y + i) * xsize + x;
    d = font[i];
    if ((d & 0x80) != 0) {
      p[0] = c;
    } // d & 0x80 means a leftmost bit is 1
    if ((d & 0x40) != 0) {
      p[1] = c;
    }
    if ((d & 0x20) != 0) {
      p[2] = c;
    }
    if ((d & 0x10) != 0) {
      p[3] = c;
    }
    if ((d & 0x08) != 0) {
      p[4] = c;
    }
    if ((d & 0x04) != 0) {
      p[5] = c;
    }
    if ((d & 0x02) != 0) {
      p[6] = c;
    }
    if ((d & 0x01) != 0) {
      p[7] = c;
    }
  }
  return;
}

void putfonts8_asc(char* vram, int xsize, int x, int y, char c, unsigned char* s)
{
  extern char hankaku[4096];
  for (; *s != 0x00; s++) {
    putfont8(vram, xsize, x, y, c, hankaku + *s * 16);
    x += 8;
  }
  return;
}

void putblock8_8(char* vram, int vxsize, int pxsize,
    int pysize, int px0, int py0, char* buf, int bxsize)
{
  int x, y;
  for (y = 0; y < pysize; y++) {
    for (x = 0; x < pxsize; x++) {
      vram[(py0 + y) * vxsize + (px0 + x)] = buf[y * bxsize + x];
    }
  }
  return;
}

void putfonts8_asc_sht(struct SHEET* sht, int x, int y, int c, int b, char* s, int l)
{
  boxfill8(sht->buf, sht->bxsize, b, x, y, x + l * 8 - 1, y + 15);
  putfonts8_asc(sht->buf, sht->bxsize, x, y, c, s);
  sheet_refresh(sht, x, y, x + l * 8, y + 16);
  return;
}
