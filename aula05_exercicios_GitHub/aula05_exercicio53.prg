// 53.Elaborar um programa que exiba na tela, automaticamente, valores
// gerados aleatoriamente, entre 10 e 99. Os valores deverão ser
// gerados indefinidamente até que surja o valor 80, que ao surgir não
// deve ser exibido na tela. Fazer 3 versões desta solução: uma
// utilizando laço com pré-teste (enquanto), outra usando laço com
// pós-teste (repita) e uma última usando laço finito (para).

Function Main()

    local nI      := 1
    local nRandom := 0 

    Enquanto(nI , nRandom)

    QOUT("")

    PARA(nI , nRandom)

Return NIL

static Function Enquanto(nI , nRandom)//Funcao para o la�o enquanto

    DO WHILE nRandom <> 80//loop que funcionar� at� selecionar o valor 80

        nRandom := HB_RandomInt(10,99)
        IF nRandom <> 80 // print que mostrar� os numeros que n�o s�o 80
            QOUT("WHILE [" , ALLTRIM(STRZERO(nI, 4)) , "]" , Alltrim(StrZero(nRandom, 3)))
            nI++
        ENDIF
    ENDDO

Return NIL

static Function PARA(nI , nRandom)//Funcao para o la�o para

    local nCont := 0

     For nI := 1 to 2 // "golpe" que faz o "For" funcionar infinitamente at� o random gerar o numero 80

        nRandom := HB_RandomInt(0,100)
            IF nRandom <> 80 // print que mostrar� os numeros que n�o s�o 80
                QOUT("FOR [" , ALLTRIM(STRZERO(nCont, 4)) , "]" , Alltrim(StrZero(nRandom, 3)))
                nI := 1
                nCont++
            else
                nI := 2
            ENDIF
    NEXT nI

 Return NIL
