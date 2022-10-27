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

Function Main()

    local aVetores := {}
    local nI       := 0

    FOR nI := 1 TO 12
        aAdd(aVetores, hb_RandomInt(1,99))
    NEXT 

    ASORT(aVetores)
    QOUT(hb_valtoexp(aVetores))    

Return NIL
