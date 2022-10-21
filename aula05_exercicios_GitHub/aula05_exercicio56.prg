// 56.Elaborar um programa que exiba na tela automaticamente todos os
// múltiplos de um determinado número informado pelo usuário,
// existentes entre 1 e um limite, que também deverá ser informado
// pelo usuário. Fazer duas versões da solução utilizando diferentes
// estruturas de repetição, a sua escolha.

Function Main()

    ENQUANTO()
    QOUT("")
    PARA()

Return NIL

static FUNCTION ENQUANTO()

    local nI    := 1
    local nMult := 0
    local nLim  := 0

    WHILE ISDIGIT(nMult) == .F.
        ACCEPT "Insira o numero que voce deseja descobrir o multiplo: " TO nMult
    ENDDO

    WHILE ISDIGIT(nLim) == .F.
        ACCEPT "Insira aqui um limite m�ximo para os numeros analisados: " TO nLim
    ENDDO

    nMult := Val(nMult)
    nLim := Val(nLim)

    WHILE nI <= nLim

        IF nI % nMult == 0 
                QOUT(Alltrim(STRZERO(nI, 3)) , "E MULTIPLO DE" , Alltrim(STRZERO(nMult, 3)))
        ENDIF
        nI++
    ENDDO

RETURN NIL

static Function PARA()

    local nI    := 1
    local nMult := 0
    local nLim  := 0

    WHILE ISDIGIT(nMult) == .F. // Eu utilizei o While aqui no lugar do FOR pois � apenas confirmacao de entrada.
        ACCEPT "Insira o numero que voce deseja descobrir o multiplo: " TO nMult
    ENDDO

    WHILE ISDIGIT(nLim) == .F.
        ACCEPT "Insira aqui um limite maximo para os numeros analisados: " TO nLim
    ENDDO

    nMult := Val(nMult)
    nLim := Val(nLim)

    FOR nI := 1 to nLim //Aqui comeca o laco que o exercicio pede
        IF (nI % nMult) == 0
            QOUT(Alltrim(STRZERO(nI)) , "E MULTIPLO DE" , Alltrim(STRZERO(nMult)))
        ENDIF
    Next nMult

Return NIL
