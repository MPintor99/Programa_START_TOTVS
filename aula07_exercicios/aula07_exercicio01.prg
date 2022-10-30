// 1. Fazer um programa que dados um número de 1 até 7, apresente o
// nome do dia da semana correspondente. Considere 1 como
// “Domingo”. Utilize vetor.
SET PROCEDURE TO lib_entrada.prg

Function Main()

    local aDias := {"Domingo" , "Segunda-Feira" , "Terça-Feira" , "Quarta-Feira" , "Quinta-Feira" , "Sexta-Feira" , "Sabado"}
    local nI    := 0

    Accept "Escolha um numero de 1 a 7 para ver o dia da semana correspondente ao numero digitado: " TO nI

    WHILE !EHNUMERO(nI) .AND. Val(nI) < 1 .OR. Val(nI) > 7
        Accept "Numero inserido inválido, escolha um numero de 1 a 7 para ver o dia da semana correspondente ao numero digitado: " TO nI
    ENDDO
    
    nI := Val(nI)

    QOUT("")
    QOUT(aDias[nI])


Return NIL
