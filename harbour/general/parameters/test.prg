/****f* CookBook/nome
 * NAME
 *   How to check variable value of parameters passing to my routine ? 
 *  
 * AUTHOR
 *                                                                                                                                            
 *   Vlademiro Landim Junior <vlad at altersoft dot net> 
 *
 * TAGS
 * 
 *   #parameters #pcount #hb_PValue #terminal
 *
 * SOURCE
 */

PROCEDURE MAIN( ... )

     LOCAL i
     // ----------------- Line command parameters checking ----------------------
     IF PCount() == 0
          Help()
          RETURN
     ENDIF
     
     i := 1
     DO WHILE i <= PCount()

          cPar := hb_PValue( i++ )

          DO CASE
          CASE cPar == "--port"             .OR. cPar == "-p"
               ? "Port value"
               ? hb_PValue( i++ )

          CASE cPar == "--host"             .OR. cPar == "-h"
               ? "Host name"
               ? hb_PValue( i++ )

          CASE cPar == "--help"             .OR. Lower( cPar ) == "-h" .OR. cPar == "-?"
               Help()
               RETURN

          ENDCASE

     ENDDO
     

     RETURN 

STATIC PROCEDURE Help

     ? "Help routine"
     ?
     ? "  --port <port> or -p <port> define port"
     ? "  --host <host> or -h <host> define host"
     ? "  --help Show this help"

     RETURN
/*********************/
