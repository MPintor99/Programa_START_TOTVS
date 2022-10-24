// 8. Sabendo que a área quadrada é dada pela multiplicação da medida de
// 2 lados, escreva um algoritmo que mostre a área quadrada de um
// espaço qualquer cujos lados foram informados pelo usuário. O cálculo
// da área deverá ser realizado por uma função.

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
    QOUT("A area quadrada dos lados informados e:" , Alltrim(STR(nArea)) , "m²")
Return NIL

Static Function AREA(nLadoA , nLadoB , nArea)

    nArea := nLadoA * nLadoB

Return nArea
