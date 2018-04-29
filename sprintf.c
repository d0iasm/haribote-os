#include <stdarg.h>

int tsprintf(char *str, char *fmt, ...); 
int vtsprintf(char *str, char *fmt, va_list arg); 

int tsprintf(char *str, char *fmt, ...) {
  va_list arg;
  int len;

  va_start(arg, fmt);

  len = vtsprintf(str, fmt, arg);

  va_end(arg);

  return len;
}

int vtsprintf(char *str, char *fmt, va_list arg) {
  int len = 0;
  int size = 0;
  int zeroflag, width;

  while (*fmt) {
    if (*fmt == '%') {
      zeroflag = width = 0;
      fmt++;

      if (*fmt == '0') {
        fmt++;
        zeroflag = 1;
      }
      if ((*fmt >= '0') && (*fmt <= '9')) {
        width = *(fmt++) - '0';
      }

      switch (*fmt) {
        case 'd':
          size = tsprintf_decimal(va_arg(arg, signed long), str, zeroflag, width);
          break;
        case 'x':
          size = tsprintf_hexadecimal(va_arg(arg, unsigned long), str, 0, zeroflag, width);
          break;
        case 'X':
          size = tsprintf_hexadecimal(va_arg(arg,unsigned long), str, 1, zeroflag, width);
          break;
        case 'c':
          size = tsprintf_char(va_arg(arg,int), str);
          break;
        case 's':
          size = tsprintf_string(va_arg(arg, char*), str);
          break;
        default: // Handle codes besides control one, like %%
          len++;
          *(str++) = *fmt;
          break;
      }
      len += size;
      str += size;
      fmt++;
    } else {
      *(str++) = *(fmt++);
      len++;
    }
  }

  *str = '\0';

  va_end(arg);
  return len;
}
