﻿
PROCEDURE MAIN

    LOCAL hIni := { => }

    /* http://www.pctoledo.com.br/forum/viewtopic.php?f=4&t=19428 */    
    /* https://searchcode.com/codesearch/view/4503902/ */
    
    FERASE("test3.ini")
    
    hIni["BANCO01"] := { => }
    hIni["BANCO01"]["USUARIO"] := "USER01"
    hIni["BANCO01"]["PASSWORD"] := "PASS"
    hIni["BANCO02"] := { => }
    hIni["BANCO02"]["USUARIO"] := "USER02"
    hIni["BANCO02"]["PASSWORD"] := "PASS2"
    hIni["BANCO03"] := { => }
    hIni["BANCO03"]["USUARIO"] := "USER03"
    hIni["BANCO03"]["PASSWORD"] := "PASS3"
    ? "Str content"
    ? hb_IniWriteStr( hIni )
    ? "Converte uma string no formato ini em Hash"
    ? hb_ValToExp( hb_IniReadStr( hb_IniWriteStr( hIni ) ) )

    ? "Agora vou criar o arquivo test3.ini"
    hb_IniWrite( "test3.ini" , hIni )    
    ? "File test3.ini"
    ? hb_MemoRead( "test3.ini" )
    

    RETURN
    
    