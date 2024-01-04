%include"io.inc"
section .data
section .text
maxc:
    mov eax, ecx
    ret
maxb:
    mov eax, ebx
    ret
max:
    cmp eax,ebx
    jl maxb
    cmp eax, ecx
    jl maxc
    ret
global main
main:
    mov ebp, esp; for correct debugging
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov eax, -50
    mov ebx, 20
    mov ecx, 60
    call max
    PRINT_DEC 4, eax
        ret