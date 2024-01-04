%include 'io.inc'
section .bss
section .data
num db 17
first db 0
last db 0
arr db 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17
len equ ($-arr)-1
section .text
middle:
    PRINT_STRING 'vi tri : '
    add esi, 1
    PRINT_DEC 4, esi
    ret
left:
    inc bl
    mov [first], bl
    jmp L1
right:
    dec bl
    mov [last], bl
    jmp L1
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    xor ebx, ebx
    mov byte [first], 0
    mov byte [last], len
    L1:
        mov bl, [first]
        add bl,[last]
        shr bl, 1
        movzx esi, byte bl
        mov al, [arr+esi]
        cmp al, [num]
        je middle
        jl left
        jg right
    ret