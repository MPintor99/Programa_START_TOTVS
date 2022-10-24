// 15.Crie uma função chamada “ehPositivo” que descubra se um valor é
// positivo ou negativo (considere o valor zero como positivo) e retorne
// Verdadeiro ou Falso. Use essa função em um programa que calcula o
// módulo de um número informado pelo usuário.

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
