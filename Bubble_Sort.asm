%include 'io.inc'
section .data
arr dd 4,3,4
len equ ($-arr)/4-1
max equ len*4
section .text
nextngoai:
    pop ecx
    loop ngoai
    mov ecx, len
    inc ecx
    mov esi, edi
    mov edi, 0
    cmp esi, 4
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
        trong:
            mov eax, [arr+edi]
            mov ebx, [arr+edi+4]
            cmp eax, ebx
            jge nexttrong
            mov [arr+edi], ebx
            mov [arr+edi+4], eax
            add edi, 4
            loop trong
        pop ecx
        loop ngoai
    mov ecx, len
    inc ecx
    mov edi, 0  
    print:
        mov eax, [arr+edi]
        PRINT_DEC 4, eax
        add edi, 4
        loop print
    ret