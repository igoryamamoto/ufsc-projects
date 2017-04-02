; multi-segment executable file template.

interrupt_handlers segment
    
    handle90h:
    
    mov ax,cs:atraso
    
    xor ax,0a0h
    
    mov cs:atraso,ax
    
    iret
    
    handle91:
    iret
    
    handle92:
    iret

ends
   
   
   
stack segment
    dw   128  dup(0)
ends
   
   
   
code segment
start:

#start=DAS5332_Temp.exe#

LEDS equ 21h

defhandle90h:
                    
    mov ax, 00    ;passa o segmento 0000 para es pelo registrador ax
    
    mov es, ax
    
    mov bx, interrupt_handlers
    
    mov es:[0240h], offset handle90h    ;Atribuicao do endereco do tratador de int 90h
                                        ;na tabela de vetores de interrupcao
    mov es:[0242h], bx              
            
inicio:
 
    mov si, 00            ;inicia si em 0

repeat:
    
    mov al, cs:SEQ_LEDS[si] ;coloca o elemento de indice si da lista em al
    
    out LEDS, al          ;saida nos leds
    
    mov cx,cs:atraso          ;valor pra ser usado no loop
    
delay:

    loop delay
                         ;vai para o proximo indice da lista
    inc si               
    
    cmp si, 12           ;verifica se chegou no final da lista
    
    je inicio            ;caso tenha chegado, vai para o inicio
        
    jmp repeat           ;caso contrario, continua a percorrer

    mov ax, 4c00h ; exit to operating system.
    
    int 21h

SEQ_LEDS DB 81H,42H,24H,18H,00H,0FFH,00H,0FFH,00H,18H,24H,42H ; lista de 12 elementos    

atraso dw 30h
  
ends

end start ; set entry point and stop the assembler.
