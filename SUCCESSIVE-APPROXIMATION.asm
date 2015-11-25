; curr step - B27

movw 0x80
MOVWR TRISA
movw 0x00
movwr porta

add6:
    movrw porta
    addw 0x40
    movwr porta
    movrw porta

    xorw 0x80
    andw 0x80
    jpz add5
    jmp sub6

add5:
    movrw porta
    addw 0x20
    movwr porta
    movrw porta

    xorw 0x80
    andw 0x80
    jpz add4
    jmp sub5

add4:
    movrw porta
    addw 0x10
    movwr porta
    movrw porta

    xorw 0x80
    andw 0x80
    jpz add3
    jmp sub4

add3:
    movrw porta
    addw 0x08
    movwr porta
    movrw porta

    xorw 0x80
    andw 0x80
    jpz add2
    jmp sub3

add2:
    movrw porta
    addw 0x04
    movwr porta
    movrw porta

    xorw 0x80
    andw 0x80
    jpz add1
    jmp sub2

add1:
    movrw porta
    addw 0x02
    movwr porta
    movrw porta

    xorw 0x80
    andw 0x80
    jpz add0
    jmp sub1

add0:
    movrw porta
    addw 0x01
    movwr porta
    movrw porta

    xorw 0x80
    andw 0x80
    jpz finish
    jmp sub0

sub6:
    movrw porta
    subw 0x40
    movwr porta
    jmp add5

sub5:
    movrw porta
    subw 0x20
    movwr porta
    jmp add4

sub4:
    movrw porta
    subw 0x10
    movwr porta
    jmp add3

sub3:
    movrw porta
    subw 0x08
    movwr porta
    jmp add2

sub2:
    movrw porta
    subw 0x04
    movwr porta
    jmp add1

sub1:
    movrw porta
    subw 0x02
    movwr porta
    jmp add0

sub0:
    movrw porta
    subw 0x01
    movwr porta
    jmp finish

finish:
    nop
