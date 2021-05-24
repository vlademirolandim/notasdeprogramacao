
REQUEST QOUT

FUNCTION Main()
Local buf, cBuf := ""
 
   cBuf += "Procedure MM" + hb_eol()
   cBuf += "? 'Just a test!'" + hb_eol()
 
   buf := hb_compileFromBuf( cBuf, "harbour", "/n" )
   hb_hrbRun( buf )
    
   hb_hrbUnload( buf ) // A função não pode ser retirada da memória (essa linha aqui dá um erro)
   
Return Nil