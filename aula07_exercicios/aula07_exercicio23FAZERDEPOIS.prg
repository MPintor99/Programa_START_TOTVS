// 23.Fazer um programa que trate de um vetor de 8 elementos num�ricos.
// Ele dever� apresentar um menu que permitir� as seguintes
// opera��es: a. Carregar o vetor atrav�s da leitura dos valores.
// b. Exibir o conte�do do vetor.
// c. Classificar os valores em ordem crescente. Caso o vetor esteja
// vazio, informar.
// d. Classificar os valores em ordem decrescente. Caso o vetor
// esteja vazio, informar.
// e. Pesquisar a exist�ncia de um valor no vetor. Caso o vetor esteja
// vazio, informar.
// f. Informar o somat�rio dos valores do vetor.
// g. Informar a m�dia dos valores do vetor.
// h. Informar o maior e o menor valor do vetor.
// i. Embaralhar o conte�do do vetor.
// j. Informar os valores que se repetem e a quantidade de
// repeti��es.

Function Main()

    local aVetores := {}
    local nI       := 0

    FOR nI := 1 TO 12
        aAdd(aVetores, hb_RandomInt(1,99))
    NEXT 

    ASORT(aVetores)
    QOUT(hb_valtoexp(aVetores))    

Return NIL
