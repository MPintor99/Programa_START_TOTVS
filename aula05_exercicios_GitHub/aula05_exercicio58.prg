// 58.Faça um programa que calcule a somatória dos dez primeiros
// números naturais.

Function Main()

    local nI    := 1
    local nSoma := 0

    PARA(nI , nSoma)

Return NIL

static Function PARA(nI, nSoma)

    For nI := 1 to 10 step 1 //la�o que passa pelos numeros naturais acumula a soma dos valores dele em nSoma

        nSoma := nSoma + nI
            QOUT("[" , ALLTRIM(STRZERO(nI, 3)) , "]" , ALLTRIM(STRZERO(nSoma, 3)))

    NEXT

Return NIL
