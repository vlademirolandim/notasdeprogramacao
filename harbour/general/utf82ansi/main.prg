FUNCTION Main()

   local cStr, cAsc, cUtf8
   
  REQUEST HB_CODEPAGE_UTF8EX
  REQUEST HB_CODEPAGE_PTISO
   hb_cdpSelect( "UTF8EX" )   

   //HB_SETCODEPAGE( "UTF-8" )

   cStr := "Isto é um teste de conversão."

   cAsc := hb_UTF8ToStr( cStr )

   ? cStr
   ? cAsc

RETURN NIL