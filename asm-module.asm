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

    extern ip_int
    extern ip_bytes
    extern g_ip
    extern ip_address
    extern mac_address
    extern mac_oui
    extern mac_nic

    section .text

    global convert
convert:
    mov al, [ ip_int + 0 ]
    mov [ ip_bytes ], al
    mov al, [ ip_int + 1 ]
    mov [ ip_bytes + 1 ], al
    mov al, [ ip_int + 2 ]
    mov [ ip_bytes + 2 ], al
    mov al, [ ip_int + 3 ]
    mov [ ip_bytes + 3 ], al
    ret

    global get_rec
get_rec:
    mov al, [ g_ip + 1 ]
    mov cl, [ g_ip + 2 ]
    mov [ g_ip + 2 ], al
    mov [ g_ip + 1 ], cl
    ret

    global net_add
net_add:
    mov al, 0
    mov [ ip_address + 3 ], al
    ret

    global mac_split
mac_split:
    mov eax, [ mac_address + 0 ]
    mov [ mac_oui ], eax
    mov eax, [ mac_address + 4 ]
    mov [ mac_nic ], eax
    ret

;some_asm_function:
    ;ret