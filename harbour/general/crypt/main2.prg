
//http://www.pctoledo.com.br/forum/viewtopic.php?f=4&t=17848
REQUEST HB_CODEPAGE_UTF8EX
Function Main()

    LOCAL a, b, c, d, e
    
    HB_CDPSELECT( "UTF8EX" )


    ? "Só funciona quando o segundo parâmetro é uma string"

    
    ? 'hb_Crypt( "hello" )', hb_StrToHex( a := hb_Crypt( "hello" ) )           
    ?? "  ->" , hb_Decrypt( a )
    
    ? 'hb_Crypt( "hello", "" )', hb_StrToHex( b := hb_Crypt( "hello", "" ) )          
    ?? "  ->" , hb_Decrypt( b, "" )
    
    ? 'hb_Crypt( "hello", Chr( 0 ) )', hb_StrToHex( c := hb_Crypt( "hello", Chr( 0 ) ) )    
    ?? "  ->" , hb_Decrypt( c, Chr( 0 ) )
    
    ? 'hb_Crypt( "hello", "1" )', hb_StrToHex( d := hb_Crypt( "hello", "1" ) )         
    ?? "  ->" , hb_Decrypt( d, "1" )
    
    ? 'hb_Crypt( "hello", 1 )', hb_StrToHex( e := hb_Crypt( "hello", 1 ) )           
    ?? "  ->" , hb_Decrypt( e, 1 )


Return Nil