// 5. Elaborar um programa que popule um vetor de 30 posições com
// valores de 1 até 30. Exibir o conteúdo do vetor.


Function Main()

    local aArray := {}
    local nI     := 0

    FOR nI := 1 TO 30
        aAdd(aArray , nI)
    NEXT

    QOUT(hb_valtoexp(aArray))

Return NIL
