// 12.Faça um programa para cálculo do montante (valor futuro) a partir de
// um dado capital (valor presente). O programa deverá solicitar ao
// usuário o valor do capital (valor presente), a taxa de juros e o prazo.

// O programa também deverá permitir que o usuário escolha se quer
// utilizar o regime de capitalização simples ou composto. Ao final
// apresentar ao usuário o montante (valor futuro e o valor dos juros).
// • Fórmulas:
// ? Juros simples: VF = VP ( 1 + i + n )
// ? Juros compostos: VF = VP ( 1 + i )^n
// ? Juros a partir do VF: J = VF - VP
// • Onde:
// ? VF = Montante ou Valor Futuro
// ? VP = Capital ou Valor Presente
// ? J = Juros
// ? i = taxa em decimal
// ? n = prazo

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

        SIMPLES(nVP , nJu , nPrazo , nVF)

    ELSEIF nOpcao == 2

        COMPOSTO(nVP , nJu , nPrazo , nVF) 

    ENDIF

Return NIL

Function SIMPLES(nVP , nJu , nPrazo , nVF)

    nVF := nVP + (nVP * (nJu / 100) * nPrazo)
    QOUT("O valor de seu montante apos o rendimento eh: R$" , Alltrim(STR(Round(nVF, 2))))

Return NIL

Function COMPOSTO(nVP , nJu , nPrazo , nVF)

    nVF := nVP * ( 1 + (nJu / 100) ) ** nPrazo 
    QOUT("O valor de seu montante apos o rendimento eh: R$" , Alltrim(STR(Round(nVF, 2))))

Return NIL
