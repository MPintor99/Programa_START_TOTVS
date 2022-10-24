// 14.Organize as funções de PV e FV numa unidade de funções financeiras.

//nFV = Montante
//nI = Taxa em %
//nT = Tempo

Function PV(nI , nT , nFV)

    local nVP := 0

    nVP := nFV / (1 + (nI/100))** nT

    QOUT("O investimento inicial foi de : R$" , nVP)

Return nVP

Function SIMPLES(nVP , nJu , nPrazo , nVF) // Formula FV com juros simples

    nVF := nVP + (nVP * (nJu / 100) * nPrazo)
    QOUT("O valor de seu montante apos o rendimento eh: R$" , Alltrim(STR(Round(nVF, 2))))

Return NIL

Function COMPOSTO(nVP , nJu , nPrazo , nVF) //Formula FV com juros compostos

    nVF := nVP * ( 1 + (nJu / 100) ) ** nPrazo 
    QOUT("O valor de seu montante apos o rendimento eh: R$" , Alltrim(STR(Round(nVF, 2))))

Return NIL
