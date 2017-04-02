
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

inicio:

    mov bl, 01h

    mov cl, 02h

    mov dl, 01h

teste_bc:

    cmp bl, cl
    
    jb teste_cd 
       
teste_bd:

    cmp bl, dl
    
    jae b_maior
    
    jmp d_maior    
    
teste_cd:

    cmp cl, dl
    
    jae c_maior
    
    jmp d_maior


b_maior:

    mov al, 0bh
    
    jmp sair
    
c_maior:

    mov al, 0ch
    
    jmp sair
    
d_maior:

    mov al, 0dh
    
sair:

    ret




