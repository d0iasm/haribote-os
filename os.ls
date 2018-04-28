/* 
 *
 * os.ls to link object files.
 *
 */

OUTPUT_FORMAT("binary");

SECTIONS {
	.head 0x0 : {
		LONG(64 * 1024) /* 0 : size(stack+.data+heap) */
		LONG(0x69726148) /* 4 : "Hari" */
		LONG(0) /* 8 : mmarea*/
		LONG(0x310000) /* 12 : stack初期値 & .data転送先 */
		LONG(SIZEOF(.data)) /* 16 : size of .data */
		LONG(LOADADDR(.data)) /* 20 : size of .data */
		LONG(0xE9000000) /* 24 : E9000000 */
		LONG(hari_main - 0x20) /* 28 : entry - 0x20 */
		LONG(0x01) /* 32 : heap領域開始アドレス */
	}

	.text : {*(.text)}

	.data 0x310000 : AT ( ADDR(.text) + SIZEOF(.text) ) {
		*(.data)
		*(.rodata*)
		*(.bss)
	}

	/DISCARD/ : { *(.eh_frame) }
}


