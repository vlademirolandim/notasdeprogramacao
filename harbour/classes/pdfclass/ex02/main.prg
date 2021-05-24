// Adaptado de http://www.pctoledo.com.br/forum/viewtopic.php?f=43&t=24256&p=141013&hilit=pdfclass#p141013

#define P_ESPACOS_ENTRE_COLUNAS SPACE(2)
PROCEDURE Main

   LOCAL oPDF, cRow
   LOCAL aHeader := {}
   
   ? "PDF Class test 02"
   // Configuração do ambiente
    REQUEST HB_CODEPAGE_PTISO
    hb_cdpSelect( "PTISO" )
    Set( _SET_DATEFORMAT, "yyyy-mm-dd" )
  
   // Cabeçalho

   AADD( aHeader , "RELATÓRIO DE TESTES" )
   AADD( aHeader , "" )
   AADD( aHeader , "Código     Nome do Cliente             Dt  Compra            Valor" ) 
   AADD( aHeader , "---------  --------------------------  ----------  ---------------" )
   
   TestDBF() // Gerando dbf de testes
   USE test
   oPDF := PDFClass():New()
   oPDF:Begin() // Precisa ser o primeiro comando logo após New (Por precaução)
   oPDF:acHeader := aHeader // Adicionando os cabeçalhos
   oPDF:cFileName := "test.pdf"
   
   DO WHILE .NOT. EOF()
   	
       oPDF:MaxRowTest() // Quebra de página
       // Dados
       cRow := ""
       cRow += StrZero( FIELD->CODIGO , 9 )
       cRow += P_ESPACOS_ENTRE_COLUNAS
       cRow += LEFT( FIELD->NOME , 26 )
       cRow += P_ESPACOS_ENTRE_COLUNAS
       cRow += DTOC( FIELD->DTCOMPRA )
       cRow += P_ESPACOS_ENTRE_COLUNAS
       cRow += TRANSFORM( FIELD->VALOR , "@RE 999,999,999.99")
       //
       oPDF:DrawText( oPDF:nRow++, 0, HB_UTF8ToStr( cRow ) ) // Impressão
       SKIP
   ENDDO
   oPDF:End()
   
   RETURN
   
PROCEDURE TestDBF()

	LOCAL aTest := {} , x

	IF .NOT. FILE( "test.dbf")
		? "Gerando dados para teste"	
		AADD( aTest , { "CODIGO","N" , 12 , 0 })
    	AADD( aTest , { "NOME" , "C" , 30 , 0 })
    	AADD( aTest , { "DTCOMPRA" , "D" , 8 , 0 })
    	AADD( aTest , { "VALOR" , "N" , 12, 2 })
		DBCREATE( "test.dbf" , aTest )
		USE test
		FOR x := 1 TO 500
		
			APPEND BLANK
			REPLACE CODIGO WITH x
			REPLACE NOME WITH "RICK SPENCE " + STRZERO(x,3)
			REPLACE DTCOMPRA WITH DATE()-x
			REPLACE VALOR WITH x*2
			
		NEXT
		CLOSE test
	
	ENDIF   
	
	RETURN