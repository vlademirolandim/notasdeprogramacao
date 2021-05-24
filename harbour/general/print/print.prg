
procedure main



 cPrinterData := "OKOKOKOKO"                                                                                                                   
 FWrite( 1, Chr( 27 ) + "[5i" + ; 
                 cPrinterData + ; 
                 Chr( 27 ) + "[4i" ) 

return
