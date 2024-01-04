%include 'io.inc'
section .data
var1 dd 90d
var2 dd 246d
section .text
swap:
    mov ecx, eax
    mov eax, ebx
    mov ebx, ecx
    jmp L1
ucln:
    PRINT_STRING 'UCLN : '
    PRINT_DEC 4, eax
    ret 8
bcnn:
    mov ebx, eax
    mov eax, [var1]
    mov ecx, [var2]
    mul ecx
    div ebx
    PRINT_STRING 'BCNN : '
    PRINT_DEC 4, eax
    ret
    
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    xor ebx, ebx
    mov eax, [var1]
    mov ebx, [var2]
    cmp eax, ebx
    jl swap
    ; sử dụng phương pháp chia
    L1:
        cmp edx, 0
        je bcnn
        xor edx, edx
        div ebx
        mov eax, ebx
        mov ebx, edx
        jmp L1
    ret