  bits 32
  global api_closewin
  
  section .text

api_closewin: ; void api_closewin(int win);
  push ebx
  mov edx, 14
  mov ebx, [esp+8] ; win
  int 0x40
  pop ebx
  ret
