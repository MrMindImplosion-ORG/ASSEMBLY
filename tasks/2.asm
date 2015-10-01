; Type your assembly code here.
; Click A or press F8 to assemble the code.
; Click S to Step or Increase-Clock-Rate

MOVW 0x01
MOVWR TRISC

MOVW 0X00
MOVWR TRISB

POLL:
  MOVRW PORTC
  XORW 0X01
  JPZ OFF
  JMP ON
  
OFF: 
  MOVRW PORTB
  ANDW 0X01
  MOVWR PORTB
  JMP POLL

ON:
  MOVWR PORTB
  ORW 0X01
  XORW 0X02
  MOVWR PORTB
  JMP POLL

