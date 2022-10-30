
Function EHNUMERO(nMSG) //Funcionando

    local nI := 0
    
    IF len(nMSG) < 1
        RETURN .F.
    ENDIF

        FOR nI := 1 to len(nMSG)
            IF !IsDigit(SubStr(nMSG, nI , 1)) .AND. !SubStr(nMSG, nI , 1) == "." .AND. !SubStr(nMSG, nI , 1) == "-"
                RETURN .F.
            ENDIF
        NEXT nI
RETURN .T.

Function EHLETRA(cMSG) //Funcionando é um codigo ISALPHA que percorre toda a string

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

function MINUSCULA(cMSG)   
return Lower(cMSG)

Function EHSIMBOLO(cMSG)

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

Function iTroca(aVal)//a. iTroca(a, b): troca os valores entre as variáveis a e b.

    aAdd(aVal , aVal[2] )  // salva uma copia de [2] em [3]
    aVal[2] := aVal[1] // clona [1] em [2]
    aVal[1] := aVal[3] // copia [3] em [1]
    aDel(aVal, 3) // apaga a auxiliar [3]

Return aVal

Function isPar(nValor)//b. isPar(x): informa se o inteiro enviado é um número par.

    if (nValor % 2) == 0
        return .T.
    endif

Return .F.

Function isImPar(nValor)//c. isImPar(x): informa se o inteiro enviado é um número ímpar.

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


