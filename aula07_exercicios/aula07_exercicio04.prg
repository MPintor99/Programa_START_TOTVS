// 4. Dado um número de 1 até 12, apresentar o número de dias do mês
// correspondente. Se o número escolhido for 2 (fevereiro), considere 28
// dias. Usar vetor.

SET PROCEDURE TO lib_entrada.prg

Function Main()

    local aMeses := {"31" , "28" , "31" , "30" , "31" , "30" , "31" , "31" , "30" , "31" , "30" , "31"}
    local nI      := 0


    Accept "Insira aqui o numero do mes para saber quantos dias ele tem: " TO nI

    WHILE !EHNUMERO(nI) .AND. Val(nI) <1 .OR. Val(nI) > 12
        Accept "Voce nao digitou um numero valido, insira um numero de 1 a 12: " TO nI 
    ENDDO

    QOUT("O mês selecionado tem" , aMeses[VAL(nI)] , "dias.")

Return NIL
