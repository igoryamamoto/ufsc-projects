;Lab07
;DAS5332 - Arquitetura e Programacao de Sistemas Microcontrolados
;Aluno: Igor Assis Rocha Yamamoto
;Matricula: 14101045
;Professor: Werner Kraus Junior           

#start=DAS5332_Temp.exe#

org 100h

LEDS equ 21h

CHAVES equ 20h
 
deftrata90h:

    ;define o tratador na tabela de enderecos

    mov ax, 00
    
    mov es, ax
    
    mov es:[0240h], offset trata90h
    
    mov es:[0242h], cs
 
inicio:

    mov si, 00

repeat:
    
    mov al, SEQ_LEDS[si]    ;move o elemento da lista de indice si para al
    
    out LEDS, al            ;saida do elemento da lista nos leds
    
    mov cx, 30h             ;valor de atraso
    
delay:

    loop delay
        
    inc si                  ;percorre o indicie da lista
    
    cmp si, size            ;verifica se a lista chegou ao final
    
    je inicio               ;caso tenha chegado ao fim, recomeca
        
    jmp repeat              ;caso contrario, continua percorrendo a lista
    
trata90h:
   
    in al, CHAVES           ;move o valor das chaves pressionadas no momento da interrupcao
    
    inc size
    
    mov di, size
    
    mov SEQ_LEDS[di], al
    
    iret
 

ret

size dw 1

SEQ_LEDS db 00h
