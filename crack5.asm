; Call io_cli() in OS. This place is defined in a map file.
  bits 32
  call 2*8:0x34b2
  mov edx, 4
  int 0x40
