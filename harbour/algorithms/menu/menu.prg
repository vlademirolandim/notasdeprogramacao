
#include "button.ch"
#include "inkey.ch"

PROCEDURE  Main

    LOCAL oMainMenu  
    LOCAL bMenuBlock := {||NIL}  //{| o | MenuSelect( o ) }
    LOCAL cMenuColor := "N/BG,W+/R,GR+/BG,GR+/R,N+/BG,N/BG"
    LOCAL hElement, hMenu
    LOCAL aItem, oItem, oSubMenu
    LOCAL nOpc

	CLS // Limpa a tela 
    SetMode( 25, 80 ) // Tamanho da sua janela. Altere se desejar. Por exemplo: SetMode( 50, 150 )
    
    /*
    Das linhas 21 at� a linha 32 voc� deve alterar para 
    personalizar as op��es do menu.
    */
    hMenu := { => } 
    hMenu[ "Main" ] := { ;
       { " &Teste For...Next ", K_ALT_T, "Teste For Next", 11 }, ;
       { " &Save ", K_ALT_S, "Save routine", 12 }, ;
       { MENU_SEPARATOR,           ,                 , 13 }, ;
       { " E&xit ", K_ALT_X, "Exit program", 14 }  ;
       } 

    hMenu[ "Report" ] := { ;
       { " &Main Report ", K_ALT_M, "Report main", 21 }, ;
       { " Account details ", , "Details for account main", 24 }  ;
       } 


	// Aqui o menu � montado (Linhas 38 at� 56)
	// N�o se preocupe em entender essas linhas, por enquanto
	// Voc� pode estudar isso depois. 
    oMainMenu  := HBTopBarMenu():new( 0, 0, MaxCol() )
    oMainMenu:colorSpec := cMenuColor


    FOR EACH hElement IN hMenu
        oSubMenu  := Popup():new()
        oSubMenu:colorSpec := oMainMenu:colorSpec
        FOR EACH aItem IN hElement
            oItem := MenuItem():new( aItem[ 1 ], ;
               bMenuBlock, ;
               aItem[ 2 ], ;
               aItem[ 3 ], ;
               aitem[ 4 ]  )
            oSubMenu:addItem ( oItem )

        NEXT
        oItem := MenuItem():new( hElement:__enumKEY , oSubMenu )
        oMainMenu:AddItem( oItem )
    NEXT

	// Aqui � o la�o do menu  
    nOpc := 1
    DO WHILE .T.
        nOpc := MenuModal( oMainMenu, INT( nOpc / 10 ), ;
           MaxRow(), 0, MaxCol(), ;
           oMainMenu:colorSpec )
        /*   
         Aqui voc� deve alterar para pegar o retorno
         e chamar as suas rotinas (linhas 73 at� 83)
         Note que o valor de retorno foi definido na cria��o
         das op��es do menu 
         Por exemplo, na linha 30 temos :
         { " &Main Report ", K_ALT_M, "Report main", 21 }
         O valor 21, por exemplo, ser� analisado a seguir (linha 79)
        */   
        ? nOpc 
        DO CASE
        CASE nOpc == -1 
        	ExitRoutine()
        CASE nOpc == 14 
        	ExitRoutine()
        CASE nOpc == 21 
        	Alert("Substitua pela sua rotina") // Sua rotina aqui 
        OTHERWISE

        ENDCASE
    ENDDO

    RETURN 

PROCEDURE ExitRoutine

    IF Alert( "Exit program?", { "Yes", "No" } ) == 1
        QUIT
    ENDIF

    RETURN

