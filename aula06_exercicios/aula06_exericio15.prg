// 15.Crie uma fun��o chamada �ehPositivo� que descubra se um valor �
// positivo ou negativo (considere o valor zero como positivo) e retorne
// Verdadeiro ou Falso. Use essa fun��o em um programa que calcula o
// m�dulo de um n�mero informado pelo usu�rio.

Function Main()

    local nNum := 0

    ACCEPT "IFORME UM NUMERO POSITIVO OU NEGATIVO: " TO nNum
        nNum := Val(nNum)

    IF ehPositivo(nNum) == .F.
        nNum := nNum * (-1)
    ENDIF

        // nNum := Abs(nNum)

    QOUT("O MODULO DO NUMERO DIGITADO E: " , AllTrim(Str(nNum)))

Return NIL

Function ehPositivo(nNum)

    local nPositivo := .T.

    IF nNum < 0
        nPositivo := .F.
    ENDIF

Return nPositivo
