// 36.Criar uma matriz N de 10x3, onde cada elementos será a soma do
// índice de sua coluna com o índice de sua linha. Apresentar a matriz
// resultante.

Function Main()

    local aM := {}
    local nI := 0 
    local nJ := 0


    aM := array(10)

    FOR nI := 1 TO 10
        aM[nI] := array(3)
        FOR nJ := 1 TO 3
            aM[nI][nJ] := nI + nJ
        NEXT nJ
    NEXT nI

    FOR nI := 1 TO 10
        QOUT(hb_valtoexp(aM[nI]))
    NEXT nI

Return NIL
