// 2. Ler 10 elementos de uma matriz tipo vetor e apresentá-los depois de
// todos serem lidos.

Function Main()

    local aCoisas := {}
    local nCoisa  := 0
    local nI      := 0

    While nI < 10
        Accept "Insira aqui algo para entrar dentro da matriz: " TO nCoisa
            Aadd(aCoisas, nCoisa)
        nI ++
    ENDDO

    QOUT(hb_valtoexp(aCoisas))

Return NIL
