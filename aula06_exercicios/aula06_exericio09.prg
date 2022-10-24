// 9. Escreva um algoritmo para mostrar o sucessor e o antecessor de um
// número qualquer informado pelo usuário. Tanto o antecessor como o
// sucessor deverão ser obtidos através de funções respectivas.

Function Main()

    local nI          := 3
    local nAntecessor := 0
    local nSucessor   := 0

    While !ISDIGIT(nI) 
        Accept "Informe um numero para saber o antecessor e o sucessor do mesmo: " TO nI 
    ENDDO

    nI := Val(nI)

    nAntecessor := ANTECESSOR(nI , nAntecessor , nSucessor)
    nSucessor   := SUCESSOR(nI , nAntecessor , nSucessor)

    QOUT("O antecessor de" , nI , "eh:" , Alltrim(STR(nAntecessor)))
    QOUT("O sucessor de" , nI , "eh:" , Alltrim(STR(nSucessor)))

Return NIL

Static Function ANTECESSOR(nI , nAntecessor , nSucessor)

    nAntecessor := nI - 1

Return nAntecessor

Static Function SUCESSOR(nI , nAntecessor , nSucessor)

    nSucessor := nI + 1

Return nSucessor
