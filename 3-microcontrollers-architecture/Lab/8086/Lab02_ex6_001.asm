;
;Lab 02
;DAS 5332 - Arquitetura e Programacao de Sistemas Microcontrolados
;
;6. Modifique o programa anterior para que a durante a visualização
;  dos caracteres ASCII o avanço da soma seja mais lenta do que em 
;  outras regiões do intervalo [0 .. FFh].

org 100h

mov al, 00h

mov cx, 10h

;[0...9] em ascii eh [30h...39h]

;[a...z] em ascii eh [61h...7ah]

;[A...Z] em ascci eh [41h...5ah]

somador:

    add al, 01h
    
    cmp al, "0"
    
    je caracter_ascii
    
    cmp al, "a"
    
    je caracter_ascii 
    
    cmp al, "A"
    
    je caracter_ascii 

    mov ascii, al
        
    jmp somador
    
caracter_ascii:
    
    loop delay
    
    add al, 01h
    
    cmp al, 3ah 
    
    je somador
    
    cmp al, 7bh 
    
    je somador
    
    cmp al, 5bh 
    
    je somador
    
    mov ascii, al
    
    jmp caracter_ascii
        
delay:

    mov al, al
    
sair:

    ret
    
ascii db 00h





