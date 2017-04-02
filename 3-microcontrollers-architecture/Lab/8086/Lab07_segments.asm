; multi-segment executable file template.

#start=DAS5332_Temp.exe#

LEDS equ 21h

CHAVES equ 20h 
             
             
data segment
    
    size dw 1

    SEQ_LEDS DB 01h
    
    reserva db 32 dup(?)

ends
    
    
interrupt segment

trata90h:
   
    in al, CHAVES           ;move o valor das chaves pressionadas no momento da interrupcao
    
    mov di, ds:size
    
    inc ds:size
    
    mov ds:SEQ_LEDS[di], al
    
    iret
    
;trata91h:
    
ends
       
       
stack segment
    
    dw   128  dup(0)
    
ends
         
         
code segment
start:
    
deftrata90h:

    ;define o tratador na tabela de enderecos

    mov ax, interrupt
    
    mov ds, ax
    
    mov dx, offset trata90h
    
    mov ah, 25h
    
    mov al, 90h
    
    int 21h

defsegments:
    
    mov ax, data
    
    mov ds, ax

inicio:

    mov si, 00

repeat:
    
    mov al, ds:SEQ_LEDS[si]    ;move o elemento da lista de indice si para al
    
    out LEDS, al            ;saida do elemento da lista nos leds
    
    mov cx, 30h             ;valor de atraso
    
delay:

    loop delay
        
    inc si                  ;percorre o indicie da lista
    
    cmp si, ds:size            ;verifica se a lista chegou ao final
    
    je inicio               ;caso tenha chegado ao fim, recomeca
        
    jmp repeat              ;caso contrario, continua percorrendo a lista
        
    mov ax, 4c00h ; exit to operating system.
    
    int 21h    
ends

end start ; set entry point and stop the assembler.
