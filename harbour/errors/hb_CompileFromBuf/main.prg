
REQUEST QOUT

FUNCTION Main()
Local buf, cBuf := ""
 
   cBuf += "Procedure MM" + hb_eol()
   cBuf += "? 'Just a test!'" + hb_eol()
 
   buf := hb_compileFromBuf( cBuf, "harbour", "/n" )
   hb_hrbRun( buf )
    
   hb_hrbUnload( buf ) // A fun��o n�o pode ser retirada da mem�ria (essa linha aqui d� um erro)
   
Return Nil