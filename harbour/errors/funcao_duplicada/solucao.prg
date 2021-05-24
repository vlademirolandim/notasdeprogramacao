#include "hmg.ch"
PROCEDURE MAIN

   ? 
   qout( hb_valtoexp(  MyDefaultPrinter() ) )
     
RETURN	

FUNCTION MyDefaultPrinter()

RETURN &( "getDefaultPrinter()" ) 
