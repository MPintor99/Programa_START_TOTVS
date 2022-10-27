// 10.Ler dois vetores, A e B de 10 elementos cada um e calcular um vetor
// C onde seu primeiro elemento é o primeiro elemento de A, seu
// segundo elemento é o primeiro de B, seu terceiro elemento é o
// segundo de A, e assim sucessivamente. Notem que o vetor C deverá
// ter 20 elementos. Exibir o conteúdo do vetor C.

Function Main()

    local nI := 0
    local aA := {}  
    local aB := {} 
    local aC := {}

    FOR nI := 1 TO 20
        aAdd(aA, (hb_RandomInt(1 , 5)))//Trocar para a quantidade de numeros aleatorios que voce desejar
        aAdd(aB, (hb_RandomInt(1 , 5)))//Trocar para a quantidade de numeros aleatorios que voce desejar
        aAdd(aC, ( aA[nI] + aB[nI]))
    NEXT


    QOUT("Array A: " , hb_valtoexp(aA))
    QOUT("Array B: " , hb_valtoexp(aB))
    QOUT("Array C: " , hb_valtoexp(aC))
Return NIL
