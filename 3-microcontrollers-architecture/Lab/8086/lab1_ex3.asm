

    ORG 100h

repete:         

    MOV AL, var1

    ADD AL, 1
    
    MOV var1, AL

    JNC repete   ; Se nao houver "vai-um", continua com var1
                
    ADD AH, 1    ; Senao, incrementar var2  

    MOV var2, AH

    JMP repete

    RET
       
            
var1 DB 00h ; "var1" guarda byte menos significativo (AL)
var2 DB 00h ; "var2" guarda byte mais significativo (AH)


