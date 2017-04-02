
CHAVES equ 20h

LEDS equ 21h

#start=DAS5332_raiz.exe#    

    org 100h
    
    mov led_on, 01h  

repeat:

     mov al, led_on
     
     out LEDS, al
     
     mov cx, 30h

delay:

     loop delay
            
     in al, CHAVES
     
     test al, 10000000b
     
     jnz liga_led
     
     test al, 00000001b
          
     jz chave_aberta
     
     ror led_on,1
     
     jmp repeat
     
liga_led:

     and 

     jmp repeat
     
chave_aberta:

    rol led_on,1
    
    jmp repeat
     
led_on  db 01h