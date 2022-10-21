// 78.Fazer um programa para determinar e exibir se um número informado é primo. 

Function Main()

    local nNum          := 0
    local nI            := 1
    local nDivisores    := 0

    ACCEPT "Digite um numero para saber se o mesmo e primo: " TO nNum
    nNum := val(nNum)

    IF nNum > 0
        WHILE nI <= nNum
            IF nNum % nI == 0
                nDivisores++
            ENDIF 
            nI++
        ENDDO 
        
        IF nDivisores = 2
            QOUT("")
            QOUT("O numero" , (nNum) ,  "e primo")
        ELSE
            QOUT("")
            QOUT("O numero" , (nNum) , "nao e primo")
        ENDIF 

    ELSEIF nNum <= 0 .or. ISDIGIT(nNum) = .f.
        QOUT("")
        QOUT("Valor Invalido")
    ENDIF

return NIL
