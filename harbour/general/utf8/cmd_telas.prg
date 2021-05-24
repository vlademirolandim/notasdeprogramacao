/*

                                                      
                                   .,.,        
                                 ((((())    
                               ((('o o ) '
    _______________________    ((G   \ |)      ___________________
                              (((`   " ,
                               .((\.:~:          .--------------.
                               __.| `"'.__      | \              |
                            .''   `---'   `.    |  .             :
                           /                `   |   `-.__________)
                          |             ~       |  :             :
                          |                     |  :  |
                          |    _                |     |   [ ##   :
                          \    `--.        ____|  ,   oo_______.'
                            `_   ( \) _____/     `--___
                            | `--)  ) `-.   `---   ( - a:f -
                            |   '///`  | `-.
                            |     | |  |    `-.
                            |     | |  |       `-.
                            |     | |\ |
                            |     | | \|
                             `-.  | |  |
                                `-| '

E tudo quanto fizerdes, fazei-o de coração, como ao Senhor, e não aos homens.
Colossenses 3:23

*/
#include "common.ch"
/**

 TelaPadrao() --> NIL

 Desenhar a tela padrão do sistema

*/
FUNCTION TelaPadrao()
LOCAL cSistema := "CGE - Controle e Gestão de Estoques"
LOCAL cEmpresa := "LIA - Laboratório de pesquisa em computação"
LOCAL cUsuario := "USUARIO"
 
   @ 0,0  TO 3,79 
   @ 1,1  SAY cEmpresa
   @ 2,1  SAY cSistema
   @ 1,68 SAY DTOC( DATE() )
   @ 2,71 SAY LEFT( cUsuario ,10 )
   //
   @ 4,0,21,79 BOX REPLICATE( CHR(176) , 9 )
   @ 4,0 to 21,79
   //
   @ 22,0 to 24,79
   @ 23,1 SAY ""

RETURN NIL
/**

  TelaContexto( cCab ) --> NIL

  Exibe os nomes que ficam no topo da tela.

  <cCab>  -> Título a ser exibido

*/
FUNCTION TelaStatusTopo( cCab )
    
    @ 4,0 CLEAR TO 21,79
    @ 4,1  SAY PADC( cCab,78 ) 

    @ 5,0 TO 21,79 
    @ 22,0 TO 24,79 
    @ 23,1 SAY ""
    

RETURN NIL
/***
   Mensagem( cMsg , nTempo ) --> .t. 

   Mensagem que é exibida ao usuário no rodapé

   <cMsg>   -> Mensagem
   [lTempo] -> Se True, será exibida por 2 segs.
   
   (Obs: Pode ser usada no When do GET)
   

*/
FUNCTION Mensagem( cMsg , lTempo )
LOCAL cTela_Ant
LOCAL nTempo := 0.5
DEFAULT lTempo TO .F.
    IF ( lTempo  )
       cTela_Ant := SAVESCREEN( 23, 0 , 23 , 79 ) 
    ENDIF
    @ 23,1 SAY PADC( cMsg , 78 )
    IF ( lTempo )
       INKEY( nTempo )
       RESTSCREEN( 23,0,23,79, cTela_Ant )
    ENDIF
 
RETURN .t.
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
