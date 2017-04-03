; ****************************************
; Prints character in the current cursor position, page 0
; Cursor moves one position right
; Entry:
; AL: ASCII CODE
; Returns:
;
; Modifies:
;
; Uses:
;
; Calls:
; int 21h, service AH=2
; ****************************************
PUBLIC PRINT_CHAR
PRINT_CHAR PROC NEAR
 ; Insert your code here
 RET
PRINT_CHAR ENDP 
