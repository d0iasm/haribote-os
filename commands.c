#include "bootpack.h"


int cons_newline(int cursor_y, struct SHEET *sheet) {
  int x, y;
  if (cursor_y < 28 + 112) {
    cursor_y += 16;
  } else {
    // scroll
    for (y = 28; y < 28 + 112; y++) {
      for (x = 8; x < 8 + 240; x++) {
        sheet->buf[x + y * sheet->bxsize] = sheet->buf[x + (y + 16) * sheet->bxsize];
      }
    }
    for (y = 28 + 112; y < 28 + 128; y++) {
      for (x = 8; x < 8 + 240; x++) {
        sheet->buf[x + y * sheet->bxsize] = COL8_000000;
      }
    }
    sheet_refresh(sheet, 8, 28, 8 + 240, 28 + 128);
  }
  return cursor_y;
}
