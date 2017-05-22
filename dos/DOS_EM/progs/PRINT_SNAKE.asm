; ****************************************
; Prints a new tile of the snake, at the current cursos position
; Entry:
;
; Returns:
;
; Modifies:
;
; Uses:
; character: ASCII_SNAKE
; attribute: ATTR_SNAKE
; Calls:
; PRINT_CHAR_ATTR
; ****************************************
PUBLIC PRINT_SNAKE
PRINT_SNAKE PROC NEAR
 ; Insert your code here

MOV AL, ASCII_SNAKE
MOV BL, ATTR_SNAKE

CALL PRINT_CHAR_ATTR

 RET
PRINT_SNAKE ENDP 
