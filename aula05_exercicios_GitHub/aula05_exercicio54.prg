// 54.Elaborar um programa que exiba, na tela, todos os caracteres visuais
// da tabela ASCII (do 32 ao 126) no formato �c�digo � caractere�.
// Exemplo: �80 � P�. Fazer 2 vers�es desta solu��o: uma utilizando la�o
// com pr�-teste (enquanto), outra usando la�o finito (para).

Function Main()


    Enquanto()

    QOUT("")

    PARA()

Return NIL

static Function Enquanto()//Funcao para o la�o enquanto

    local nI := 32

    DO WHILE nI <= 126

        QOUT("Codigo: [" , ALLTRIM(STRZERO(nI, 4)) , "] - Caractere :" , CHR(nI))// impressao que ira mostrar o numero e qual caractere equivale a este numero na tabela ASCII
            nI++
    ENDDO

Return NIL

static Function PARA(nI , nRandom)//Funcao para o la�o para


    FOR nI := 32 TO 126

        QOUT("Codigo: [" , ALLTRIM(STRZERO(nI, 4)) , "] - Caractere :" , CHR(nI))// impressao que ira mostrar o numero e qual caractere equivale a este numero na tabela ASCII

    NEXT nI

 Return NIL
