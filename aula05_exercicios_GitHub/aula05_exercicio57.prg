// 57.Elaborar um programa que gere, automaticamente, valores
// aleatórios, entre 0 e 99 e exiba na tela apenas àqueles que são
// múltiplos de um número informado pelo usuário. A quantidade de
// valores a serem gerados, também deve ser informado pelo usuário. Fazer duas
// versões da solução utilizando diferentes estruturas de repetição, a
// sua escolha.

Function Main()

    local nI      := 1
    local nMult   := 0
    local nRandom := 0
    local nLim    := 0

    WHILE ISDIGIT(nMult) == .F.
        ACCEPT "Insira aqui o numero em que voce deseja saber se os numeros aleatorios gerados sao multiplos: " TO nMult
    ENDDO

    WHILE ISDIGIT(nLim) == .F.
        ACCEPT "Insira aqui um limite maximo para os numeros analisados: " TO nLim
    ENDDO

    nMult := Val(nMult)
    nLim := Val(nLim)

    // Comentar a funcao que voce nao deseja ver
    ENQUANTO(nI , nMult , nRandom , nLim)
    QOUT("")
    //PARA(nI , nMult , nRandom , nLim)

Return NIL

static FUNCTION ENQUANTO(nI , nMult , nRandom , nLim)

    WHILE nI <= nLim

        nRandom := HB_RandomInt(0,99)

        IF (nRandom % nMult) == 0
            QOUT(Alltrim(STRZERO(nRandom, 3)) , "E MULTIPLO DE" , (Alltrim(STRZERO(nMult, 3))))
        ENDIF
        nI++
    ENDDO

RETURN NIL

static Function PARA(nI, nMult , nRandom , nLim)

    For nI := 1 to nLim step 1

        nRandom := HB_RandomInt(0,99)

        IF (nRandom % nMult) == 0
        QOUT((Alltrim(STRZERO(nRandom, 3))) , "E MULTIPLO DE" , (Alltrim(STRZERO(nMult, 3))))
        ENDIF 
    NEXT

Return NIL
