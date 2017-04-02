;Lab05 - Pilhas e subrotinas
;DAS5332 - Arquitetura e Programacao de Sistemas Microcontrolados
;Aluno: Igor Assis Rocha Yamamoto
;Matricula: 14101045
;Professor: Werner Kraus Junior



#start=DAS5332_Temp.exe#

org 100h
 
inicio:
 
    mov si, 00
    
    mov cx, 12

repeat:
    
    mov al, SEQ_LEDS[si]
    
    out 21h, al
    
    push cx

    call delay
        
    pop cx
    
    inc si
    
    loop repeat
    
    jmp inicio 

delay:

    mov 30h,cx

loop_delay:

    loop loop_delay
    
    ret

ret

SEQ_LEDS DB 81H,42H,24H,18H,00H,0FFH,00H,0FFH,00H,18H,24H,42H

;SEQ_LEDS DB 0afH,41H,75H,74H,6fH,6dH,61H,87H,61H,6fH,21H,21H
