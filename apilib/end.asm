  bits 32
  global api_end

  section .text

api_end: ; void api_end(void);
  mov edx, 4
  int 0x40
