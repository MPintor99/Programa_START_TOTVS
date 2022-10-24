// 8. Sabendo que a �rea quadrada � dada pela multiplica��o da medida de
// 2 lados, escreva um algoritmo que mostre a �rea quadrada de um
// espa�o qualquer cujos lados foram informados pelo usu�rio. O c�lculo
// da �rea dever� ser realizado por uma fun��o.

Function Main()

    local nLadoA := 0
    local nLadoB := 0
    local nArea  := 0

    While !ISDIGIT(nLadoA) 
        Accept "Informe um valor em metros para a sua variavel A: " TO nLadoA 
    ENDDO

    While !ISDIGIT(nLadoB)
        Accept "Informe um valor em metros para a sua variavel B: " TO nLadoB 
    ENDDO

    nLadoA := Val(nLadoA)
    nLadoB := Val(nLadoB)

    nArea := AREA(nLadoA , nLadoB , nArea)

    QOUT("")
    QOUT("A area quadrada dos lados informados e:" , Alltrim(STR(nArea)) , "m�")
Return NIL

Static Function AREA(nLadoA , nLadoB , nArea)

    nArea := nLadoA * nLadoB

Return nArea
