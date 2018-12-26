  bits 32
  global __alloca

  section .text

__alloca:
  add eax, -4
  sub esp, eax
  jmp dword [esp+eax] ; Instead of RET.

