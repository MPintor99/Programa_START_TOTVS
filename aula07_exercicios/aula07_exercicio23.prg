// 23.Fazer um programa que trate de um vetor de 8 elementos numéricos.
// Ele deverá apresentar um menu que permitirá as seguintes
// operações: a. Carregar o vetor através da leitura dos valores.
// b. Exibir o conteúdo do vetor.
// c. Classificar os valores em ordem crescente. Caso o vetor esteja
// vazio, informar.
// d. Classificar os valores em ordem decrescente. Caso o vetor
// esteja vazio, informar.
// e. Pesquisar a existência de um valor no vetor. Caso o vetor esteja
// vazio, informar.
// f. Informar o somatório dos valores do vetor.
// g. Informar a média dos valores do vetor.
// h. Informar o maior e o menor valor do vetor.
// i. Embaralhar o conteúdo do vetor.
// j. Informar os valores que se repetem e a quantidade de
// repetições.

Function main()

    local aVet := {}
    local nOpc := 0
    local lRun := .T.


    WHILE lRun

        IF nOpc < 1 .and. nOpc > 9

            QOUT("Invalido")

        ELSE
            
            QOUT("")
            QOUT("Opcao 1 - Carregar array")
            QOUT("Opcao 2 - Exibir array")
            QOUT("Opcao 3 - Ordenar crescente")
            QOUT("Opcao 4 - Ordenar decrescente")
            QOUT("Opcao 5 - Pesquisar valor")
            QOUT("Opcao 6 - Somatoria dos valores")
            QOUT("Opcao 7 - Media dos valores")
            QOUT("Opcao 8 - Embaralhar array")
            QOUT("Opcao 9 - Pesquisar elementos repetidos")
            INPUT "Digite uma opcao: " TO nOpc
            QOUT("")
            
        endif

        IF nOpc = 1

            QOUT("")

            aVet := fillArray()

        ELSEIF nOpc = 2

            QOUT("")

            showArray(aVet)

        ELSEIF nOpc = 3
            
            QOUT("")

            ascArray(aVet)
            lRun := .F.

        ELSEIF nOpc = 4

            QOUT("")

            descArray(aVet)
            lRun := .F.

        ELSEIF nOpc = 5

            QOUT("")

            findArray(aVet)
            lRun := .F.

        ELSEIF nOpc = 6

            QOUT("")

            sumArray(aVet)
            lRun := .F.

        ELSEIF nOpc = 7

            QOUT("")

            medArray(aVet)
            lRun := .F.

        ELSEIF nOpc = 8

            scrambleArray(aVet)
            lRun := .F.

        ELSEIF nOpc = 9

            QOUT("")

            repeatArray(aVet)
            lRun := .F.

        ELSE

            QOUT("Opcao invalida")

        ENDIF

    ENDDO


Return NIL

static Function fillArray()

    local aVet   := {}
    local nNum   := 0
    local nCount := 0

    FOR nCount := 1 TO 8

        INPUT "Digite um numero: " TO nNum

        Aadd(aVet, nNum)

    NEXT nCount

Return aVet


static Function showArray(aVet)

    QOUT(hb_valtoexp(aVet))

Return NIL


static Function ascArray(aVet)

    IF Empty(aVet)

        QOUT("Vazio")

    ELSE
        
        ASORT(aVet)
        showArray(aVet)

    ENDIF

Return NIL


static Function descArray(aVet)

    local aShow := {}

    IF Empty(aVet)

        QOUT("Vazio")

    ELSE
        
        aShow := ASORT(aVet,,,{| x,y | x > y })

        QOUT(hb_valtoexp(aShow))
        
    ENDIF 

Return NIL

static Function findArray(aVet)

    local nFind := 0
    local nScan := 0

    INPUT "Digite o numero a ser pesquisado: " TO nFind

    IF EMPTY(aVet)

        QOUT("Vazio")

    ELSE
        
        nScan := ASCAN(aVet, nFind)

        IF nScan = 0

            QOUT("Elemento nao encontrado")
        
        ELSE

            QOUT("Elemento encontrado na posicao " + AllTrim(str(nScan)))

        ENDIF

    ENDIF

Return NIL

static Function sumArray(aVet)

    local nCount := 1
    local nSum := 0

    FOR nCount := 1 TO 8

        nSum += aVet[nCount]

    NEXT nCount

    QOUT("Somatoria: " + AllTrim(str(nSum)))

Return NIL


static Function medArray(aVet)

    local nCount := 1
    local nSum := 0

    FOR nCount := 1 to 8

        nSum += aVet[nCount]

    NEXT nCount

    nSum /= 8

    QOUT("Media: " + AllTrim(str(nSum)))


Return NIL

static Function rlArray(aVet)

    local nNuml, nNumr := 0

    ASORT(aVet)

    nNuml := aVet[1]
    nNumr := aVet[8]

    QOUT("Maior valor: " + AllTrim(str(nNumr)))
    QOUT("Menor valor: " + AllTrim(str(nNuml)))

Return NIL

Function scrambleArray(aVet)

    local aAux  := {}
    local nAux  := 0
    local nAux2 := 0


    WHILE LEN(aAux) != LEN(aVet)

        nAux := HB_RandomInt(LEN(aVet))

        nAux2 := ASCAN(aAux, aVet[nAux]) 

        IF nAux2 = 0 

            AADD(aAux, aVet[nAux])

        ENDIF

    ENDDO
    
    QOUT(hb_ValToExp(aAux))
    QOUT("")

Return NIL


static Function repeatArray(aVet)

    local nCount    := 0
    local nRep      := 0
    local nI        := 0
    local nII       := 0
    local nComp     := 0
    local nRun      := 1
    local nCheck    := 1

    FOR nCount := 1 TO 8

        nRep := aVet[nCount]
        nI := 0
        nCheck := 0

        WHILE nCheck <= 8

            nComp := ASCAN(aVet, nRep, nRun)

            IF nComp <> 0

                nI++
                nRun := nComp + 1

            ENDIF

            nCheck++

        ENDDO

        IF nI > 1

            QOUT("Elemento " + AllTrim(str(nRep)) + " se repete " + AllTrim(str(nI)) + " vezes.")

            nII++

        ENDIF
    
    NEXT nCount
    
    IF nII = 0

        QOUT("Nenhum elemento se repete")

    ENDIF
       
Return NIL
