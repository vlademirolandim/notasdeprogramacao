/*
 * Harbour 3.2.0dev (r1703241902)
 * MinGW GNU C 5.3 (32-bit)
 * Generated C source from "C:\CursoHMG\CookBook\App02_Menu_OneForm\Form01.Prg"
 */

#include "hbvmpub.h"
#include "hbinit.h"


HB_FUNC( FORM01 );
HB_FUNC_EXTERN( MSGINFO );
HB_FUNC_EXTERN( ERRORSYS );


HB_INIT_SYMBOLS_BEGIN( hb_vm_SymbolInit_FORM01 )
{ "FORM01", {HB_FS_PUBLIC | HB_FS_FIRST | HB_FS_LOCAL}, {HB_FUNCNAME( FORM01 )}, NULL },
{ "MSGINFO", {HB_FS_PUBLIC}, {HB_FUNCNAME( MSGINFO )}, NULL },
{ "ERRORSYS", {HB_FS_PUBLIC}, {HB_FUNCNAME( ERRORSYS )}, NULL }
HB_INIT_SYMBOLS_EX_END( hb_vm_SymbolInit_FORM01, "C:\\CursoHMG\\CookBook\\App02_Menu_OneForm\\Form01.Prg", 0x0, 0x0003 )

#if defined( HB_PRAGMA_STARTUP )
   #pragma startup hb_vm_SymbolInit_FORM01
#elif defined( HB_DATASEG_STARTUP )
   #define HB_DATASEG_BODY    HB_DATASEG_FUNC( hb_vm_SymbolInit_FORM01 )
   #include "hbiniseg.h"
#endif

HB_FUNC( FORM01 )
{
	static const HB_BYTE pcode[] =
	{
		36,5,0,176,1,0,106,7,70,111,114,109,48,49,
		0,20,1,36,7,0,7
	};

	hb_vmExecute( pcode, symbols );
}

