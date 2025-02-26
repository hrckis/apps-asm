;***************************************************************************
;
; Program for education in subject "Assembly Languages" and "APPS"
; petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
;
; Empty project
;
;***************************************************************************

    bits 64

    section .data

    ; variables
    extern g_int_y
    extern g_char_arr
    ;global g_some_asm_var
    ;extern g_some_c_var

;g_some_asm_var dd ?

;***************************************************************************

    section .text

    global move
move:
    mov al, [ g_int_y ]
    mov [ g_char_arr ], al
    mov al, [ g_int_y + 1 ]
    mov [ g_char_arr + 1 ], al
    mov al, [ g_int_y + 2 ]
    mov [ g_char_arr + 2 ], al
    mov al, [ g_int_y + 3 ]
    mov [ g_char_arr + 3 ], al
    ret

    ; functions

    ;global some_asm_function
    ;extern some_c_function

;some_asm_function:
    ;ret