;
;Lab 02
;DAS 5332 - Arquitetura e Programacao de Sistemas Microcontrolados
;
;6. Modifique o programa anterior para que a durante a visualização
;  dos caracteres ASCII o avanço da soma seja mais lenta do que em 
;  outras regiões do intervalo [0 .. FFh].

org 100h 

mov al, 00h

mov cx, 40h

;[0...9] em ascii corresponde a [30h...39h]

;[a...z] em ascii corresponde a [61h...7ah]

;[A...Z] em ascci corresponde a [41h...5ah]

somador:

    mov ascii, al

    add al, 01h
    
    cmp al, "0"
    
    je caracter_ascii
    
    cmp al, "a"
    
    je caracter_ascii 
    
    cmp al, "A"
    
    je caracter_ascii
        
    jmp somador
   
delay:
    
    loop delay
    
    mov cx, 10h
    
    add al, 01h
          
caracter_ascii:
    
    cmp al, 3ah 
    
    je somador
    
    cmp al, 7bh 
    
    je somador
    
    cmp al, 5bh 
    
    je somador
    
    mov ascii, al
    
    jmp delay
    
sair:

    ret

ascii db 00h
 