OUTPUT_FORMAT("elf64-x86-64")
OUTPUT_ARCH(i386:x86-64)
ENTRY(efi_main)
SECTIONS
{
	. = 4096;
	ImageBase = .;
	.hash : { *(.hash) }
	.gnu.hash : { *(.gnu.hash) }
	. = ALIGN(4096);
	.text :
	{
		_text = .;
		*(.text)
		*(.text.*)
		*(.gnu.linkonce.t.*)
		. = ALIGN(16);
	}
	_etext = .;
	_text_size = . - _text;
	. = ALIGN(4096);
	.rdata :
	{
		_data = .;
		*(.got.plt)
		*(.got)
		*(.rodata*)
		*(.srodata)
		*(.gnu.linkonce.r.*)
	}
	. = ALIGN(4096);
	.data :
	{
		*(.data*)
		*(.sdata*)
		*(.gnu.linkonce.d.*)
	}
	. = ALIGN(4096);
	.bss :
	{
		*(.sbss)
		*(.scommon)
		*(.dynbss)
		*(.bss)
		*(.gnu.linkonce.b.*)
		*(COMMON)
	}
	. = ALIGN(4096);
	.dynamic  : { *(.dynamic) }
	. = ALIGN(4096);
	.rel :
	{
		*(.rel.data)
		*(.rel.data.*)
		*(.rel.got)
		*(.rel.stab)
	}
	_edata = .;
	_data_size = . - _etext;
	. = ALIGN(4096);
	.reloc :
	{
		LONG(_data);
		LONG(10);
		SHORT(0);
		*(.reloc)
	}
	. = ALIGN(4096);
	.dynsym   : { *(.dynsym) }
	. = ALIGN(4096);
	.dynstr   : { *(.dynstr) }
	. = ALIGN(4096);
	/DISCARD/ :
	{
		*(.rel.reloc)
		*(.eh_frame)
		*(.note*)
		*(.comment*)
	}
}
