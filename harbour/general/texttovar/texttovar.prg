#xtranslate text into <v> [<rst:reset>]   => #pragma __text|<v>+=%s;if(<.rst.>,<v>:="",)

PROCEDURE MAIN

     LOCAL cSobre := ""

TEXT INTO cSobre

Dear <<Name>>, For as little as $150 you can have your entire home clean and sparkling, without enduring the nasty odor of chemical cleaners. 

ENDTEXT

cSobre := StrTran( cSobre , "<<Name>>" , "Adriele" )
? cSobre

RETURN


