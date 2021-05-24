
 request HB_CODEPAGE_PT850
 REQUEST HB_CODEPAGE_UTF8EX
FUNCTION Main()

   local cStr, cAsc, cUtf8
   
  
  
   hb_cdpSelect( "UTF8EX" )   

   //HB_SETCODEPAGE( "UTF-8" )

   cStr := "Isto é um teste de conversão."

   cAsc := hb_UTF8ToStr( cStr )
   cStr := HB_TRANSLATE (cStr,"UTF8","PT850")
   
   hb_cdpSelect( "PT850" )   
   ? cStr
   ? cAsc

RETURN NIL