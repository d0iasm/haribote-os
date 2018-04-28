  ; nasmfunc.asm

  bits 32
  bal io_hlt
  global write_mem8

  section .text

io_hlt:
  HLT
  RET

write_mem8:
  MOV ECX, [ESP+4]
  MOV AL, [ESP+8]
  MOV [ECX], AL
  RET
