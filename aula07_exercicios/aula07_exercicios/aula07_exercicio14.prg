// 14.Ler duas matrizes A e B do tipo vetor com 20 elementos. Construir
// uma matriz C, onde cada elemento de C é a subtração do elemento
// correspondente de A com B. Apresentar a matriz C.

Function Main()

    local nI := 0
    local aA := {}  
    local aB := {} 
    local aC := {}

    FOR nI := 1 TO 20
        aAdd(aA, (hb_RandomInt(1 , 5)))//Trocar para a quantidade de numeros aleatorios que voce desejar
        aAdd(aB, (hb_RandomInt(1 , 5)))//Trocar para a quantidade de numeros aleatorios que voce desejar
        aAdd(aC, ( aA[nI] - aB[nI]))
    NEXT


    QOUT("Array A: " , hb_valtoexp(aA))
    QOUT("Array B: " , hb_valtoexp(aB))
    QOUT("Array C: " , hb_valtoexp(aC))
Return NIL
