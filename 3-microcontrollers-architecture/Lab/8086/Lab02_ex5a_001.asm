;
;Lab 02
;DAS 5332 - Arquitetura e Programacao de Sistemas Microcontrolados
;
;5. No painel de memoria de programa do emulador do EMU8086,
;  os bytes em memoria sao mostrados em hexadecimal, decimal e
;  no simbolo ASCII respectivo. Consultando uma tabela ASCII,
;  faca um programa que mostre, em uma posicao de memoria qualquer,
;  os caracteres [0 .. 9], [A ... Z] e [a .. z], excluindo os demais. 

org 100h

mov ascii, 30h

;[0...9] em ascii eh [30h...39h]

;[a...z] em ascii eh [61h...7ah]

;[A...Z] em ascci eh [41h...5ah]

somador:

    add ascii, 01h
    
    cmp ascii, 39h
    
    je a2z_minisculo
    
    cmp ascii, 7ah
    
    je A2Z_maiusculo
    
    cmp ascii, 5ah
    
    je zero2nine 
    
    jmp somador
    
zero2nine:
    
    mov ascii, 30h
    
    jmp somador
    
a2z_minisculo:

    mov ascii, 61h
    
    jmp somador
    
A2Z_maiusculo:

    mov ascii, 41h
    
    jmp somador

sair:

    ret
    
ascii db 30h





