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

    extern str
    extern arr
    extern arr_char
    extern arr_int
    extern pass_char
    extern pass

;***************************************************************************

    section .text

    ; functions
    global swap 
swap:
    mov al, [ str + 0 ]
    mov cl, [ str + 4 ]
    mov [ str + 0 ], cl
    mov [ str + 4 ], al
    ret

    global swap_long
swap_long:
    mov rax, [ arr + 1 * 8 ]
    mov rcx, [ arr + 2 * 8 ]
    mov [ arr + 1 * 8 ], rcx
    mov [ arr + 2 * 8 ], rax
    ret

    global convert
convert:
    movsx eax, byte [ arr_char + 0 ]
    movsx ecx, byte [ arr_char + 1 ]
    mov [ arr_int + 0 ], eax
    mov [ arr_int + 1 * 4 ], ecx
    ret

    global to_str
to_str:
    mov al, [ pass + 0 ]
    mov [ pass_char + 7 ], al
    mov al, [ pass + 1 ]
    mov [ pass_char + 6 ], al
    mov al, [ pass + 2 ]
    mov [ pass_char + 5 ], al
    mov al, [ pass + 3 ]
    mov [ pass_char + 4 ], al 
    mov al, [ pass + 4 ]
    mov [ pass_char + 3 ], al
    mov al, [ pass + 5 ]
    mov [ pass_char + 2 ], al
    mov al, [ pass + 6 ]
    mov [ pass_char + 1 ], al
    mov al, [ pass + 7 ]
    mov [ pass_char + 0 ], al
    ret