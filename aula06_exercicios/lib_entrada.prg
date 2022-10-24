
Function EHNUMERO(nMSG) //Funcionando

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
