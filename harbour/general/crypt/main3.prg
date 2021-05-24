
REQUEST HB_CODEPAGE_UTF8

PROCEDURE MAIN

    LOCAL cString
    LOCAL cKey := "O que é nascido de Deus vence o mundo; e esta é a vitória que vence o mundo: a nossa fé.1 João 5:4"

    hb_cdpSelect("UTF8")
    
    cString := "senhaDoBanco"
    ? hb_crypt( cString , cKey )
    ? hb_decrypt( hb_crypt( cString , cKey ) , cKey )
    ? cString == hb_decrypt( hb_crypt( cString , cKey ) , cKey )


    RETURN