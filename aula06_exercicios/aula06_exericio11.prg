// 11.Faça um algoritmo que calcule o reajuste de um salário. O usuário
// informará o salário atual e o percentual de reajuste.

Function Main()

local nSalario := 0
local nAjuste  := 0
local nSalAjus := 0


        WHILE !ISDIGIT(nSalario) 

            Accept "Informe aqui o salario atual: " TO nSalario

        ENDDO

        WHILE !ISDIGIT(nAjuste) 

            Accept "Informe aqui o % de ajuste no salario: " TO nAjuste

        ENDDO

    nSalario := Val(nSalario)
    nAjuste  := Val(nAjuste)

    AJUSTE(nSalario , nAjuste , nSalAjus)

Return NIL

Function AJUSTE(nSalario , nAjuste , nSalAjus)

    nSalAjus := nSalario + (nSalario * (nAjuste / 100))
    QOUT(nSalAjus)
Return NIL
