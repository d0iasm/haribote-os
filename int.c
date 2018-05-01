// int.c: Setting for PIC to send interrupt request
#include "bootpack.h"

struct KETBUF keybuf;

void init_pic(void) {
  struct BOOTINFO *binfo = (struct BOOTINFO *) ADR_BOOTINFO;
  putfonts8_asc(binfo->vram, binfo->scrnx, 0, 0, COL8_FFFFFF, "hoge");

  io_out8(PIC0_IMR, 0xff); // Deny all interrupt requests
  io_out8(PIC1_IMR, 0xff); // Deny all interrupt requests

  io_out8(PIC0_ICW1, 0x11); // Edge triger mode
  io_out8(PIC0_ICW2, 0x20); // IPQ-7 recieves by INT20-27
  io_out8(PIC0_ICW3, 1 << 2); // PIC1 connects IRQ2
  io_out8(PIC0_ICW4, 0x01); // Non buffer mode

  io_out8(PIC1_ICW1, 0x11); // Edge triger mode
  io_out8(PIC1_ICW2, 0x28); // IRQ8-15 recieves by INT28-2f
  io_out8(PIC1_ICW3, 2); // PIC1 connects IEQ2
  io_out8(PIC1_ICW4, 0x01); // Non buffer mode

  io_out8(PIC0_IMR, 0xfb); // 11111011 Deny all except PIC1
  io_out8(PIC1_IMR, 0xff); // 11111111 Deny all interrupt requests
}

// Interrupt from PS/2 keyboard
void inthandler21(int *esp) {
  struct BOOTINFO *binfo = (struct BOOTINFO *) ADR_BOOTINFO;
  unsigned char data, s[4];
  io_out8(PIC0_OCW2, 0x61); // Inform the end of IRQ-01's acception
  data = io_in8(PORT_KEYDAT);

  // if (keybuf.flag == 0) {
    // keybuf.data = data;
    // keybuf.flag = 1;
  // }

  tsprintf(s, "%x", data);
  boxfill8(binfo->vram, binfo->scrnx, COL8_008484, 0, 16, 15, 31);
  putfonts8_asc(binfo->vram, binfo->scrnx, 0, 16, COL8_FFFFFF, s);

  return;
}

void inthandler2c(int *esp) {
  struct BOOTINFO *binfo = (struct BOOTINFO *) ADR_BOOTINFO;
  boxfill8(binfo->vram, binfo->scrnx, COL8_000000, 0, 0, 32*8-1, 15);
  putfonts8_asc(binfo->vram, binfo->scrnx, 0, 0, COL8_FFFFFF, "INT 2C (IRQ-12) : PS/2 mouse");

  for (;;) {
    io_hlt();
  }
}

void inthandler27(int *esp) {
  io_out8(PIC0_OCW2, 0x67);
  return;
}
