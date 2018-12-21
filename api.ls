OUTPUT_FORMAT("binary");

SECTIONS
{
  .head 0x0 : {
    LONG(128 * 1024) /* 0x0000(DWORD): The size of data segment for API. */
    LONG(0x69726148) /* 0x0004(DWORD): Signature "Hari". */
    LONG(0) /* 0x0008(DWORD): The size of spare area in data segment. */
    LONG(0x0400) /* 0x000c(DWORD): Init value of ESP & the destination of .data. */ 
    LONG(SIZEOF(.data)) /* 0x0010(DWORD): The size of .data. */
    LONG(LOADADDR(.data)) /* 0x0014(DWORD): The file place of init value of .data. */
    LONG(0xE9000000) /* 0x0018(DWORD): 0xE9000000. JMP to the app's entry address. */
    LONG(hari_main - 0x20) /* 0x001c(DWORD): Entry address - 0x20. */
    LONG(24 * 1024) /* 0x0020(DWORD): Start address of heap area(malloc area). */
  }

  /* The area for program code. */
  .text : { *(.text) }

  /* The area for rewritable variables having initial values. */
  .data 0x0400 : AT ( ADDR(.text) + SIZEOF(.text) ) {
    *(.data)
    *(.rodata) /* The area for const variables. */
    *(.bss*) /* The area for variables not having initial values. */
  }

  /DISCARD/ : { *(.eh_frame) }
}
