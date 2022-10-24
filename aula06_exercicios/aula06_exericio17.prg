// 17.Criar um programa de fun��es com literais e nela disponibilizar as
// fun��es:
// a. iTroca(a, b): troca os valores entre as vari�veis a e b.
// b. isPar(x): informa se o inteiro enviado � um n�mero par.
// c. isImPar(x): informa se o inteiro enviado � um n�mero �mpar.
// d. Inverte(x): retorna o n�mero com sinal invertido.
// e. isDiv(a, b): retorna se a � divis�vel por b.

Function Main()

    local nPar := 0
    local nImpar := 0
    local nInverte := 0
    local nA := 0
    local nB := 0
    local nVal := 0
    local aVal := {}

    Accept "Digite aqui um valor para ser seu primeiro valor: " TO nVal
        Aadd(aVal, nVal)

    Accept "Digite aqui um valor para ser seu segundo valor: " TO nVal
        Aadd(aVal, nVal)

    QOUT("")
    QOUT("Trocando o primeiro valor pelo segundo")
    iTroca(aVal)
    QOUT("O seu novo primeiro valor eh:" , Alltrim(aVal[1]) , "e o seu novo segundo valor eh:" , Alltrim(aVal[2]))
    QOUT("")

    Accept "Informe aqui um valor para saber se o mesmo eh par: " TO nPar
        nPar := Val(nPar)

        IF !isPar(nPar)
            QOUT("Numero digitado nao eh par")
            QOUT("")
        ELSE 
            QOUT("Numero digitado eh par")
            QOUT("")
        ENDIF

    Accept "Informe aqui um valor para saber se o mesmo eh impar: " TO nImpar
        nImpar := Val(nImpar)

        IF !isImPar(nImpar)
            QOUT("Numero digitado nao eh impar")
            QOUT("")
        ELSE 
            QOUT("Numero digitado eh impar")
            QOUT("")
        ENDIF

    Accept "informe aqui um valor para retornar com o sinal invertido: " TO nInverte
        nInverte := Val(nInverte)
        nInverte := Inverte(nInverte)
    QOUT(Alltrim(STR(nInverte)))

    Accept "informe aqui um valor para A: " TO nA
        nA := Val(nA)

    Accept "informe aqui um valor para B: " TO nB
        nB := Val(nB)
    
    IF isDiv(nA, nB)
        QOUT("A eh divisivel por B")
    ELSE 
        QOUT("A nao eh divisivel por B")
    ENDIF

Return NIL

Function iTroca(aVal)//a. iTroca(a, b): troca os valores entre as vari�veis a e b.

    aAdd(aVal , aVal[2] )  // salva uma copia de [2] em [3]
    aVal[2] := aVal[1] // clona [1] em [2]
    aVal[1] := aVal[3] // copia [3] em [1]
    aDel(aVal, 3) // apaga a auxiliar [3]

Return aVal

Function isPar(nValor)//b. isPar(x): informa se o inteiro enviado � um n�mero par.

    if (nValor % 2) == 0
        return .T.
    endif

Return .F.

Function isImPar(nValor)//c. isImPar(x): informa se o inteiro enviado � um n�mero �mpar.

    if (nValor % 2) == 0
        return .F.
    endif

Return .T.

Function  Inverte(x)
Return x * -1

Function  isDiv(a, b)

    IF a % b == 0
        RETURN .T.
    ELSE
        RETURN .F.
    ENDIF

Return NIL
