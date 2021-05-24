
PROCEDURE MAIN

    LOCAL hIni := { => }

    /* http://www.pctoledo.com.br/forum/viewtopic.php?f=4&t=19428 */    
    /* https://searchcode.com/codesearch/view/4503902/ */
    
    hIni["BANCO01"] := { => }
    hIni["BANCO01"]["USUARIO"] := "USER01"
    hIni["BANCO01"]["PASSWORD"] := "PASS"
    hb_IniWrite( "test.ini" , hIni )    
    
    ? hb_MemoRead( "test.ini" )
    ?
    ? "Testing function hb_IniFileLow"
    ? hb_IniFIleLow( "test.ini" )

    RETURN
    
#include "common.ch"
#include "fileio.ch"
    
STATIC FUNCTION hb_IniFileLow( cFileSpec )
  LOCAL cFile, nLen
  LOCAL hFile
  LOCAL cData
  LOCAL aFiles := hb_aTokens( cFileSpec, hb_OSPathListSeparator() )

  IF Empty( aFiles )
     aFiles := { cFileSpec }
  ENDIF

  hFile := F_ERROR
  FOR EACH cFile IN aFiles
     IF ! Empty( cFile ) .AND. File( cFile )
        IF ( hFile := FOpen( cFile ) ) != F_ERROR
           EXIT
        ENDIF
     ENDIF
  NEXT

  IF hFile == F_ERROR
     RETURN NIL
  ENDIF

  /* we'll read the whole file, then we'll break it in lines. */
  cData := Space( FSeek( hFile, 0, FS_END ) )
  FSeek( hFile, 0, FS_SET )
  nLen := FRead( hFile, @cData, Len( cData ) )
  cData := Left( cData, nLen )
  FClose( hFile )

  RETURN cData    
