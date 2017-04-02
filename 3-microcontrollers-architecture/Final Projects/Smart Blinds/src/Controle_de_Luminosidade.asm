;
; Projeto da disciplina de Arquitetura e Programacao de Sistemas Microcontrolados - DAS5332
;
; Professor: Werner Kraus Junior 
;
; Equipe: Fernando Battisti
;
;         Iago Silvestre de Oliveira
;
;         Igor Assis Rocha Yamamoto
;
; Abril de 2015
; 

#start=Controle_de_Luminosidade.exe# 

#start=Stepper_motor.exe#

LUMEXT equ 124          ; porta que le o valor da luminosidadde externa (sensor de luz externo)

LUM equ 125              ; porta que le o valor atual de luminosidade (sensor de luz interno)

BLOCK equ 126            ; porta com o valor de luminosidade bloqueada (giros do motor fazem essa definicao)

CTRLVAR equ 127          ; porta de controle

TARGET equ 128           ; porta com o valor desejado de referencia


                          
data segment
    
    meiogiro db 20       ; variavel que controla os giros do motor
    
    erro db 3            ; margem de erro para a luminosidade

ends


        
interrupt segment

trata90h:                ; tratador manual/automatico
    
    in al, CTRLVAR

    xor al, 100b         ; complementa o terceiro bit
    
    out CTRLVAR, al
    
    iret
    
trata91h:                ; tratador move pra baixo

    in al, CTRLVAR

    and al, 11111101b    ; zera o segundo bit
    
    out CTRLVAR, al
               
    iret 
    
trata92h:                ; tratador move para cima

    in al, CTRLVAR

    or al, 010b          ; seta o segundo bit
    
    out CTRLVAR, al
    
    iret
    
trata93h:                ; tratador On/Off

    in al, CTRLVAR

    xor al, 001b         ; complementa o primeiro bit
    
    out CTRLVAR, al

    iret

trata94h:

    
    in al, TARGET
    
    cmp al, 5
    
    jae diminui_5
    
    iret
    
    diminui_5:
    
    sub al, 5
    
    out TARGET, al
    
    iret
        
trata95h:
    
    in al, TARGET
    
    cmp al, 95
    
    jbe aumenta_5
    
    iret
    
    aumenta_5:
    
    add al, 5
    
    out TARGET, al
    
    iret
             
ends


              
code segment
start:
    
def_trata90h:            ; define o tratador 90h na tabela de enderecos

    mov ax, interrupt
    
    mov ds, ax
    
    mov dx, offset trata90h
    
    mov ah, 25h
    
    mov al, 90h
    
    int 21h
    
def_trata91h:            ; define o tratador 91h na tabela de enderecos

    mov ax, interrupt

    mov dx, offset trata91h
    
    mov ah, 25h
    
    mov al, 91h
    
    int 21h

def_trata92h:            ; define o tratador 92h na tabela de enderecos

    mov ax, interrupt
    
    mov dx, offset trata92h
    
    mov ah, 25h
    
    mov al, 92h
    
    int 21h

def_trata93h:            ; define o tratador 93h na tabela de enderecos

    mov ax, interrupt
    
    mov dx, offset trata93h
    
    mov ah, 25h
    
    mov al, 93h
    
    int 21h

def_trata94h:            ; define o tratador 94h na tabela de enderecos

    mov ax, interrupt
    
    mov dx, offset trata94h
    
    mov ah, 25h
    
    mov al, 94h
    
    int 21h

def_trata95h:            ; define o tratador 95h na tabela de enderecos

    mov ax, interrupt
    
    mov dx, offset trata95h
    
    mov ah, 25h
    
    mov al, 95h
    
    int 21h
    
def_datasegment:         ; poe o segmento data em DS
    
    mov ax, data
    
    mov ds, ax 

def_inicial: 

    mov al, 30

    out TARGET, al       ; definicao do grau de luminosidade desejado
    
    mov al, 101b
    
    out CTRLVAR, al      ; valor inicial da variavel de controle
    
    mov al, ds:meiogiro  
    
    out BLOCK, al        ; escreve o valor inicial do giro do motor na porta de bloqueio (20 meiogiros)
        
inicio:

    in al, CTRLVAR       ; le a variavel de controle
    
    and al, 001b         ; testa se o primeiro bit(on/off) esta ativo
    
    jnz controle         ; caso o bit esteja em 1(on) realiza o controle
    
    jmp inicio           ; caso contrario volta o inicio para realizar a verificacao novamente
    
controle:
    
    in al, CTRLVAR
    
    and al, 100b         ; testa se o terceiro bit(auto/manual) estao ativos
    
    jnz controle_auto     ; caso esteja pula para o controle automatico
    
controle_manual:

    in al, CTRLVAR
    
    and al, 010b         ; testa se o segundo bit(Up/Down) esta ativo
    
    jnz sobe              ; caso esteja vai para a 'funcao' que sobe a cortina

    jmp desce            ; caso contrario vai para a 'funcao' que desce a cortina
    
controle_auto:

    in al, LUMEXT        ; le o luz externa
    
    cmp al, 0            ; verifica se esta em zero (noite)
    
    je desce

    in al, TARGET        ; le o valor referencia(porta 128h)
    
    mov bl, al           ; move al para bl para poder ler outra porta
    
    in al, LUM           ; le o valor atual de luz(porta 125h)
    
    cmp al, bl           ; faz a verificacao de qual valor eh maior
    
    jb  LUMmenor
    
    sub al, bl           ; compara a diferenca do valor referencia com o valor atual para LUM > TARGET
     
    cmp al, ds:erro      ; verifica se a deiferenca esta dentro da margem de erro
    
    jb inicio            ; caso esteja, volta para o inico
    
    jmp desce            ; caso contrario, a cortina desce pois aqui o valor atual eh maior que a referencia
    
    LUMmenor:
    
    sub bl, al           ; compara a diferenca do valor referencia com o valor atual para LUM < TARGET
     
    cmp bl, ds:erro      ; verifica se a deiferenca esta dentro da margem de erro
    
    jb inicio            ; caso esteja, volta para o inico
                         ; caso contrario, a cortina sobe pois aqui o valor atual eh menor que a referencia
            
sobe:
     
    cmp ds:meiogiro, 0   ; compara os giros do motor com o valor minimo de giros 
     
    je inicio            ; se o valor ja esta no minimo entao volta ao inicio
    
    in al, CTRLVAR
    
    or al, 010b          ;seta o segundo bit(sobe)
    
    out CTRLVAR, al

    mov cx, 4            ; repetindo a intrucao 10 vezes tem-se aproximadamente uma volta 
    
    clkwise:             ; sequencia de instrucoes para girar o motor no sentido horario
    
    mov al, 001b         ; initialize.
    
    out 7, al

    mov al, 011b         ; half step 1. 
    
    out 7, al

    mov al, 010b         ; half step 2.
    
    out 7, al

    mov al, 110b         ; half step 3.
    
    out 7, al
    
    loop clkwise 

    dec ds:meiogiro      ; apos o motor ter girado no sentido horario, decrementa-se o valor do giro
    
    mov al, ds:meiogiro  ; move a variavel giro para AL para poder escrever na porta
    
    out BLOCK, al        ; escreve o valor do giro na porta de bloqueio de luz(cada giro que o motor da, bloqueia 10% da luz que entra)
     
    jmp inicio           ; apos a rotacao, volta-se ao inicio para que o processo se repita
    
desce:    
     
    cmp ds:meiogiro, 20  ; compara os giros do motor com o valor maximo de giros 
     
    je inicio            ; se o valor ja esta no maximo entao volta ao inicio  
    
    in al, CTRLVAR
    
    and al, 11111101b    ;zera o segundo bit(desce)
    
    out CTRLVAR, al
    
    mov cx, 4
    
    counterclkwise:
    
    mov al, 010b         ; initialize.
    
    out 7, al

    mov al, 110b         ; half step 1. 
    
    out 7, al

    mov al, 001b         ; half step 2.
    
    out 7, al

    mov al, 011b         ; half step 3.
    
    out 7, al
    
    loop counterclkwise 
    
    inc ds:meiogiro      ; apos o motor ter girado no sentido anti-horario, incrementa-se o valor do giro
    
    mov al, ds:meiogiro  ; move a variavel giro para AL para poder escrever na porta
    
    out BLOCK, al        ; escreve o valor do giro na porta de bloqueio de luz(cada giro que o motor da, bloqueia 10% da luz que entra)
     
    jmp inicio           ; apos a rotacao, volta-se ao inicio para que o processo se repita
    
systemreturn:

    mov ax, 4c00h        ; exit to operating system
    
    int 21h    
ends

end start                ; set entry point and stop the assembler