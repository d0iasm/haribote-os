  bits 32
  global api_fclose

  section .text

api_fclose: ; void api_fclose(int fhandle);
  mov edx, 22
  mov eax, [esp+4] ; fhandle
  int 0x40
  ret
