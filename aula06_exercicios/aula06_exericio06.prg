// 6. Faça uma função para calcular o dobro de um número qualquer. O
// programa principal deverá chamar essa função passando um valor
// informado pelo usuário e exibir o resultado na tela.

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
