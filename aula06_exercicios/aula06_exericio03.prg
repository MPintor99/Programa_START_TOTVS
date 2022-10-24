// 3. Elaborar um programa que possua uma sub-rotina que efetue o
// somatório dos N primeiros números naturais iniciando em 1. O
// resultado deverá ser exibido no programa principal e não no
// procedimento.

Function Main()
 
    local nI    := 0
    local nLim  := 0
    local nSoma := 0
    
    WHILE !ISDIGIT(nLim) .OR. VAL(nLim) <= 0
        Accept "Insira aqui quanto numeros naturais voce deseja que sejam somados: " TO nLim
    ENDDO

    nLim := VAL(nLim)
    nSoma := SOMATORIO(nI , nLim, nSoma)
    QOUT("")
    QOUT("A soma dos" , Alltrim(STR(nLim)) , "primeiros numeros naturais eh: " , Alltrim(STR(nSoma)))

Return NIL

Static Function SOMATORIO(nI , nLim, nSoma)

    FOR nI := 1 to nLim
        nSoma := nSoma + nI 
    Next

Return nSoma

