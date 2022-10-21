// 52.Elaborar um programa que exiba na tela, automaticamente, 50
// valores gerados aleatoriamente, entre 10 e 99. Fazer 3 versões desta
// solução: uma utilizando laço com pré-teste (enquanto), outra usando
// laço com pós-teste (repita) e uma última usando laço finito (para).

Function Main()

    local nI      := 1
    local nRandom := 0 

    Enquanto(nI , nRandom)

    QOUT("")

    PARA(nI , nRandom)

Return NIL

static Function Enquanto(nI , nRandom)//Funcao para o la�o enquanto

    DO WHILE nI <= 50 

        nRandom := HB_RandomInt(10,99)//comando que exibe numeros randomicos entre 10 e 99
        QOUT("WHILE [" , ALLTRIM(STRZERO(nI, 4)) , "]" , nRandom)
            nI++
    ENDDO

Return NIL

static Function PARA(nI , nRandom)//Funcao para o la�o para

    For nI := 1 to 50 STEP 1

        nRandom := HB_RandomInt(10,99)//comando que exibe numeros randomicos entre 10 e 99
        QOUT("FOR [" , ALLTRIM(STRZERO(nI, 4)) , "]" , nRandom)
    NEXT

Return NIL
