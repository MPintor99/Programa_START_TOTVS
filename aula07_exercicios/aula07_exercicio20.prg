// 20.Alterar o programa anterior de modo a incluir 4 menus que terão as
// seguintes finalidades:
// a. Listar o conteúdo completo do vetor.

// b. Solicitar ao usuário um caractere, a ser pesquisado no vetor e
// informar se o caractere pesquisado existe ou não no vetor
// informando a posição em que ele está (todas as ocorrências
// visto que o caractere pode se repetir).

// c. Pesquisar se existe no vetor um caractere informado pelo
// usuário e informar qual a posição da última ocorrência desse
// caractere (visto que um mesmo caractere poderá se repetir).

// d. Pesquisar se existe no vetor um caractere informado pelo
// usuário e informar qual a posição da primeira ocorrência desse
// caractere (visto que um mesmo caractere poderá se repetir).


Function Main()

    local aVetores := {}

    ENCHEVETOR(@aVetores)

    QOUT("")
    QOUT("O seu vetor tem as letras: " , hb_valtoexp(aVetores))

Return NIL

Static Function ENCHEVETOR(aVetores)
    
    local nI := 0

    FOR nI := 1 TO 30
        aAdd(aVetores, (CHR(hb_RandomInt(65 , 90))))
    NEXT 

Return NIL
