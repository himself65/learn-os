ENTRY(foo);

PHDRS
{
  headers PT_PHDR PHDRS ;
  interp PT_INTERP ;
  text PT_LOAD FILEHDR PHDRS ;
  data PT_LOAD ;
  dynamic PT_DYNAMIC ;
}

SECTIONS
{
    . = SIZEOF_HEADERS;
    .text : {
        * (.text);
    }
    .data : {
        * (.data);
    }
    .bss : {
        * (.bss);
    }
}
