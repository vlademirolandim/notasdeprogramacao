REQUEST HB_CODEPAGE_PTISO

PROCEDURE MAIN

    LOCAL aArray1 := aArray2 := aArray3 := {}
    LOCAL x
    
    hb_CdpSelect("PTISO")
    
    ? "Vou atribuir apenas aArray1 := 1 .. 5"
    FOR x := 1 TO 5
        AADD( aArray1 , 1 )
    NEXT
    
    ? "Os demais tambem foram alterados por causa da atribuição IN LINE"
    ? "     Array2" , "     Array3"
    FOR x := 1 TO 5
        ? aArray2[x] , aArray3[x]
    NEXT

    RETURN