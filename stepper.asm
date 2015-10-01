; =============================================
; ===== OPEN LOOP STEPPER MOTOR CONTROL   =====
; ===== MAKE THE MOTOR SPIN CLOCKWISE     =====
; =============================================
JMP ASLOW
JMP START

SLOW:
  MOVW 0X01
  MOVWR PORTA
  MOVW 0X03
  MOVWR PORTA
  MOVW 0X02
  MOVWR PORTA
  MOVW 0X06
  MOVWR PORTA
  MOVW 0X04
  MOVWR PORTA
  MOVW 0X0C
  MOVWR PORTA
  MOVW 0X08
  MOVWR PORTA
  MOVW 0X09
  MOVWR PORTA

FAST:
  MOVW 0X01
  MOVWR PORTA
  MOVW 0X02
  MOVWR PORTA
  MOVW 0X04
  MOVWR PORTA
  MOVW 0X08
  MOVWR PORTA

ASLOW:
  MOVW 0X09
  MOVWR PORTA
  MOVW 0X08
  MOVWR PORTA
  MOVW 0X0C
  MOVWR PORTA
  MOVW 0X04
  MOVWR PORTA
  MOVW 0X06
  MOVWR PORTA
  MOVW 0X02
  MOVWR PORTA
  MOVW 0X03
  MOVWR PORTA
  MOVW 0X01
  MOVWR PORTA
JMP ASLOW
AFAST:
  MOVW 0X08
  MOVWR PORTA
  MOVW 0X04
  MOVWR PORTA
  MOVW 0X02
  MOVWR PORTA
  MOVW 0X01
  MOVWR PORTA

START:
  MOVW 0X00
  MOVWR TRISA
  MOVWR PORTA
  MOVW 0XFF
  MOVW 0X00
JMP START

; =============================================
; TASK: Complete this program to make it
;       1) spin clockwise
;       2) spin anticlockwise
;       3) spin clockwise in half steps
; =============================================