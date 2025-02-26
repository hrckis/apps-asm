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

    extern g_int_array
    extern g_char_array
    extern g_int_output
    extern g_neg_val_array
    extern vowels

;***************************************************************************

    section .text

    global func
func:
    enter 0, 0
    mov rcx, 0
    mov eax, 0
    mov edi, 0

.back:
    cmp rcx, 15
    jnl .end_for

    mov edi, [ g_int_array + rcx * 4 ]
    test edi, 1
    jnz .not_even
    inc eax

.not_even:  
    inc rcx
    jmp .back

.end_for:
    mov ecx, 4
    mov edx, 0
    div ecx
    mov [ g_int_output ], edx
    neg dword [ g_int_output ]

    leave
    ret

    global negative_values
negative_values:
    enter 0, 0
    mov rcx, 0

.back:
    cmp rcx, 15
    jnl .end_for

    mov eax, [ g_int_array + rcx * 4 ]
    cmp eax, 0
    jge .positive
    mov [ g_neg_val_array + rcx * 4 ], eax

.positive:
    inc rcx
    jmp .back

.end_for:

    leave
    ret

    global count_vowels
count_vowels:
    enter 0, 0
    mov rcx, 0
    mov eax, 0

.back:
    cmp [ g_char_array + rcx ], byte 0
    je .end_for

    cmp [ g_char_array + rcx ], byte 'a'
    je .vowel
    cmp [ g_char_array + rcx ], byte 'e'
    je .vowel
    cmp [ g_char_array + rcx ], byte 'i'
    je .vowel
    cmp [ g_char_array + rcx ], byte 'o'
    je .vowel
    cmp [ g_char_array + rcx ], byte 'u'
    je .vowel

    jmp .next

.vowel:
    inc eax

.next:
    inc rcx
    jmp .back

.end_for:
    mov [ vowels ], eax
    leave
    ret

    global char_array_replace
char_array_replace:
    enter 0, 0
    mov rcx, 0
    mov eax, 0

.back:
    cmp [ g_char_array + rcx ], byte 0
    je .end_for

    cmp [ g_char_array + rcx ], byte 'a'
    je .replace
    cmp [ g_char_array + rcx ], byte 'e'
    je .replace
    cmp [ g_char_array + rcx ], byte 'i'
    je .replace
    cmp [ g_char_array + rcx ], byte 'o'
    je .replace
    cmp [ g_char_array + rcx ], byte 'u'
    je .replace

    jmp .next

.replace:
    inc eax
    cmp eax, 3
    jne .next
    mov byte [ g_char_array + rcx ], '3'
    mov eax, 0

.next:
    inc rcx
    jmp .back

.end_for:
    leave
    ret