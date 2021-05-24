PROCEDURE Main
   LOCAL oPDF, nCont, nType
   
   
    oPDF := PDFClass():New()
    oPDF:acHeader := { "TEST REPORT PDF CLASS"  }
    oPDF:cFileName := "test.pdf"
    oPDF:Begin()
    FOR nCont = 1 TO 1000
       oPDF:MaxRowTest()
       oPDF:DrawText( oPDF:nRow++, 0, nCont )
    NEXT
    oPDF:End()
   
   RETURN