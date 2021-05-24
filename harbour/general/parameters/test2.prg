REQUEST HB_CODEPAGE_UTF8EX

PROCEDURE Main

    LOCAL i AS NUMERIC
    LOCAL cPar AS CHARACTER
    LOCAL cValue, cValue2
    LOCAL lFoundOptionValid := .f.

    IF PCount() == 0
        Help()
        RETURN
    ENDIF
    i := 1
    DO WHILE i <= PCount()

        cPar := hb_PValue( i++ )

        DO CASE
        CASE hb_LeftEq( cPar , "--par" )
            
            cValue := hb_PValue( i++ )
            lFoundOptionValid := .t.

        CASE hb_LeftEq( cPar , "--second" )
            
            cValue2 := hb_PValue( i++ )
            lFoundOptionValid := .t.


        ENDCASE

    ENDDO

    IF lFoundOptionValid 

        ? "Execute with params : --par Value : " , cValue , "  --second : " , cValue2

    ENDIF

    RETURN

STATIC PROCEDURE Help

    ? "Help routine"
    ?
    ? "  --par      Parameter value"
    ? "  --second   Second param value"
    ? ""
    ? "  --help         Show this help"

    RETURN
/*********************/
