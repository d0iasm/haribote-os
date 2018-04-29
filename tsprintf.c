#include <stdarg.h>

void strcls(char *str);
void int2hex(char *s, int v);
int figure(int v, int n);
void int2dec(char *s, int v);

int tsprintf(char *str, const char *fmt, ...) {
  int *arg = (int *)(&str + 2);   // 可変個引数の配列
  int cnt, i, argc = 0;
  char buf[20];
  const char *p = fmt;
  for(cnt = 0; *p != '\0'; p++) {
    if(*p == '%') {
      strcls(buf);    // バッファの初期化
      // フォーマット指定子の場合は引数の数値を文字列へ変換
      switch(p[1]) {
        case 'd': int2dec(buf, arg[argc++]); break;
        case 'x': int2hex(buf, arg[argc++]); break;
      }
      // 変換した数値を生成文字列にコピー
      for(i = 0; buf[i] != '\0'; i++,cnt++) *str++ = buf[i];
      p++;
    } else {
      // フォーマット指定子以外はそのままコピー
      *str++ = *p; cnt++;
    }
  }
  return cnt;
}

// ヌル文字で埋める
void strcls(char *str) {
  while(*str != '\0') *str++ = '\0';
}

// 数値を16進数文字列に変換する
void int2hex(char *s, int value) {
  s[0] = '0', s[1] = 'x';
  int i, filter = 0x0000000f;
  s += 2;
  for(i = 0; i < 8; i++) {
    if(((value >> (7-i)*4) & filter) >= 10) {
      *s++ = 'A' + ((value >> (7-i)*4) & filter) - 10;
    } else {
      *s++ = '0' + ((value >> (7-i)*4) & filter);
    }
  }
  *s = '\0';
}

// 10進数valueのn桁目を返す
int figure(int value, int n) {
  int i;
  for(i = 0; i < n-1; i++) value /= 10;
  return value % 10;
}

// 数値を10進数文字列に変換する
void int2dec(char *s, int value) {
  int i;
  char zero = 1;
  for(i = 0; i < 10; i++) {
    if(zero && figure(value, 10-i) != 0) zero = 0;
    if(!zero) *s++ = '0' + figure(value, 10-i);
  }
}
