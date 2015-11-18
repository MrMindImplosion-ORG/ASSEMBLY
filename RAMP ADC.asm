; Type your assembly code here.
; Click A or press F8 to assemble the code.
; Click S to Step or Increase-Clock-Rate

movw  0x80
movwr trisa

poll:
    movw 0x00
    movwr porta
pollloop:
    movrw porta
    addw 0x01
    movwr porta

    andw 0x80
    xorw 0x80
    jpz pollloop
    jmp pollend

pollend:
    jmp poll
