OUTPUT_FORMAT("binary");

SECTIONS
{
  .head 0x0 : {
    LONG(128 * 1024)
      LONG(0x69726148)
      LONG(0)
      LONG(0x0400)
      LONG(SIZEOF(.data))
      LONG(LOADADDR(.data))
      LONG(0xE9000000)
      LONG(hari_main - 0x20)
      LONG(24 * 1024)
  }

  .text : { *(.text) }

  .data 0x0400 : AT ( ADDR(.text) + SIZEOF(.text) ) {
    *(.data)
      *(.rodata)
      *(.bss*)
  }

  /DISCARD/ : { *(.eh_frame) }
}
