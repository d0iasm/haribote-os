// int.c: Setting for PIC to send interrupt request
#include <stdio.h>
#include "bootpack.h"


struct FIFO8 keyfifo;
struct FIFO8 mousefifo;

void init_pic(void) {
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

  return;
}

// Interrupt from PS/2 keyboard
void inthandler21(int *esp) {
  unsigned char data;
  io_out8(PIC0_OCW2, 0x61); // Inform the end of IRQ-01's acception
  data = io_in8(PORT_KEYDAT);
  fifo8_put(&keyfifo, data);
  return;
}

// Interrupt from PS/2 mouse
void inthandler2c(int *esp) {
  unsigned char data;
  io_out8(PIC1_OCW2, 0x64); // Inform the end of IRQ-12's acception to PIC1
  io_out8(PIC0_OCW2, 0x62); // Inform the end of IRQ-02's acception to PIC0
  data = io_in8(PORT_KEYDAT);
  fifo8_put(&mousefifo, data);
  return;
}

void inthandler27(int *esp) {
  io_out8(PIC0_OCW2, 0x67);
  return;
}
