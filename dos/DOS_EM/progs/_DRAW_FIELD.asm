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

FILL:	
	CMP DL, FIELD_C1
	JZ FILL_X

	CMP DL, FIELD_C2
	JZ FILL_X

	JMP FILL_Y
FILL_Y:
	CALL PRINT_CHAR_ATTR
	
	PUSH DX
	MOV DH, FIELD_R2
	CALL MOVE_CURSOR
	CALL PRINT_CHAR_ATTR
	POP DX

	JMP UPDATE_CURSOR
	
FILL_X:
	CALL PRINT_CHAR_ATTR

	CALL MOVE_CURSOR_RIGHT

	CMP AH, 0
	JZ UPDATE_CURSOR
	JNZ FILL_X

UPDATE_CURSOR:
	CMP DL, FIELD_C2
	JZ END

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