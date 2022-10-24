// 5. Implementar um procedimento que dado o dividendo e o divisor de
// uma divisão, calcule tanto o quociente como o resto da divisão inteira. O
// resultado não deverá ser exibido pelo procedimento. Deverá ficar
// disponível para ser exibido ou manipulado pelo programa principal.

Function Main()

    local nDividendo := 0
    local nDivisor   := 0
    local nQuociente := 0
    local nResto     := 0

    WHILE !ISDIGIT(nDividendo)
        Accept "insira aqui o valor de seu dividendo: " TO nDividendo
    ENDDO

    WHILE !ISDIGIT(nDivisor)
        Accept "insira aqui o valor de seu divisor: " TO nDivisor
    ENDDO

    nDividendo := Val(nDividendo)
    nDivisor := Val(nDivisor)

    PROCEDIMENTO(nDividendo , nDivisor , @nQuociente , @nResto)
    QOUT("")
    QOUT("O resultado da sua divisao eh: " , Alltrim(STR(Round(nQuociente, 2))))
    QOUT("")
    QOUT("O resto da sua divisao eh: " , Alltrim(STR(Round(nResto, 2))))

Return NIL

Static Function PROCEDIMENTO(nDividendo , nDivisor , nQuociente , nResto)

    nQuociente := nDividendo / nDivisor
    nResto     := nDividendo % nDivisor


Return NIL
