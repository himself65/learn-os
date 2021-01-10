SECTIONS {
        . = 0x0000;
        .text : {
              * (.text);
        }
        flash_sdata = .;

        ram_sdata = .;
        .data : AT (flash_sdata) {
              * (.data);
        }
        ram_edata = .;
        data_size = ram_edata - ram_sdata;
}
