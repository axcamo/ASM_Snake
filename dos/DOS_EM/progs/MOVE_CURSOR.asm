; ****************************************
; Get cursor properties: coordinate and size (page 0)
; Entry:
;
; Returns:
; (DH, DL): coordinates -> (row, col)
; (CH, CL): cursor size
; Modifies:
; -
; Uses:
; -
; Calls:
; int 10h, service AH=3
; ****************************************
PUBLIC GET_CURSOR_PROP
GET_CURSOR_PROP PROC NEAR
 PUSH AX
 PUSH BX
 MOV AH, 3
 XOR BX, BX
 INT 10h
 POP BX
 POP AX
 RET

GET_CURSOR_PROP ENDP
; ****************************************
; Set cursor properties: coordinate and size (page 0)
; Entry:
; (DH, DL): coordinates -> (row, col)
; (CH, CL): cursor size
; Returns:
;
; Modifies:
; -
; Uses:
; -
; Calls:
; int 10h, service AH=2
; **************************************** 

PUBLIC SET_CURSOR_PROP
SET_CURSOR_PROP PROC NEAR
 PUSH AX
 PUSH BX
 MOV AH, 2
 XOR BX, BX
 INT 10h
 POP BX
 POP AX
 RET

SET_CURSOR_PROP ENDP
; ****************************************
; Move cursor to coordinate
; Cursor size if kept
; Entry:
; (DH, DL): coordinates -> (row, col)
; Returns:
; -
; Modifies:
; -
; Uses:
; -
; Calls:
; GET_CURSOR_PROP
; SET_CURSOR_PROP
; ****************************************
PUBLIC MOVE_CURSOR
MOVE_CURSOR PROC NEAR
 ; Insert your code here

;MOV AH, DH
;MOV AL, DL
PUSH DX
CALL GET_CURSOR_PROP
;MOV DH, AH
;MOV DL, AL
POP DX
CALL SET_CURSOR_PROP

 RET
MOVE_CURSOR ENDP 
