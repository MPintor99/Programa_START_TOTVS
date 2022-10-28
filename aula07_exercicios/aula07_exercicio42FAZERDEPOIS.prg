// 42.Ler o nome e 3 notas de 5 alunos, calcular a média de cada aluno
// (entre 2 das 3 notas pois a menor deve ser descartada). Apresentar
// todas as notas e médias no final. Permitir ordenar por ordem alfabética
// de nome e ordem decrescente de media final.

Function Main()

    Local aNome  := ARRAY(5)
    local aNotas := ARRAY(15)
    local aResul := ARRAY(5)
    Local nNotas := 0
    local nCont2 := 0
    local nCont  := 0
    local nAux   := 0
    local cNome  := ""


    For nCont := 1 to 5
        ACCEPT "Digite o nome do aluno: " to aNome[nCont] 
        for nCont2 := 1 to 3
            Accept "Digite a nota: " to nNotas
            nNotas := val(nNotas)
            aNotas[nCont2] := nNotas

            ASORT(aNotas[nCont2])
        NEXT

        nAux:= (aNotas[2] + aNotas [3]) / 2
        aResul[nCont] := nAux


        NEXT
        qout("digite 1 para ")
        for nCont := 1 to 5 
            for nCont2 := 1 to 3

            ASORT(aNome)
            NEXT
            qout("o Aluno " + hb_valtoexp(aNome[nCont]) + " tem a nota " + hb_valtoexp(aResul[nCont]))

        NEXT

RETURN NIL
