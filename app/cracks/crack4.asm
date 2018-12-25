; Make an OS freeze by CLI and HLT.
  bits 32
  cli

fin:
  hlt
  jmp fin
