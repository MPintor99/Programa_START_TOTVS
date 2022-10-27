// 3. Ler 10 elementos de uma matriz tipo vetor e apresentá-los na ordem
// inversa em que foram lidos e armazenados.

Function Main()

    local aCoisas := {}
    local nCoisa  := 0
    local nI      := 0

    While nI < 10
        Accept "Insira aqui algo para entrar dentro da matriz: " TO nCoisa
            Aadd(aCoisas, nCoisa)
        nI ++
    ENDDO

    FOR nI := 10 TO 1 STEP -1
        QOUT(aCoisas[nI])
    Next nI

Return NIL
