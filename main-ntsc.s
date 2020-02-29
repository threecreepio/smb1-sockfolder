.segment "INES"
	.byte "NES",$1A
	.byte 2 ; prg
    .byte 1 ; chr
	.byte %00000001 ; flags 6

BUILD_NTSC=1
.segment "SMBPRG"
.include "smb.asm"

.segment "SMBCHR"
.incbin "smbchr.bin"
