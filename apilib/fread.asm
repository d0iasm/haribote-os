  bits 32
  global api_fread

  section .text

api_fread: ; int api_fread(char *buf, int maxsize, int fhandle);
  push ebx
  mov edx, 25
  mov eax, [esp+16] ; fhandle
  mov ecx, [esp+12] ; maxsize
  mov ebx, [esp+8] ; buf
  int 0x40
  pop ebx
  ret
