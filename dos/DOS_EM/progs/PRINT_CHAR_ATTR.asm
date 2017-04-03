; ****************************************
; Prints character and attribute in the
; current cursor position, page 0
; Keeps the cursor position
; Entry:
; AL: ASCII code
; BL: ATTRIBUTE code
; Returns:
;
; Modifies:
;
; Uses:
;
; Calls:
; int 10h, service AH=9
; ****************************************
PUBLIC PRINT_CHAR_ATTR
PRINT_CHAR_ATTR PROC NEAR
 ; Insert your code here

mov BH, 0
mov AH, 9
int 10h

 RET
PRINT_CHAR_ATTR ENDP 
