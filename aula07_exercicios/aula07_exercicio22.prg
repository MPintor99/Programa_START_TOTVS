// 22.Ler 12 elementos de uma matriz tipo vetor, colocá-los em ordem
// crescente.

Function Main()

    local aVetores := {}
    local nI       := 0

    FOR nI := 1 TO 12
        aAdd(aVetores, hb_RandomInt(1,99))
    NEXT 

    ASORT(aVetores)
    QOUT(hb_valtoexp(aVetores))    

Return NIL
