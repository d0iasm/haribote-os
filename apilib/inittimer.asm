  bits 32
  global api_inittimer
  
  section .text

api_inittimer: ; void api_inittimer(int timer, int data);
  push ebx
  mov edx, 17
  mov ebx, [esp+8] ; timer
  mov eax, [esp+12] ; data
  int 0x40
  pop ebx
  ret
