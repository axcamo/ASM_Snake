; ****************************************
; Reads char from keyboard
; If char is not available, blocks until a key is pressed
; The char is not output to screen
; Entry:
;
; Returns:
;
; Modifies:
;
; Uses:
;
; Calls:
;
; ****************************************
PUBLIC READ_CHAR
READ_CHAR PROC NEAR
 ; Insert your code here

mov AH, 8
int 21h

 RET

READ_CHAR ENDP 