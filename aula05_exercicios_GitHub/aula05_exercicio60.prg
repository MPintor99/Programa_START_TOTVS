// 60.Faça um programa que calcule a somatória dos "n" primeiros números
// naturais pares ou ímpares. O usuário informará através de digitação:
// a quantidade de números desejada ("n") e escolhe entre par o ímpar.

Function Main()

    local nI    := 1
    local nSoma := 0
    local nNum  := 0
    local cPar  := ""
    local nLoop := 0

    ACCEPT "Digite aqui quantos numeros naturais voce quer ver: " TO nLoop

        WHILE ISDIGIT(nLoop) = .F. // Validacao para saber se o numero digitado eh inteiro e positivo
            ACCEPT "Valor invalido, digite aqui um numero inteiro positivo: " to nLoop

            WHILE Val(nLoop) < 0 .AND. Val(nLoop) <> 0
                ACCEPT "Valor invalido, digite aqui um numero inteiro e maior que 0: " to nLoop

            ENDDO
        ENDDO
    QOUT("")
    ACCEPT "Digite aqui 'P'se voce quer ver os numeros naturais pares ou 'I' para numeros impares: " TO cPar
        cPar := Upper(cPar)
        QOUT(cPar)

        WHILE cPar <> "P" .AND. cPar <> "I" // Validacao para saber se o usuario digitou corretamente P ou I mesmo que minusculo.

            ACCEPT "Digite a letra 'P' se voce quiser numeros naturais pares ou a letra 'I' para numeros impares: " to cPar
                cPar := Upper(cPar)
        ENDDO

        IF cPar == "P"
            PAR(nI , nSoma , nNum , nLoop)
        ELSE
            IMPAR(nI, nSoma , nNum , nLoop)
        ENDIF

Return NIL

static Function PAR(nI, nSoma , nNum, nLoop)

    DO WHILE nI <= Val(nLoop)
        nNum++
        IF (nNum % 2) == 0
            QOUT(alltrim(Str(nNum)) , "E par")
                nSoma := nSoma + nNum
                nI++
        ENDIF
    ENDDO

    QOUT("A soma de todos os 10 primeiros numeros naturais pares e: " , (alltrim(Str(nSoma))))
Return NIL

static Function IMPAR(nI, nSoma , nNum, nLoop)

    DO WHILE nI <= Val(nLoop)
        nNum++
        IF (nNum % 2) <> 0
            QOUT(alltrim(Str(nNum)) , "E Impar")
                nSoma := nSoma + nNum
                nI++
        ENDIF
    ENDDO

    QOUT("A soma de todos os 10 primeiros numeros naturais pares e: " , (alltrim(Str(nSoma))))
Return NIL
