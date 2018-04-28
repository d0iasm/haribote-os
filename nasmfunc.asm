  ; nasmfunc.asm

  bits 32
  global io_hlt

  section .text

io_hlt:
  HLT
  RET
