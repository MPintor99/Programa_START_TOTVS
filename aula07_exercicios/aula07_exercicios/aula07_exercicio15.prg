// 15.Ler duas matrizes do tipo vetor. A com 10 elementos e B com 15
// elementos. Construir uma matriz C, sendo esta, a junção das duas
// outras matrizes. Desta forma, C deverá ter a capacidade de
// armazenar 25 elementos. Apresentar a matriz C.
Function Main()

    local nI := 0
    local aA := {}  
    local aB := {}  
    local aC := {}

    FOR nI := 1 TO 10
        aAdd(aA, (hb_RandomInt(1 , 49)))
    NEXT

    FOR nI := 1 TO 15
        aAdd(aB, (hb_RandomInt(1 , 49)))
    NEXT

    aC := array(len(aA) + len(aB))

    FOR nI := 1 TO 10
        aC[nI] := aA[nI]
    NEXT

    FOR nI := 11 TO 25
        aC[nI] := aB[nI-10]
    NEXT

    QOUT("Array A: " , hb_valtoexp(aA))
    QOUT("Array B: " , hb_valtoexp(aB))
    QOUT("Array C: " , hb_valtoexp(aC))

Return NIL
