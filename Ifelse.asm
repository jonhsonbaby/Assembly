%include"io.inc"
section .data
section .text
Min:
    mov eax, ebx
    ret
Max:
    cmp eax, ebx
    jle Min
    ret
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    xor ebx, ebx
    mov eax, 5
    mov ebx, 4
    call Max
    PRINT_DEC 4, eax
    ret