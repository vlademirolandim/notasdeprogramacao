
REQUEST QOUT

FUNCTION Main()
Local buf, cBuf := ""
 
   cBuf += "Procedure Olar" + hb_eol()
   cBuf += "? 'testando!'" + hb_eol()
 
   buf := hb_compileFrombuf( cBuf , "-n" )

   hb_HrbRun( buf )
   
  
   ?
   ? "------------------------------------------------------------"
   ? "Type : " , Type( "Olar()" ) // A fun��o n�o fica na mem�ria
   ? "Type : " , Type( "EuExisto()" )
   
Return Nil

function EuExisto

return nil



