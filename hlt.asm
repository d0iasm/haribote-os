  ; hlt.asm : A minimum application just to stop the computer.
  bits 32
  CLI

fin:
  HLT
  JMP fin
