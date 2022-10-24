// 16.Criar um programa de fun��es com literais e nela disponibilizar as
// fun��es/procedimentos:
// a. isLetra(c): informa se o caractere enviado � uma letra.
// b. isDigito(c): informa se o caractere enviado � um n�mero.
// c. isSimbolo(c): informa se o caractere enviado � um s�mbolo.
// d. toLower(c): converte uma letra mai�scula em min�scula.
// e. cTroca(a, b): troca os valores entre as vari�veis a e b.

Function Main() // Teste das func�es

    local cLetra  := ""
    local nNum    := 0
    local cSimb   := ""
    local cMaiusc := ""
    local nVal    := 0
    local aVal    := {}

    Accept "Digite aqui algo para saber se eh uma letra: " TO cLetra 

    WHILE !isLetra(cLetra)
        Accept "Voce nao digitou uma letra, digite aqui uma letra: " TO cLetra
    ENDDO
    QOUT("Parabens, voce digitou uma letra")
    QOUT("")

    Accept "Digite aqui algo para saber se eh um numero: " TO nNum 

    WHILE !isDigito(nNum)
        Accept "Voce nao digitou um numero, digite aqui um numero: " TO nNum
    ENDDO
    QOUT("Parabens, voce digitou um numero")
    QOUT("")

    Accept "Digite aqui algo para saber se eh um simbolo: " TO cSimb 

    WHILE !isSimbolo(cSimb)
        Accept "Voce nao digitou um simbolo, digite aqui um simbolo: " TO cSimb
    ENDDO
    QOUT("Parabens, voce digitou um simbolo")
    QOUT("")

    Accept "Escreve algo em caixa alta para ser retornado em caixa baixa: " TO cMaiusc

    cMaiusc := toLower(cMaiusc)
    QOUT(cMaiusc)

    Accept "Digite aqui um valor para ser seu primeiro valor: " TO nVal
        Aadd(aVal, nVal)

    Accept "Digite aqui um valor para ser seu segundo valor: " TO nVal
        Aadd(aVal, nVal)

    QOUT("Trocando o primeiro valor pelo segundo")
    cTroca(aVal)
    QOUT("O seu novo primeiro valor eh:" , Alltrim(aVal[1]) , "e o seu novo segundo valor eh:" , Alltrim(aVal[2]))

RETURN NIL


Function isLetra(cMSG) //Funcionando � um codigo que testa pra ver se a string esta vazia e usa ISALPHA para percorrer toda a string

    local nI := 0
    
    IF len(cMSG) < 1
        RETURN .F.
    ENDIF

        FOR nI := 1 to len(cMSG)
            IF !ISALPHA(SubStr(cMSG, nI , 1))
                RETURN .F.
            ENDIF
        NEXT nI
RETURN .T.

Function isDigito(nMSG) //Funcionando � um codigo que testa pra ver se a string esta vazia e usa ISDIGIT para percorrer toda a string

    local nI := 0
    
    IF len(nMSG) < 1
        RETURN .F.
    ENDIF

        FOR nI := 1 to len(nMSG)
            IF !IsDigit(SubStr(nMSG, nI , 1))
                RETURN .F.
            ENDIF
        NEXT nI
RETURN .T.

Function isSimbolo(cMSG) // Funcionando, codigo que testa pra ver se a string esta vazia percorre toda a string vendo se tudo dentro dela � simbolo

    local nI := 0
    
    IF len(cMSG) < 1
        RETURN .F.
    ENDIF

        FOR nI := 1 to len(cMSG)
            IF !((ASC(cMSG) >= 33 .AND. ASC(cMSG)<= 47) .OR.(ASC(cMSG) >= 58 .AND. ASC(cMSG) <= 64) .OR. (ASC(cMSG)>= 91 .AND. ASC(cMSG) <= 96) .OR. (ASC(cMSG) >= 123 .AND. ASC(cMSG) <= 126))
                RETURN .F.
            ENDIF
        NEXT nI
RETURN .T.

Function toLower(cMSG)
RETURN Lower(cMSG)

Function cTroca(aVal)
    aAdd(aVal , aVal[2] )  // salva uma copia de [2] em [3]
    aVal[2] := aVal[1] // clona [1] em [2]
    aVal[1] := aVal[3] // copia [3] em [1]
    aDel(aVal, 3) // apaga a auxiliar [3]
RETURN aVal
