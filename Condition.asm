%include'io.inc'
section .data
va dd 10,6,3,2,4,5,6,5,4,6,7
min dd 5
len equ ($ - va)/4
section .text
L1: 
    mov ebx, 2
    ret
L2:
    mov ebx, 4
    ret
L3:
    mov ecx, 6
    ret
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    xor ebx, ebx
    xor ecx, ecx
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; If(op1 == op2)
;   x = 1
; else
;   x = 2

;   mov eax, 2
;   cmp eax, 2
;   je L1
;   mov ebx, 1
;   ret

; if(<=) jbe(unsign) or jle(sign)
; if(>=) jae(unsign) or jge(sign)

; if(al > bl and bl > cl)
;    mov al, 5h
;    mov bl, 3h
;    mov cl, 2h
;    cmp al, bl
;    jle L2
;    cmp bl, cl
;    jle L3
;    mov eax, 1
;    ret

; if(al > bl or bl > cl)
;    mov al, 5h
;    mov bl, 4h
;    mov cl, 7h
;    cmp al, bl
;    jg L1
;    cmp bl, cl
;    jg L1
;    mov eax, 1h
;    ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; for loop 1
;    mov ecx, 4
;    L4:
;        PRINT_DEC 4, ecx
;        loop L4
;    ret

; for loop 2
; for(i = 1-> 5)
;    for(j = i-> 5)

;    mov ecx, 5
;    L4:
;        push ecx
;        L5:
;            PRINT_DEC 4, ecx
;            loop L5
;        pop ecx
;        loop L4
;    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; while loop

;while( ebx <= val1)
;{
;    ebx = ebx + 5;
;    val1 = val1 - 1
;}  
;    mov eax, 25
;    mov ebx, 0
;    
;    L7:
;     add ebx, 5
;     sub eax, 1
;     jmp L6
;    L6:
;     cmp ebx, eax
;     jle L7      
;    
;    ret

;while (index < size)
;{
;    if ( array[index] > sample )
;    {
;        sum += array[index];
;    }
;    index ++;
;}

;    mov ecx, len
;    mov eax, 0
;    mov esi, 0
;    L7:
;        add eax, ebx
;        dec ecx
;        jmp L6
;    L6:
;        mov ebx, [va+esi]
;        add esi, 4
;        cmp ebx, 5
;        jg L7
;        dec ecx
;        cmp ecx, 0
;        jne L6
;    PRINT_DEC 4, eax
;    ret
    xor edx, edx
    mov eax, 12345h
    mov ebx, 10000h
    mul ebx
    ret
    