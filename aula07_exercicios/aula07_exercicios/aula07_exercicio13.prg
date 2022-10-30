// 13.Ler 8 elementos em uma matriz A tipo vetor. Construir uma matriz B
// de mesma dimensão onde cada elemento é o triplo do elemento
// correspondente da mátria A.

Function Main()

    local nI := 0
    local aA := {}  
    local aB := {} 

    FOR nI := 1 TO 20
        aAdd(aA, (hb_RandomInt(1 , 5)))
        aAdd(aB, ( aA[nI] * 3))
    NEXT

    QOUT("Array A: " , hb_valtoexp(aA))//Trocar para a quantidade de numeros aleatorios que voce desejar
    QOUT("Array B: " , hb_valtoexp(aB))//Trocar para a quantidade de numeros aleatorios que voce desejar
    
Return NIL
