%include 'io.inc'
section .data
num dd 12345
section .text
print:
    PRINT_DEC 4, ebx
    pop ebp
    ret 8
global main
main:
    push ebp
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov ecx, 10
    mov ebx, 0
    mov eax, [num]
    L1:
        cmp eax, 0
        jle print
        xor edx, edx        
        div ecx
        push eax
        push edx
        
        mov eax, ebx
        mul ecx
        
        pop edx
        add eax, edx
        mov ebx, eax
        
        pop eax
        jmp L1
    ret