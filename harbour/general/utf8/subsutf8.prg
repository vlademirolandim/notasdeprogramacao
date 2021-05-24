/*Configure seu editor para Utf-8 */
Procedure Main()

   REQUEST HB_CODEPAGE_UTF8EX // Disponibiliza o suporte a UTF8ex
   hb_cdpSelect("UTF8EX") // Seleciona o suporte a UTF8
	
   CLS	
 
  
   
   ? Substr( "OUTRO EXEMPLO ÁGUA E PÃO" , 15 , 3 )
   ? HB_UTF8SUBSTR( "OUTRO EXEMPLO ÁGUA E PÃO" , 15 , 3 ) 

 
   
Return 