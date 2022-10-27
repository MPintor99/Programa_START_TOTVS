// 9. Fazer uma função que apresente na tela todos os elementos de um
// vetor que será passado como parâmetro para a função. Este
// procedimento será útil para vários exercícios. Que tal colocá-lo numa
// biblioteca?

Function Main()

    local aArray := {"A","B","C","D"}
    
    PrintArray(aArray)

Return NIL

Function PrintArray(Array)

    local nI := 0

    For nI := 1 TO Len(Array)
        QOUT(Array[nI])
    NEXT nI

Return NIL
