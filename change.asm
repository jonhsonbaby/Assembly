section .data
ar dd 'adfgh'
c dd 'f'
d dd 'e'
len equ ($-ar)
section .text
change:
    mov [ar+esi], ebx
    add esi, 4
    dec ecx
    jmp L1
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov eax, [c]
    mov ebx, [d]
    mov ecx, len
    mov esi, 0
    L1:
        cmp [ar+esi],eax
        je change
        add esi, 4
        loop L1
    loop L1
    ret