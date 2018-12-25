  bits 32
  global api_point

  section .text

api_point: ; void api_point(int win, int x, int y, int col);
  push edi
  push esi
  push ebx
  mov edx, 11
  mov ebx, [esp+16] ; win
  mov esi, [esp+20] ; x
  mov edi, [esp+24] ; y
  mov eax, [esp+28] ; col
  int 0x40
  pop ebx
  pop esi
  pop edi
  ret
