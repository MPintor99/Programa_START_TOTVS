// 6. Fa�a uma fun��o para calcular o dobro de um n�mero qualquer. O
// programa principal dever� chamar essa fun��o passando um valor
// informado pelo usu�rio e exibir o resultado na tela.

Function Main()

    local nNum   := 0
    local nDobro := 0

    WHILE !ISDIGIT(nNum)
        Accept "insira aqui um valor para calcular o dobro: " TO nNum
    ENDDO

    nNum := Val(nNUm)

    DOBRO(nNum , @nDobro)
    QOUT("")
    QOUT("O dobro de" , Alltrim(Str(Round(nNum, 2))) , "eh" , Alltrim(Str(Round(nDobro, 2))))

Return NIL

Static Function DOBRO(nNum , nDobro)

    nDobro := 2 * nNum

Return nDobro
