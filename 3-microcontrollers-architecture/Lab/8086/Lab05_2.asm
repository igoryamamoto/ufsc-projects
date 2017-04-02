;Lab05 - Pilhas e subrotinas
;DAS5332 - Arquitetura e Programacao de Sistemas Microcontrolados
;Aluno: Igor Assis Rocha Yamamoto
;Matricula: 14101045
;Professor: Werner Kraus Junior
;
;
;EX.: 2
;
;org 100h
;
;inicio:
;
;    mov cx, 4    ; Inicia CX com 4(para ser usado no loop)
;    
;    mov si, 0    ; Inicia o SI em 0(usado como 'indicie' da lista)
;    
;    lea sp, PILHA ; Inicializa a pilha(move o endereco de PILHA para SP)
;
;push_lista:
;
;    mov bx, LISTA[si]  ; Move elemento da lista para bx
;    
;    push bx            ; Empurra bx para pilha
;    
;    add si, 2          ; Vai para o proximo indicie do elemento da lista
;    
;    loop push_lista    ; Faz o procedimento acima 4 vezes
;
;    mov cx, 4
;    
;    mov si, 0
;        
;pop_lista:
; 
;    pop bx             ; Retira o ultimo elemento adicionado na pilha(tbm o ultimo elemento da lista no caso)
;    
;    mov LISTA[si], bx  ; Move o elemento do registrador para a lista
;    
;    add si, 2          ; Vai para o proximo indicie do elemento da lista
;    
;    loop pop_lista     ; Faz o procedimento acima 4 vezes
;    
;    jmp $
;        
;ret
;
;LISTA DW 1111H,2222H,3333H,4444H 
;
;ESPACO_PILHA dw 4 DUP (0) ; Reserva 4 "words" (8 bytes) na memoria e
;                              ; inicializa-os com 1111H (arbitrario)
;PILHA        db 0FFh          ; "PILHA" e um endereco 
;
;---------------------------------------------------------------------
;
;EX.: 4

org 100

inicio:

    mov al,09h          ; fator da multiplicacao
    
    mov bl,03h          ; fator da multiplicacao
    
    push bx
    
    push cx
     
    call mult_bcd
    
    pop cx
    
    pop bx
    
    ret
    
mult_bcd proc   
    
    cmp al,0            ; vai para "fim" se qquer fator for zero

    je fim

    cmp bl,0
    
    je fim
      
    mov ah,00                                          
    
    mov cx,ax
      
produto:                ; realiza o produto como somas sucessivas 

    mov al,ch  
    
    add al,cl           ; al = al + cl
    
    daa                 ; ajuste BCD apos a soma
   
    mov ch,al           ; guarda resultado parcial     
  
    mov al,bl           ; BL eh usado para o fator2
    
    sub al,1            ; subtrai 1 para controle de interacoes
  
    das                 ; ajuste BCD apos subtracao
  
    jz fim  
    
    mov bl,al           ; guarda controle das iteracoes 
    
    jmp produto
    
fim:
    mov al,ch        
       
    ret
     
mult_bcd endp