// 68.[Refactoring do CS 02]: Faça um programa que leia um conjunto de
// notas de alunos de uma determinada turma, anotadas em cartões,
// calcule e exiba a média das notas dos alunos. Sabe-se que a classe
// possui 15 alunos.

Function Main()

    local nNota      := 0
    local nSomaNotas := 0
    local nAlunos    := 0
    local nContador  := 0
    local nMedia     := 0

    DO WHILE ISDIGIT(nAlunos) == .F.
        ACCEPT "Coloque a quantidade de alunos: " TO nAlunos
    ENDDO

    nAlunos := Val(nAlunos)

    DO WHILE (nContador < nAlunos)
        ACCEPT "Coloque a nota entre 0 e 10: " TO nNota
            nNota := Val(nNota)

            IF nNota >0 .AND. nNota <=10

            nSomaNotas := nSomaNotas + nNota
            nContador++
            ELSE
                QOUT("Valor invalido, coloque uma nota entre 0 e 10")
            ENDIF
    ENDDO

    nMedia := nSomaNotas / nAlunos

    QOUT("A media das notas desses alunos e: " , alltrim(STR(Round(nMedia, 2))))

Return NIL
