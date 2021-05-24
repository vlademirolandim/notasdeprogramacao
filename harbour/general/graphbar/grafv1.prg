/*

                     '
                    .      '      .
              .      .     :     .      .
               '.        ______       .'
                 '  _.-"`      `"-._ '
                  .'                '.
           `'--. /                    \ .--'`
                /                      \
               ;                        ;
          - -- |                        | -- -
               |     _.                 |
               ;    /__`A   ,_          ;
           .-'  \   |= |;._.}{__       /  '-.
              _.-""-|.' # '. `  `.-"{}<._
                    / 1938  \     \  x   `"
               ----/         \_.-'|--X----
               -=_ |         |    |- X.  =_
              - __ |_________|_.-'|_X-X##
              jgs `'-._|_|;:;_.-'` '::.  `"-
               .:;.      .:.   ::.     '::.




VERSÍCULO:
   Porque, aquilo que a Lei fora incapaz de fazer por estar
enfraquecida pela carne, Deus o fez, enviando seu próprio Filho, a
semelhança do homem pecador, como oferta pelo pecado. E assim
condenou o pecado na carne, a fim de que as justas exigências da
Lei fossem plenamente satisfeitas em nós, que não vivemos segundo a
carne, mas segundo o Espírito.
    -- Romanos 8:3-4

PENSAMENTO:
   Deus nos dá dois presentes que cumprem as exigências justas da
Lei, mas que a Lei em si não conseguia nos dar. Primeiro, ele nos
dá a oferta perfeita pelo pecado – seu Filho Jesus – para nos
perdoar, purificar e redimir dos nossos pecados. Segundo, ele nos
dá seu Espírito para nos transformar em pessoas com o Seu caráter.
Deus nos dá na Nova Aliança o que a Lei e os Profetas prometeram.
Glória a Deus por seu plano, suas promessas e seus presentes!

ORAÇÃO:
   Obrigado, Pai Celestial, por sua bondade incomparável e sua
graça ao me dar seus grandes e perfeitos presentes: seu Filho
precioso e perfeito e o abençoado Espírito Santo. No nome de Jesus,
e pela intercessão do Espírito Santo, eu Lhe louvo e agradeço,
querido Pai. Amém.

  _   ("-._   ("-._   ("-._   ("-._   ("-._   ("-._   ("-._   ("-._   ("-.
   )   )   )   )   )   )   )   )   )   )   )   )   )   )   )   )   )   )
  (_,-"   (_,-"   (_,-"   (_,-"   (_,-"   (_,-"   (_,-"   (_,-"   (_,-"


 Nome  : GRAFV1
 Fonte : 111 Funções do Clipper5 (P. 6)
 Finalidade : Exibe na tela um gráfico de barras verticais com até
              12 barras. Esse gráfico tem a largura das barras deter-
              minada automaticamente pela quantidade de colunas 
              exibidas. Podem ser exibidos opcionalmente três títulos
              centralizados (um na parte superior e dois na parte 
              inferior).
 Parâmetros : aMatriz -> É uma matriz com duas colunas e até 12 linhas
                         usada para armazenar as legendas e os valores
                         de cada coluna a ser exibida no gráfico.

              lMostaVal -> É um valor lógico que exibe o valor da co-
                           luna no alto da mesma se for especificado
                           como TRUE. Caso contrário, não exibe os 
                           valores.
              cTit1, cTit2, cTit3 -> Textos opcionais.  

 Dependências : NENHUMA
*/
#include "common.ch"
FUNCTION GrafV1( aVal , lMostraVal, cTit1, cTit2, cTit3 )
LOCAL cTg1 // Tela
LOCAL nTam // Total de elementos
LOCAL nLarg // Largura da coluna
LOCAL aM1 // Matriz de caracteres que irão compor o gráfico
LOCAL nPorc, t
LOCAL nPorc1, nEscala
LOCAL i
LOCAL nNum
LOCAL nPos, nBar, nPosIni,j
LOCAL nPosColunaAtual

    DEFAULT lMostraVal TO .F.
    SAVE SCREEN TO cTg1
    CLS
    nTam := LEN( aVal )
    nLarg := 60 / nTam
    aM1 := { CHR(240),;
            CHR(177),;
	    CHR(178),;
	    CHR(219),;
	    CHR(220),;
	    CHR(221),;
	    CHR(240),;
	    CHR(197),;
	    CHR(206),;
	    "*",;
	    "X",;
	    "+" }

    // -- O objetivo desse trecho é achar a escala
    // -- nPorc é o maior valor do array
    nPorc := 0
    FOR i := 1 TO nTam
        nPorc := IIF( nPorc <= aVal[i,1], aVal[i,1], nPorc )
    NEXT
    // A escala é o maior valor / 5
    nEscala := nPorc / 5
    // ----------------------------------------------
    nPorc1  := nPorc
    FOR nNum := 1 TO 21 STEP 4
        @ nNum,0 SAY STR( nPorc,4)
	nPorc := nPorc - nEscala
    NEXT
    // Eixo Y
    FOR i := 1 TO 20
        @ i,5 SAY CHR(179)
    NEXT
    // Eixo X
    @ i,5 SAY CHR(192) + REPLICATE(CHR(196),72)
    t := 6-nLarg
    nPosColunaAtual := t+nLarg+1
    // Laço que imprime as barras
    FOR i := 1 TO nTam
        @ 22,nPosColunaAtual SAY LEFT( aVal[i,2] , nLarg )
	nPos := INT( aVal[i,1]*20/nPorc1)
	// Imprime de baixo para cima (Linha 20 inicia)
	nBar := 20 - nPos+1
	FOR j := 20 TO nBar STEP -1
	    @ j,nPosColunaAtual SAY REPLICATE( aM1[i], nLarg )
	NEXT    
	// Incrementa a proxima posição da coluna
        nPosColunaAtual += nLarg+1
        
	IF lMostraVal
           @ nBar,t+nLarg+(nLarg/2) SAY STR(aVal[i,1],3)
        ENDIF

    NEXT

    IF cTit1 <> NIL
       nPosIni := (80-LEN( cTit1 ) ) / 2
       @ 23,nPosIni SAY cTit1
    ENDIF
    IF cTit2 <> NIL
       nPosIni := (80-LEN( cTit2 ) ) / 2
       @ 24,nPosIni SAY cTit2
    ENDIF
    
    IF cTit3 <> NIL
       nPosIni := (80-LEN( cTit3 ) ) / 2
       @ 0,nPosIni SAY cTit3
    ENDIF

    INKEY(0)
    RESTORE SCREEN FROM cTg1
 
 RETURN NIL
