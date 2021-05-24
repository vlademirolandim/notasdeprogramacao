#include "box.ch"

Procedure Main()

    LOCAL x 

    REQUEST HB_CODEPAGE_UTF8EX // Disponibiliza o suporte a UTF8ex
    hb_cdpSelect("UTF8EX") // Seleciona o suporte a UTF8
    FOR x := 1 TO 4
        Clear
        Alert( "Tela box : " + Str(x,2) )
        TelaPadrao( x , "Usuário " + Str(x,2) )
        Inkey(0)
    NEXT  
   
   
   
Return 

/**

 TelaPadrao() --> NIL

 Desenhar a tela padrão do sistema

*/
FUNCTION TelaPadrao( nBox , cUsuario )

   LOCAL cSistema := "CGE - Controle e Gestão de Estoques"
   LOCAL cEmpresa := "Empresa Fictícia Três Irmãos"
 
   hb_Default( @cUsuario , "" )
 
   @ 0,0  TO 3,79 
   @ 1,1  SAY cEmpresa
   @ 2,1  SAY cSistema
   @ 1,68 SAY DTOC( DATE() )
   @ 2,69 SAY LEFT( cUsuario ,10 )
   //
   @ 4,0,21,79 BOX REPLICATE( CHR(176) , 9 )
   @ 4,0,21,79 BOX Box( nBox ) // <------- Box
   //
   @ 22,0 to 24,79
   @ 23,1 SAY ""

RETURN NIL

STATIC FUNCTION Box( nBox )

	LOCAL cBox := B_SINGLE
	
	hb_Default( @nBox , 1 )
	
	DO CASE
	CASE nBox == 1
		cBox := B_SINGLE
	CASE nBox == 2
		cBox := B_SINGLE_DOUBLE
	CASE nBox == 3
		cBox := B_DOUBLE
	CASE nBox == 4
		cBox := B_DOUBLE_SINGLE
	ENDCASE			

	RETURN cBox

/*
 ___________________________________
< A resposta branda desvia o furor. >
 -----------------------------------
   \
    \
        .--.
       |o_o |
       |:_/ |
      //   \ \
     (|     | )
    /'\_   _/`\
    \___)=(___/

*/
