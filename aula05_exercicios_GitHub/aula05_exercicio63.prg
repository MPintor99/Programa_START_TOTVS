// 63.[Refactoring do 24] Ler quatro valores referentes a quatro notas
// escolares de um aluno e imprimir uma mensagem dizendo que o
// aluno foi aprovado, se o valor da média escolar for maior ou igual a
// 7. Se o valor da média for menor que 7, solicitar a nota de exame,
// sornar com o valor da média e obter nova média. Se a nova média
// for maior ou igual a 5, apresentar uma mensagem dizendo que o aluno foi
// aprovado em exame. Se o aluno não foi aprovado, indicar uma
// mensagem informando esta condição. Apresentar com as mensagens
// o valor da média do aluno, para qualquer condição. Atenção. Deverá
// ser feita a consistência dos dados de entrada para aceitar apenas
// notas com valores entre 0 e 10.

Function Main()

    local nSoma  := 0
    local nNum   := ""
    local nMedia := 0
    local nExame := 0

    QOUT("")
    ENQUANTO(@nSoma, nNum , @nMedia)
    QOUT("")
    MEDIA(@nMedia, @nExame)
        
        IF nMedia <= 5
            EXAME(@nMedia, @nExame)
        ENDIF

Return NIL

static Function ENQUANTO(nSoma , nNum , nMedia)

    local lLoop  := .T.
    local nI     := 0

    WHILE nI < 4

        ACCEPT "Digite aqui o valor (entre 0 e 10) da nota ou aperte '' para mostrar a media: " to nNum

            WHILE ISDIGIT(nNum) = .F.
                ACCEPT "Valor invalido, digite aqui o valor da nota (entre 0 e 10): " to nNum

                WHILE Val(nNum) < 0 .or. Val(nNum) > 10
                    ACCEPT "Valor invalido, digite aqui o valor da nota (entre 0 e 10): " to nNum

                ENDDO
            ENDDO

        nSoma := nSoma + Val(nNum)
        nI++
    ENDDO

    nMedia := nSoma / nI

Return nMedia

static Function MEDIA(nMedia, nExame )
    

    IF nMedia >= 7
        QOUT("Parabens, voce foi aprovado com media: " , alltrim(str(nMedia)))

    ELSE
        QOUT("Sua media e: " , alltrim(str(nMedia)))
        QOUT("")
        ACCEPT "Voce nao foi aprovado, insira aqui sua nota de exame: " TO nExame

            WHILE ISDIGIT(nExame) = .F.
                ACCEPT "Valor invalido, digite aqui o valor da nota (entre 0 e 10): " to nExame

                WHILE Val(nExame) < 0 .or. Val(nExame) > 10
                    ACCEPT "Valor invalido, digite aqui o valor da nota (entre 0 e 10): " to nExame
                ENDDO
            ENDDO
    ENDIF

Return nExame

static Function EXAME(nMedia, nExame)

    local nMediaFim := 0

    nMediaFim := (nMedia + Val(nExame)) / 2 

    IF nMediaFim >= 5
        QOUT("")
        QOUT("Parabens, voce foi aprovado com a nota de exame! Sua media e: " , alltrim(str(nMediaFim)))

    ELSE
        QOUT("")
        QOUT("Sua nota de exame nao foi suficiente para a sua aprovacao. Sua media e: " , alltrim(str(nMediaFim)))

    ENDIF

Return nMediaFim
