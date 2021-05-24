#include <hmg.ch>

Function Main

        //Declare Window hrb
        
                        
        Load Window Main
        Main.Center
        Main.Activate
        
                          
        //LoadHrb()

Return

Function LoadHrb()

    LOCAL nHandle 
    
    // hrb.prg chama a janela hrb.fmg
    // hrb.hrb e gerado com o arquivo bat em anexo 
    nHandle := hb_HrbLoad( Memoread( "hrb.hrb" ) )
    hb_HrbDo( nHandle )
   

    return
