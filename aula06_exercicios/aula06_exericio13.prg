// 13.Na mesma linha do programa anterior fazer uma função para cálculo
// do valor presente, dado o montante e a taxa.

Function Main()

    local nVF    := 0
    local nVP    := 0
    local nJu    := 0
    local nI     := 0
    local nPrazo := 0
    local nOpcao := 0

    WHILE !ISDIGIT(nVP)

        Accept "Insira aqui o valor do seu capital: " TO nVP

    ENDDO

    WHILE !ISDIGIT(nJu)

        Accept "Insira aqui a taxa de juros do seu investimento: " TO nJu

    ENDDO

    WHILE !ISDIGIT(nPrazo)

        Accept "Insira aqui prazo do seu investimento: " TO nPrazo

    ENDDO

        WHILE !ISDIGIT(nOpcao) .AND. nOpcao <> 1 .AND. nOpcao <> 2

        Accept "Voce deseja que seu investimento seja com juros simples ou juros compostos? Digite [1] para simples e [2] para composto: " TO nOpcao

    ENDDO
    nOpcao := Val(nOpcao)
    nVP    := Val(nVP)
    nJu    := Val(nJu)
    nPrazo := Val(nPrazo)

    IF nOpcao == 1

        SIMPLES(nVP , nJu , nPrazo , @nVF)

    ELSEIF nOpcao == 2

        COMPOSTO(nVP , nJu , nPrazo , @nVF) 

    ENDIF

    PRESENTE(nJu , nPrazo , nVF) //Formula em questão só funciona em juros compostos

Return NIL

Static Function SIMPLES(nVP , nJu , nPrazo , nVF)

    nVF := nVP + (nVP * (nJu / 100) * nPrazo)
    QOUT("O valor de seu montante apos o rendimento eh: R$" , Alltrim(STR(Round(nVF, 2))))

Return NIL

Static Function COMPOSTO(nVP , nJu , nPrazo , nVF)

    nVF := nVP * ( 1 + (nJu / 100) ) ** nPrazo 
    QOUT("O valor de seu montante apos o rendimento eh: R$" , Alltrim(STR(Round(nVF, 2))))

Return NIL

Static Function PRESENTE(nJu , nPrazo , nVF) //Formula em questão só funciona em juros compostos

    local nVP := 0

    nVP := nVF / (1 + (nJu/100))** nPrazo

    QOUT("O investimento inicial foi de : R$" , Alltrim(STR(Round(nVP, 2))))

Return NIL
