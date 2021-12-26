section .multiboot_header ; section named mutli_boot_header 
header_start:
    dd 0xe85250d6                ; magic number (multiboot 2) dd stands for define double
                                 ; 32 bit value
    dd 0                         ; architecture 0 (protected mode i386)
    dd header_end - header_start ; header length
    dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start))
    dw 0    ; type
    dw 0    ; flags
    dd 8    ; size
header_end: