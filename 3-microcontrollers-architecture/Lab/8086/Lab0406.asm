;Lab04  && Lab06
;DAS5332 - Arquitetura e Programacao de Sistemas Microcontrolados
;Aluno: Igor Assis Rocha Yamamoto
;Matricula: 14101045
;Professor: Werner Kraus Junior
               
;Modos de enderecamento
;
;-> Direto: mov [SEQ_LEDS], 82h
;-> Indireto: lea bx, SEQ_LEDS
;             mov [bx], 82h 
;-> Indexado: mov si, 00
;             mov SEQ_LEDS[si], 114


;#start=DAS5332_Temp.exe#


;;Ex. 2 + int
;
;org 100h
;
;LEDS equ 21h
;
;deftrata90h:
;                    
;    mov ax, 00    ;passa o segmento 0000 para es pelo registrador ax
;    
;    mov es, ax
;    
;    mov es:[0240h], offset trata90h ;Atribuicao do endereco do tratador de int 90h
;                                    ;na tabela de vetores de interrupcao
;    mov es:[0242h], cs              ;
;    
;inicio:
; 
;    mov si, 00            ;inicia si em 0
;
;repeat:
;    
;    mov al, SEQ_LEDS[si] ;coloca o elemento de indice si da lista em al
;    
;    out LEDS, al          ;saida nos leds
;    
;    mov cx,atraso          ;valor pra ser usado no loop
;    
;delay:
;
;    loop delay
;                         ;vai para o proximo indice da lista
;    inc si               
;    
;    cmp si, 7           ;verifica se chegou no final da lista
;    
;    je inicio            ;caso tenha chegado, vai para o inicio
;        
;    jmp repeat           ;caso contrario, continua a percorrer
;
;ret
;
;trata90h:
;
;    xor atraso,0a0h      ;mascara para alternar o atraso entre 30h e 80h
;    
;    iret
;
;SEQ_LEDS DB 81H,42H,24H,18H,00H,0FFH,00H,0FFH,00H,18H,24H,42H ; lista de 12 elementos
;
;SEQ_LEDS_2 DB 81H,42H,24H,18H,00H,0FFH,00H ; lista de 7 elementos
;
;atraso dw 30h 

org 100h

;LEDS equ 21h
;
;deftrata90h:
;                    
;    mov ax, 00    ;passa o segmento 0000 para es pelo registrador ax
;    
;    mov es, ax
;    
;    mov es:[0240h], offset trata90h ;Atribuicao do endereco do tratador de int 90h
;                                    ;na tabela de vetores de interrupcao
;    mov es:[0242h], cs              ;
    
inicio:
 
    mov si, 00

repeat:

    mov al, lista[si]

    cmp al, lista[si+1]
    
    ja troca
    
    cmp si,9
    
    je fim 
    
    inc si
    
    jmp repeat
    
troca:

    mov bl, lista[si]

    mov al , lista[si+1]
    
    mov lista[si+1], bl
    
    mov lista[si], al
    
    inc si
    
    jmp repeat    

fim:

    ret

;trata90h:
;
;    xor atraso,0a0h      ;mascara para alternar o atraso entre 30h e 80h
;    
;    iret

lista DB 6,8,9,7,3,4,5,2,1,0

;iter dw 00h