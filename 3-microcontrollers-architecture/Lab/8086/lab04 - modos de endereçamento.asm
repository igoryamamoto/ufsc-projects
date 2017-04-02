;Lab04
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


#start=DAS5332_Temp.exe#

org 100h
 
inicio:
 
    mov si, 00

repeat:
    
    mov al, SEQ_LEDS[si]
    
    out 21h, al
    
    mov cx, 30h
    
delay:

    loop delay
        
    inc si
    
    cmp si, 12
    
    je inicio
        
    jmp repeat 

ret

SEQ_LEDS DB 81H,42H,24H,18H,00H,0FFH,00H,0FFH,00H,18H,24H,42H

;SEQ_LEDS DB 0afH,41H,75H,74H,6fH,6dH,61H,87H,61H,6fH,21H,21H