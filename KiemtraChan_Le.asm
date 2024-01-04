%include"io.inc"
section .data
section .text
global main
chan:
    PRINT_STRING 'so chan'
    ret
le:
    PRINT_STRING 'so le'
    ret 
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov al, 18
    test al, 1
    jz chan
    jmp le
    ret