// 4. Lembra do exerc�cio da troca de valores entre 2 vari�veis?
// Implementar um programa que leia 2 valores informados pelo usu�rio
// e atrav�s de um procedimento chamado �troca�, realize a troca dos
// valores entre as duas vari�veis.

Function Main()

    local nA := 0
    local nB := 0

    While !ISDIGIT(nA) 
        Accept "Informe um valor para a sua variavel A: " TO nA 
    ENDDO

    While !ISDIGIT(nB)
        Accept "Informe um valor para a sua variavel B: " TO nB 
    ENDDO


    TROCA(@nA , @nB)

    QOUT("")
    QOUT("Sua variavel A passou a ter valor: " , Alltrim(nA))
    QOUT("Sua variavel B passou a ter valor: " , Alltrim(nB))

Return NIL

Static Function TROCA(nA , nB)

    local nC := 0

    nC := nA 

    nA := nB 

    nB := nC 

Return NIL

    