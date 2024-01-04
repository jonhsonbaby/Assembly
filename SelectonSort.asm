%include 'io.inc'
section .data
arr dd 4,3,4
len equ ($-arr)/4-1
max equ len*4
section .text
nextngoai:
    add esi, 4
    pop ecx
    loop ngoai
    mov ecx, len
    inc ecx
    mov edi, 0
    cmp esi, max
    je print
nexttrong:
    add edi, 4
    dec ecx
    cmp ecx, 0
    je nextngoai
    jmp trong
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov ecx, len
    mov esi, 0
    ngoai:
        push ecx
        mov edi, esi
        add edi, 4
        trong:
            mov eax, [arr+esi]
            mov ebx, [arr+edi]
            cmp eax, ebx
            jle nexttrong
            mov [arr+esi], ebx
            mov [arr+edi], eax
            add edi, 4
            loop trong
        add esi, 4
        pop ecx
        loop ngoai
        
    print:
        mov eax, [arr+edi]
        PRINT_DEC 4, eax
        add edi, 4
        loop print
    ret