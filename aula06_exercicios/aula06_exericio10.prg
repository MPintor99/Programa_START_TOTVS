// 10.Escreva uma fun��o que calcule a m�dia de 3 valores quaisquer. O
// programa principal dever� ler os 3 valores informados pelo usu�rio e
// apresentar a m�dia.

Function Main()

    local nValores := 0
    local nMedia   := 0
    local nI       := 0
    local nSoma    := 0

    FOR nI := 1 to 3

        While !ISDIGIT(nValores) 

            Accept "Informe um numero para seu calculo de media: " TO nValores 
        ENDDO

        nValores := Val(nValores)
        nSoma := nSoma + nValores

    NEXT nI

    nMedia := MEDIA(nValores , nMedia , nSoma)
    QOUT("A media dos valores digitados eh:" , Alltrim(STR(nMedia)))
Return NIl

Static Function MEDIA(nValores , nMedia , nSoma)

    nMedia := nSoma / 3

Return nMedia

