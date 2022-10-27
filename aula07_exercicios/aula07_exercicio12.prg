// 12.Fazer um programa que carregue um vetor de 8 elementos e que
// inverta a ordem do seu conteúdo. Apresente no final o vetor invertido.
// Usar apenas uma variável composta.

Function Main()

    local aNum    := {}
    local nValor  := 0
    local nI      := 0
    local nCont   := 1

    WHILE nCont <= 8
        ACCEPT "Insira um valor: " TO nValor
            nValor := val(nValor)
        aAdd(aNum, nValor)
            nCont++
    ENDDO 
    
    Inverte(aNum, .t.)

RETURN NIL

static Function Inverte(aNum, lInverte)

    local nI        := 1
    local nInicio   := 1
    local nFim      := Len(aNum)
    local nStep     := 1

    IF lInverte = NIL
        lInverte := .F.
    ENDIF

    Qout("")
    IF lInverte
        nInicio   := Len(aNum)
        nFim      := 1
        nStep     := -1
    ENDIF

    FOR nI := nInicio to nFim step nStep
        qOut(aNum[nI])
    NEXT

Return NIL
