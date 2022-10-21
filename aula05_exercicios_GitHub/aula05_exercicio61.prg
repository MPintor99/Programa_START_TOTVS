// 61.Desenvolver uma m�quina de soma (c�lculo de somat�rio). O
// programa dever� ler uma s�rie indefinida de valores informados pelo
// usu�rio. A leitura dever� prosseguir at� que o valor zero seja
// informado. Ao final apresentar na tela o total do somat�rio.
// Implementar uma vers�o com cada uma das tr�s estruturas de
// repeti��o e mais uma utilizando o desvio incondicional.

Function Main()

    local nI     := 1
    local nSoma  := 0
    local nNum   := 0


    PARA(nI , nSoma , nNum)
    QOUT("")
    ENQUANTO(nI , nSoma, nNum)

Return NIL

static Function PARA(nI, nSoma, nNum)

    FOR nI := 1 to 2 step 1
        ACCEPT "Escreva um numero para ser somado e '0' para parar: " to nNum
            nNum := Val(nNum)

        IF nNum == 0 
            ni := 2
        
        ELSE 
        nSoma := nSoma + nNum

            QOUT("Total somado ate entao: " , Alltrim(Str(nSoma)))
            nI := 1

        ENDIF

    NEXT

    QOUT("")
    QOUT("Total somado: " , nSoma)

Return NIL

static Function ENQUANTO(nI, nSoma , nNum)

    local lLoop := .T.

    WHILE lLoop
        ACCEPT "Escreva um numero para ser somado e '0' para parar: " to nNum
            nNum := Val(nNum)

        IF nNum == 0
            lLoop := .F.
        
        ELSE
            nSoma := nSoma + nNum

            QOUT("Total somado ate entao: " , Alltrim(Str(nSoma)))
        ENDIF
    ENDDO

Return NIL
