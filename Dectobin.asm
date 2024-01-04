%include"io.inc"
section .data
section .text
    Divide:
        inc esi
        xor edx, edx
        mov ecx, 2h
        div ecx
        push edx
        cmp eax, 0h
        jne Divide
        jmp print
        ret
    print:
        pop edx
        mov eax, edx
        PRINT_DEC 4, eax
        dec esi
        cmp esi, 0h
        jne print
        ret
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov eax, 19
    mov esi, 0h
    jmp Divide
    ret