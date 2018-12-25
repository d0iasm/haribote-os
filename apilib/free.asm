  bits 32
  global api_free

  section .text

api_free: ; void api_free(char *addr, int size);
  push ebx
  mov edx, 10
  mov ebx, [cs:0x0020]
  mov eax, [esp+8] ; addr
  mov ecx, [esp+12] ; size
  int 0x40
  pop ebx
  ret
