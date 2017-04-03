; ****************************************
; Read character and attribute at cursor position, page 0
; Entry:
;
; Returns:
; AL: ASCII CODE
; AH: ATTRIBUTE
; Modifies:
;
; Uses:
;
; Calls:
; int 10h, service AH=8
; ****************************************
PUBLIC READ_SCREEN_CHAR
READ_SCREEN_CHAR PROC NEAR
 ; Insert your code here
 
mov AH, 8
int 10h

RET

READ_SCREEN_CHAR ENDP 
