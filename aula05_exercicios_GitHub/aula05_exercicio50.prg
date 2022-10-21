// 50.Elaborar um programa que exiba na tela automaticamente todos os
// números naturais entre 0 e 100, em ordem crescente. Fazer 3 versões
// desta solução: uma utilizando laço com pré-teste (enquanto), outra
// usando laço com pós-teste (repita) e uma última usando laço finito
// (para).

Function Main()

    local nI := 0

    Enquanto(nI)

    QOUT("")

    PARA(nI)

Return NIL

static Function Enquanto(nI) // Funcao para o laco enquanto

    DO WHILE nI <= 100
        QOUT("WHILE" , nI)
            nI++
    ENDDO

Return NIL

static Function PARA(nI)//Funcao para o la�o para

    For nI := 0 to 100 step 1
        QOUT("FOR" , nI)

    NEXT

Return NIL
