// 7. Como sabemos, o Harbour/ADVPL não possui uma função para cálculo
// de potência. Crie uma função “POT”, que receba como parâmetros a
// base e o expoente e retorne o valor da potência.

Function Main()

    local nBase := 0
    local nExp  := 0
    local nPot  := 0

    WHILE !ISDIGIT(nBase)
        Accept "insira aqui o valor da base da sua potenciacao: " TO nBase
    ENDDO

    WHILE !ISDIGIT(nExp)
        Accept "insira aqui o valor do expoente da sua potenciacao: " TO nExp
    ENDDO

    nBase := Val(nBase)
    nExp  := Val(nExp)
    nPot  := POT(nBase , nExp , nPot)
    QOUT("")
    QOUT("A potencia da base" , Alltrim(STR(Round(nBase, 0))) , "com o expoente" , Alltrim(STR(Round(nExp, 0))) , "eh:" , Alltrim(STR(Round(nPoT, 0))))



Return NIL

Static Function POT(nBase , nExp , nPot)

    nPot := nBase ** nExp

Return nPot
