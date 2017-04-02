; Solucao do Prob. 1, com as seguintes substituicoes:
;   <inicio> = inicio: (no ponto de destino)
;   <inicio> = inicio  (na instrucao de origem)
;   <endereco> = var1  (com uso de DB)
; 

    ORG 100h

inicio:     ; Ponto de desvio do JMP

    MOV AL,var1

    ADD AL,01h

    MOV var1, AL

    JMP inicio

    RET
       
            
var1 DB 00h ; Declaracao de "var1"             



