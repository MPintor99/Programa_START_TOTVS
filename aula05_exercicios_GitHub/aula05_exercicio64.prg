// 64.[Refactoring do 31] Elaborar um programa que efetue a leitura do
// nome e do sexo biológico de uma pessoa, apresentando como saída
// uma das seguintes mensagens: "Ilmo. Sr.", para o sexo informado
// como masculino ou a mensagem "Ilma. Sra. ", para o sexo informado
// como feminino. Apresente também abaixo da mensagem impressa o
// nome da pessoa. Os valores válidos para o sexo são “M” para
// masculino ou “F” para feminino. Não poderá ser aceito nome vazio.

Function Main()

    local cNome := 0
    local lSexo := ""

    WHILE Empty(cNome)
        ACCEPT "INSIRA SEU NOME AQUI: " TO cNome
    ENDDO

        ACCEPT "INSIRA SEU SEXO AQUI (M/F): " TO lSexo
            lSexo := upper(left(lSexo, 1))
        
        IF lSexo == "F"
            QOUT("ILMA. SRA " , cNome)
        
        ELSE
            QOUT("ILMO. SR " , cNome)
        ENDIF

RETURN NIL
