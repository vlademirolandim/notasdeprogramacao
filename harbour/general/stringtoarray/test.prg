/*
Thanks
https://vivaclipper.wordpress.com/2012/09/05/how-i-can-convert-a-string-list-to-array/a*/
PROC Main()

 cList := " arabesque, bolero, clair de lune, la mere, nocturnes, debussy"
 aList := HB_ATOKENS( cList, ',' )
 AEVAL( aList, { | c1 | QOUT( c1 ) } )

 /*
 Result :
   arabesque
   bolero
   clair de lune
   la mere
   nocturnes
   debussy 
 */

 ?
 WAIT "EOF Lst2Arry.prg"

 RETU // Lst2Arry.prg
