  bits 32
  global api_putstr0

  section .text

api_putstr0: ; void api_putstr0(char *s);
  push ebx
  mov edx, 2
  mov ebx, [esp+8] ; s
  int 0x40
  pop ebx
  ret
