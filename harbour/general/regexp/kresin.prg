

FUNCTION Main()
    Local s := "ClaAbrok aBbey", n1, n2
 
   ? hb_isregex( hb_regexcomp( "a+b+" ) )                // .T.
   n1 := 1
   n2 := Len( s )
   ? hb_atx( "a+b+", s, .f., @n1, @n2 ), n1, n2          // aAb      3     3
   ? hb_regexhas( "a+b+", s, .f. )                       // .T.
   ? hb_regexhas( "a+b+", s )                            // .F.
   ? hb_regexlike( "a+b+", s, .f. )                      // .F.
 
   PrintArray( hb_regex( "a+b+",s,.f. ) )                // { aAb }
   PrintArray( hb_regex( "(a+)(b+)",s,.f. ) )            // { aAb aA b }
 
   PrintArray( hb_regexSplit( "a+b+",s,.f. ) )           // { Cl rok  ey }
 
   PrintArray( hb_regexAtx( "a+b+",s,.f. ) )             // { { aAb 3 5 } }
   PrintArray( hb_regexAtx( "(a+)(b+)",s,.f. ) )         // { { aAb 3 5 } { aA 3 4 } { b 5 5 } }
 
   PrintArray( hb_regexAll( "a+b+",s,.f. ) )             // { { aAb aBb } }
   PrintArray( hb_regexAll( "(a+)(b+)",s,.f. ) )         // { { aAb aA b } { aBb a Bb } }
   PrintArray( hb_regexAll( "(a+)(b+)",s,.f.,,,1 ) )     // { aAb aBb }
   PrintArray( hb_regexAll( "(a+)(b+)",s,.f.,,,2 ) )     // { aA a }
   PrintArray( hb_regexAll( "(a+)(b+)",s,.f.,,,0,.f. ) ) 
   // { { { aAb 3 5 } { aA 3 4 } { b 5 5 } } { { aBb 10 12 } { a 10 10 } { Bb 11 12 } } }
   PrintArray( hb_regexAll( "(a+)(b+)",s,.f.,,,1,.f. ) ) // { { aAb 3 5 } { aBb 10 12 } }
 
   ?
Return Nil
 
Function PrintArray( arr, lNoNewLine )
Local i
 
   IF lNoNewLine == Nil .OR. !lNoNewLine
      ?
   ENDIF
   ?? " {"
   FOR i := 1 TO Len( arr )
      IF Valtype( arr[i] ) == "A"
         PrintArray( arr[i], .T. )
      ELSE
         ?? " " + Iif( Valtype( arr[i] ) == "N", Ltrim(Str(arr[i])), arr[i] )
      ENDIF
   NEXT
   ?? " }"
Return Nil