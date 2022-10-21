// 67.[Refactoring do CS 03] Nas olimpíadas deste ano, anotou-se em
// cartões cada uma das medalhas de ouro, prata e bronze, obtidas por
// um determinado país. Faça um programa que leia esses cartões e
// exiba o quadro completo de medalhas obtidas pela delegação do
// país. O cartão com o conteúdo “F” indica que é o último da pilha.

Function Main()

	Local cCartao 	 := ""
	Local nO 	  	 := 0
	Local nP 	  	 := 0
	Local nB 	  	 := 0
	Local nTotal  	 := 0
	local bContinuar := .T.

	DO WHILE (bContinuar) // looping que irá até aparecer a medalha F
		ACCEPT "Informar o tipo de medalha [P] [B] [O] para soma-las ou 'F' para parar: " TO cCartao
			cCartao := Upper(cCartao)
		
		WHILE cCartao <> "F" .AND. cCartao <> "P" .AND. cCartao <> "B" .AND. cCartao <> "O"
			Accept "Tipo de medalha invalido, inseira um valor valido ou 'F' para parar: " TO cCartao
				cCartao := Upper(cCartao)
		ENDDO

			IF cCartao == "F"
				bContinuar := .F.

			ELSEIF cCartao == "P"
				nP++
				nTotal++

			ELSEIF cCartao == "O"
				nO++
				nTotal++

			ELSEIF cCartao == "B"
				nB++
				nTotal++
			ENDIF
	ENDDO

	QOUT("")
	QOUT("O TOTAL DE MEDALHAS:", Alltrim(STRZERO(nTotal, 3)))
	QOUT("MEDALHAS DE OURO:...", Alltrim(STRZERO(nO, 3)))
	QOUT("MEDALHAS DE PRATA:..", Alltrim(STRZERO(nP, 3)))
	QOUT("MEDALHAS DE BRONZE:.", Alltrim(STRZERO(nB, 3)))
RETURN nil
