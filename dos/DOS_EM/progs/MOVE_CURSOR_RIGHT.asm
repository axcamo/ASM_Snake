; ****************************************
; Moves cursor one position to the right
; If the column limit is reached, the cursor does not move
; Cursor size if kept
; Entry:
; -
; Returns:
; -
; Modifies:
; -
; Uses:
; SCREEN_MAX_COLS
; Calls:
; GET_CURSOR_PROP
; SET_CURSOR_PROP
; ****************************************
PUBLIC MOVE_CURSOR_RIGHT
MOVE_CURSOR_RIGHT PROC NEAR
 ; Insert your code here

CALL GET_CURSOR_PROP
CMP DH, SCREEN_MAX_COLS
JNZ IF_NO_ZERO
JMP END

IF_NO_ZERO:
	ADD DH, 1
	CALL SET_CURSOR_PROP

END:

 RET
MOVE_CURSOR_RIGHT ENDP 