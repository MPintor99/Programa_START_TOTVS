// 59.Fa√ßa um programa que calcule a somat√≥ria dos dez primeiros
// n√∫meros naturais pares.

Function Main()

    local nI    := 1
    local nSoma := 0
    local nNum  := 0

    ENQUANTO(nI , nSoma , nNum)

Return NIL

static Function ENQUANTO(nI, nSoma , nNum)

    DO WHILE nI <= 10
        nNum++
        IF (nNum % 2) == 0 // Verificacao se o n˙mero que esta sendo analisado È par
            QOUT(alltrim(StrZero(nNum, 2)) , "E par")
                nSoma := nSoma + nNum
                nI++//"contador" que ir· contar atÈ 10 apenas quando passar por um numero par
        ENDIF
    ENDDO

    QOUT("A soma de todos os 10 primeiros numeros naturais pares e: " , (alltrim(Str(nSoma))))

Return NIL
