%include "io.inc"
section .data
number dw 8h
section .text
tinhtong:
    add eax, esi
    dec esi
    cmp esi, 0
    jne tinhtong
    ret
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov esi, 8
    call tinhtong
    PRINT_DEC 2, eax
    ret