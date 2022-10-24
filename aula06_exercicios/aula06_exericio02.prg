// 2. Criar um algoritmo que efetue o cálculo de uma prestação em atraso.
// para tanto, utilize a fórmula PREST = VALOR + (VALOR * (TAXA/ 100)
// * TEMPO). Apresentar o valor da prestação. O cálculo e a exibição
// deverão ser feitos por um procedimento.

Function Main()

    local nPrest := 0
    local nValor := 0
    local nTaxa  := 0
    local nTempo := 0

    WHILE !ISDIGIT(nValor) .OR. Val(nValor) <= 0
        Accept "Digite aqui o valor da sua prestacao em atraso: " TO nValor
    ENDDO

    WHILE !ISDIGIT(nTaxa) .OR. Val(nTaxa) <= 0
        Accept "Digite aqui o valor da taxa da sua prestacao em atraso: " TO nTaxa
    ENDDO

    WHILE !ISDIGIT(nTempo) .OR. Val(nTempo) <= 0
        Accept "Digite aqui quantos meses sua prestacao esta em atraso: " TO nTempo
    ENDDO

    nValor := Val(nValor)
    nTaxa := Val(nTaxa)
    nTempo := Val(nTempo)

    FORMULA(nValor , nTaxa , nTempo, nPrest)
    EXIBICAO(nValor , nTaxa , nTempo, nPrest)
    

Return NIL

Static Function FORMULA(nValor , nTaxa , nTempo, nPrest)

    nPrest := nValor + ((nValor *  (nTaxa / 100)) * nTempo)

Return nPrest

Static Function EXIBICAO(nValor , nTaxa , nTempo, nPrest)

    nPrest := FORMULA(nValor , nTaxa , nTempo, nPrest)
    QOUT("")
    QOUT("O valor da sua prestacao em atraso depois desse tempo eh: R$" , Alltrim(Str(Round(nPrest, 2))))

Return NIL
