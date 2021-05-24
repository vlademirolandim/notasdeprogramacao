/*Configure seu editor para Utf-8 */
Procedure Main()

   REQUEST HB_CODEPAGE_UTF8EX // Disponibiliza o suporte a UTF8ex
   hb_cdpSelect("UTF8EX") // Seleciona o suporte a UTF8
	
   CLS	
   @ 0,0 say ""
   	
   ? len("ÁGUA") // 5
   ? hb_Utf8len("ÁGUA") // 4
   
   ? len("ÁGUA E PÃO") // 12
   ? hb_Utf8len("ÁGUA E PÃO") // 10  

 
   @ 5,0 say chr(179) // Não exibe corretamente
   @ 6,0 say hb_Utf8Chr(179)  // Não exibe corretamente
   
   @ 10,0,12,10 BOX ( Chr( 218 ) + Chr( 196 ) + Chr( 191 ) + Chr( 179 ) + ; /* "┌─┐│┘─└│" */
                          Chr( 217 ) + Chr( 196 ) + Chr( 192 ) + Chr( 179 ) )   	

   @ 14,0 say "Fim do teste ááéíô"
   
Return 