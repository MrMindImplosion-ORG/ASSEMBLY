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
  JPZ ON
  
  MOVW 0X00
  MOVWR PORTB
  JMP POLL
  
ON: 
  MOVW 0X01
  MOVWR PORTB
  JMP POLL

