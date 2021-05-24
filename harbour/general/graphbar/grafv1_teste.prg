/* hbmk2 grafv1_teste.prg  -lvlad -L.. -b
*/

FUNCTION MAIN()
LOCAL aVal1[3,2] 
LOCAL aVal2[12,2]
LOCAL x

    altd(1)
    ? "Início do teste (ALT+D para DEBUG)"
    INKEY(0)
    aVal1[1,1] := 100; aVal1[1,2] := "JAN"
    aVal1[2,1] := 56 ; aVal1[2,2] := "FEV"
    aVal1[3,1] := 300; aVal1[3,2] := "MAR"
    Grafv1( aVal1 )
    CLS
    ? "Exemplo 2";INKEY(0)
    FOR x := 1 TO 12
        aVal2[x][1] := x * 50
	aVal2[x][2] := STR(x)
    NEXT
    Grafv1( aVal2 , .T. , "Título 1","Título 2","Título 3" )


RETURN NIL
