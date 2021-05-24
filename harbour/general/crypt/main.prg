
PROCEDURE MAIN

    LOCAL cString

    /* http://www.pctoledo.com.br/forum/viewtopic.php?f=4&t=17848 */    
    LOCAL a, b, c, d
    ? hb_StrToHex( a := hb_Crypt( "hello" ) )
    ? hb_StrToHex( b := hb_Crypt( "hello", "" ) )
    ? hb_StrToHex( c := hb_Crypt( "hello", Chr( 0 ) ) )
    ? hb_StrToHex( d := hb_Crypt( "hello", "1" ) )
    ? hb_Decrypt( a ) // llo
    ? hb_Decrypt( b, "" ) // hello
    ? hb_Decrypt( c, Chr( 0 ) ) // hello
    ? hb_Decrypt( d, "1" ) // hello   
    /***/
    
    cString := "senhaDoBanco"
    ? hb_crypt( cString , "" )
    ? hb_decrypt( hb_crypt( cString , "" ) , "" )
    ? cString == hb_decrypt( hb_crypt( cString , "" ) , "" )


    RETURN