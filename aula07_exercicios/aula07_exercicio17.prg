// 17.Ler uma matriz A do tipo vetor com 10 elementos. Construir uma
// matriz B de mesmo tipo, sendo que cada elemento de B seja o
// somat�rio do primeiro at� o elemento correspondente de A.
// Apresentar os elementos da matriz B.

Function Main()

    local nI    := 0
    local aA    := {} 
    local aB    := {} 
    local nAux  := 0

    FOR nI := 1 TO 10
        aAdd(aA, (hb_RandomInt(1 , 49)))
        nAux += aA[nI]
        aAdd(aB, ( nAux ))
    NEXT 
    
    QOUT("Array A: " , hb_valtoexp(aA))
    QOUT("Array B: " , hb_valtoexp(aB))

Return NIL
