*****************************************************************************
FUNCTION Swap_RegExp( cString, cExpRegular, cSwap )
* Parameters:
* cString      <expC> - string with data
* cExpRegular  <expC> - string with regular expression to find
* cSwap        [expC] - string to change (default SPACE( 1 ) )
* Return:
* expC - cString changed
*****************************************************************************
LOCAL	aFound
IF cSwap = NIL
  cSwap := SPACE( 1 )
ENDIF
cExpRegular := HB_RegexComp( cExpRegular )
DO WHILE .NOT. EMPTY( aFound := HB_Regex( cExpRegular, cString ) )
  cString := aFound[ 2 ] + cSwap + aFound[ LEN( aFound ) ]
ENDDO
RETURN cString