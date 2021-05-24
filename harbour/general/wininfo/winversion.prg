/* 
   Test.prg - Test a program.
   This code is a basic sample.
*/

procedure Main
   local i

   set date french
   set century on
   // ANSI ( Windows ) and french language.
   request HB_LANG_FR
   request HB_CODEPAGE_FRWIN
   hb_cdpSelect( 'FRWIN' )
   hb_langSelect( 'FR' )

   setmode( 43, 80 )
   setcolor( "GR+/B" )
   @ 0, 0, maxrow(), maxcol() box space( 9 )
   setcolor( "W/B" )

   ? bh_WindowsVersion()
   ?

   for i = 0 to 25
      ? hb_Version( i )
   endfor

   ?
   wait
   return

// Returns the Windows version in a string.
function bh_WindowsVersion()
   local oLocator
   local oWMI
   local oSys
   local cReturn
   oLocator  = CreateObject( "WbemScripting.SWbemLocator" )
   oWMI      = oLocator:ConnectServer( ".", "root\cimv2" )
   oSys      = oWMI:ExecQuery( 'Select * from Win32_OperatingSystem' )
   cReturn   = oSys:itemIndex( 0 ):Caption + " " + oSys:itemIndex( 0 ):OSArchitecture ;
             + " build " + oSys:itemIndex( 0 ):BuildNumber
   oSys     := nil
   oWMI     := nil
   oLocator := nil
   cReturn  := strtran( cReturn, space( 2 ), space( 1 ) )
   return cReturn
