; ****************************************
; Print string to screen
; The string end character is '$'
; Entry:
; DX: pointer to string
; Returns:
; -
; Modifies:
; -
; Uses:
; SCREEN_MAX_COLS
; Calls:
; int 21h, service AH=9
; ****************************************
PUBLIC PRINT_STRING
PRINT_STRING PROC NEAR
 PUSH DX

 MOV AH,9
 INT 21h
 POP DX
 RET
PRINT_STRING ENDP
; ****************************************
; Print the score string, starting in the cursor
; (FIELD_C1, FIELD_R2) coordinate
; Entry:
; DX: pointer to string
; Returns:
; -
; Modifies:
; -
; Uses:
; SCORE_STR
; FIELD_C1
; FIELD_R2
; Calls:
; GET_CURSOR_PROP
; SET_CURSOR_PROP
; PRINT_STRING
; **************************************** 
2017.03.29
PUBLIC PRINT_SCORE_STRING
PRINT_SCORE_STRING PROC NEAR
 PUSH CX
 PUSH DX
 CALL GET_CURSOR_PROP ; Get cursor size
 MOV DH, FIELD_R2+1
 MOV DL, FIELD_C1
 CALL SET_CURSOR_PROP
 LEA DX, SCORE_STR
 CALL PRINT_STRING
 POP CX
 POP DX
 RET
PRINT_SCORE_STRING ENDP
; ****************************************
; Print the score string, starting in the
; current cursor coordinate
; Entry:
; -
; Returns:
; -
; Modifies:
; -
; Uses:
; PLAY_AGAIN_STR
; Calls:
; PRINT_STRING
; ****************************************
PUBLIC PRINT_PLAY_AGAIN_STRING
PRINT_PLAY_AGAIN_STRING PROC NEAR
 ; Insert your code here
 RET
PRINT_PLAY_AGAIN_STRING ENDP 