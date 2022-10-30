// 18.Dada uma data informada pelo usuário, indicar ordinalmente o dia do
// ano que ela representa do 1o dia ao 365o/366o (conforme o ano for
// ou não bissexto). O usuário informará separadamente dos valores do
// dia, do mês e do ano pesquisado.
SET PROCEDURE TO lib_entrada.prg

Function Main()

local cDia  := 0
local cMes  := 0
local cAno  := 0
local dData := 0


    Accept "Insira aqui o dia do mes: " TO cDia

    WHILE !EHNUMERO(cDia) .AND. Val(cDia) < 1 .OR. Val(cDia) > 31
        Accept "Voce deve digitar um numero entre 1 e 31 para o seu Dia: " TO cDia
    ENDDO

    Accept "Insira aqui o numero do mes: " TO cMes

    WHILE !EHNUMERO(cMes) .AND. Val(cMes) < 1 .OR. Val(cMes) > 12
        Accept "Voce deve digitar um numero entre 1 e 12 para o seu Mes: " TO cMes
    ENDDO

    Accept "Insira aqui o dia do mes: " TO cAno

    WHILE !EHNUMERO(cAno)
        Accept "Voce deve digitar um numero para o Ano: " TO cAno
    ENDDO

    dData := cAno + "/" + cMes + "/" + cDia
    dData := CtoD(dData)
    QOUT("Este eh o " + ALLtrim(str(DoY(dData))) + "º dia do ano indicado")
Return NIL
