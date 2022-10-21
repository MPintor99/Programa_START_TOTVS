// 72.Fazer um programa para calcular e exibir os "n" primeiros números da
// série de Fibonacci. O usuário informará o valor de n.

Function Main()

    local nNum    := 0

        ACCEPT "Insira quantos numeros da serie Fibonacci voce quer ver: " TO nNum
            nNum := val(nNum)

            WHILE (ChecaInteiro(nNum) = .f.)
                    ACCEPT "INVALIDO! Insira um numero inteiro: " TO nNum
                        nNum := val(nNum)
            ENDDO 

    CalcFib(nNum)

Return NIL

static Function ChecaInteiro(nNum)

    local nM     := 0
    local nS     := 0
    local lCheca := 0
    local iIn    := 0

    iIn := INT(nNum)

    nM := nNum * 10
    nS := iIn * 10

    IF nM == nS
        lCheca := .t.
    ELSEIF nM <> nS
        lCheca := .f.
    ENDIF

RETURN (lCheca)

static Function CalcFib(nNum)

    local nA      := 0
    local nB      := 1
    local nC      := 0
    local nCont   := 1

    IF nNum = 0
        QOUT(nA)
    ELSEIF nNum = 1
        QOUT(nB)
    ELSE
        QOUT()
        QOUT("A sequencia Fibonacci eh: ")
        QOUT()
        QOUT(StrZero(nCont,4) , ":" , AllTrim(str(nB)))
        WHILE (nCont < nNum)
            nC := nA + nB
            nA := nB
            nB := nC
                nCont++
            QOUT("[" , StrZero(nCont,4), "]" , ":" , AllTrim(STRZERO(nC, 4)))
       ENDDO   
    ENDIF
RETURN NIL
