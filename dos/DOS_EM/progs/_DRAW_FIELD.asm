; ****************************************
; Draws the rectangular field of the game
; Entry:
;
; Returns:
;
; Modifies:
;
; Uses:
; Coordinates of the rectangle:
; left - top: (FIELD_R1, FIELD_C1)
; right - bottom: (FIELD_R2, FIELD_C2)
; Character: ASCII_FIELD
; Attribute: ATTR_FIELD
; Calls:
; PRINT_CHAR_ATTR
; ****************************************
PUBLIC DRAW_FIELD
DRAW_FIELD PROC NEAR
 ; Insert your code here
; Pantalla 80 x 25

MOV AL, ASCII_FIELD
MOV BL, ATTR_FIELD

MOV DH, FIELD_R1
MOV DL, FIELD_C1

JMP BODY

; LABELS

FILL:	
	CMP DL, FIELD_C1
	JNZ FILL_X

	CMP DL, FIELD_C2
	JNZ FILL_X

	JMP FILL_Y
FILL_Y:
	CALL PRINT_CHAR_ATTR

	JMP UPDATE_CURSOR
	
FILL_X:
	;Omplir la filera amb un loop

UPDATE_CURSOR:
	CMP DH, FIELD_R2
	JNZ UPDATE_CURSOR_X
	JMP UPDATE_CURSOR_Y

	
UPDATE_CURSOR_X:
	ADD DH, 1
	JMP BODY
UPDATE_CURSOR_Y:
	ADD DL, 1
	MOV DH, FIELD_R1
	JMP BODY
BODY:
	CALL MOVE_CURSOR
	CALL GET_CURSOR_PROP

    	JMP FILL

END:

 RET
DRAW_FIELD ENDP