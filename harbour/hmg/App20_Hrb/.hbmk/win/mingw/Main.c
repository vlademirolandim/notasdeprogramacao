/*
 * Harbour 3.2.0dev (r1703241902)
 * MinGW GNU C 5.3 (32-bit)
 * Generated C source from "C:\CursoHMG\CookBook\App20_Hrb\Main.Prg"
 */

#include "hbvmpub.h"
#include "hbinit.h"


HB_FUNC( MAIN );
HB_FUNC_EXTERN( _DEFINEWINDOW );
HB_FUNC( LOADHRB );
HB_FUNC_EXTERN( _DEFINEBUTTON );
HB_FUNC_EXTERN( _DEFINEIMAGEBUTTON );
HB_FUNC_EXTERN( _DEFINEMIXEDBUTTON );
HB_FUNC_EXTERN( _ENDWINDOW );
HB_FUNC_EXTERN( DOMETHOD );
HB_FUNC_EXTERN( HB_HRBLOAD );
HB_FUNC_EXTERN( MEMOREAD );
HB_FUNC_EXTERN( HB_HRBDO );
HB_FUNC_EXTERN( ERRORSYS );


HB_INIT_SYMBOLS_BEGIN( hb_vm_SymbolInit_MAIN )
{ "MAIN", {HB_FS_PUBLIC | HB_FS_FIRST | HB_FS_LOCAL}, {HB_FUNCNAME( MAIN )}, NULL },
{ "_HMG_SYSDATA", {HB_FS_PUBLIC | HB_FS_MEMVAR}, {NULL}, NULL },
{ "_DEFINEWINDOW", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINEWINDOW )}, NULL },
{ "LOADHRB", {HB_FS_PUBLIC | HB_FS_LOCAL}, {HB_FUNCNAME( LOADHRB )}, NULL },
{ "_DEFINEBUTTON", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINEBUTTON )}, NULL },
{ "_DEFINEIMAGEBUTTON", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINEIMAGEBUTTON )}, NULL },
{ "_DEFINEMIXEDBUTTON", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINEMIXEDBUTTON )}, NULL },
{ "_ENDWINDOW", {HB_FS_PUBLIC}, {HB_FUNCNAME( _ENDWINDOW )}, NULL },
{ "DOMETHOD", {HB_FS_PUBLIC}, {HB_FUNCNAME( DOMETHOD )}, NULL },
{ "HB_HRBLOAD", {HB_FS_PUBLIC}, {HB_FUNCNAME( HB_HRBLOAD )}, NULL },
{ "MEMOREAD", {HB_FS_PUBLIC}, {HB_FUNCNAME( MEMOREAD )}, NULL },
{ "HB_HRBDO", {HB_FS_PUBLIC}, {HB_FUNCNAME( HB_HRBDO )}, NULL },
{ "ERRORSYS", {HB_FS_PUBLIC}, {HB_FUNCNAME( ERRORSYS )}, NULL }
HB_INIT_SYMBOLS_EX_END( hb_vm_SymbolInit_MAIN, "C:\\CursoHMG\\CookBook\\App20_Hrb\\Main.Prg", 0x0, 0x0003 )

#if defined( HB_PRAGMA_STARTUP )
   #pragma startup hb_vm_SymbolInit_MAIN
#elif defined( HB_DATASEG_STARTUP )
   #define HB_DATASEG_BODY    HB_DATASEG_FUNC( hb_vm_SymbolInit_MAIN )
   #include "hbiniseg.h"
#endif

HB_FUNC( MAIN )
{
	static const HB_BYTE pcode[] =
	{
		36,8,0,106,5,77,97,105,110,0,98,1,0,93,
		214,0,2,36,4,0,176,2,0,100,106,1,0,93,
		235,0,93,138,0,93,38,2,93,94,1,9,9,9,
		9,9,9,106,1,0,90,4,100,6,90,4,100,6,
		90,4,100,6,90,4,100,6,90,4,100,6,90,4,
		100,6,100,90,4,100,6,9,9,120,100,9,100,100,
		100,100,90,4,100,6,90,4,100,6,90,4,100,6,
		100,100,90,4,100,6,90,4,100,6,90,4,100,6,
		90,4,100,6,90,4,100,6,90,4,100,6,9,90,
		4,100,6,90,4,100,6,100,9,90,4,100,6,100,
		100,100,100,100,100,100,100,9,20,56,36,6,0,106,
		9,66,117,116,116,111,110,95,49,0,98,1,0,93,
		160,1,2,100,98,1,0,93,161,1,2,100,98,1,
		0,93,176,1,2,100,98,1,0,93,175,1,2,100,
		98,1,0,93,162,1,2,100,98,1,0,93,163,1,
		2,100,98,1,0,93,164,1,2,100,98,1,0,93,
		165,1,2,100,98,1,0,93,166,1,2,100,98,1,
		0,93,167,1,2,100,98,1,0,93,168,1,2,9,
		98,1,0,93,169,1,2,100,98,1,0,93,170,1,
		2,100,98,1,0,93,171,1,2,9,98,1,0,93,
		172,1,2,100,98,1,0,93,173,1,2,9,98,1,
		0,93,174,1,2,100,98,1,0,93,175,1,2,100,
		98,1,0,93,176,1,2,100,98,1,0,93,177,1,
		2,120,98,1,0,93,207,1,2,9,98,1,0,93,
		156,1,2,9,98,1,0,93,157,1,2,9,98,1,
		0,93,158,1,2,9,98,1,0,93,97,1,2,9,
		98,1,0,93,159,1,2,36,7,0,92,120,98,1,
		0,93,175,1,2,36,8,0,93,170,0,98,1,0,
		93,176,1,2,36,9,0,92,100,98,1,0,93,164,
		1,2,36,10,0,92,28,98,1,0,93,165,1,2,
		36,11,0,90,8,176,3,0,12,0,6,98,1,0,
		93,163,1,2,36,12,0,106,9,66,117,116,116,111,
		110,95,49,0,98,1,0,93,162,1,2,36,13,0,
		106,6,65,114,105,97,108,0,98,1,0,93,166,1,
		2,36,14,0,92,9,98,1,0,93,167,1,2,36,
		15,0,106,1,0,98,1,0,93,168,1,2,36,16,
		0,9,98,1,0,93,156,1,2,36,17,0,9,98,
		1,0,93,157,1,2,36,18,0,9,98,1,0,93,
		159,1,2,36,19,0,9,98,1,0,93,158,1,2,
		36,20,0,90,4,100,6,98,1,0,93,170,1,2,
		36,21,0,90,4,100,6,98,1,0,93,171,1,2,
		36,22,0,100,98,1,0,93,173,1,2,36,23,0,
		9,98,1,0,93,169,1,2,36,24,0,9,98,1,
		0,93,172,1,2,36,25,0,9,98,1,0,93,174,
		1,2,36,26,0,9,98,1,0,93,207,1,2,36,
		27,0,9,98,1,0,93,97,1,2,36,28,0,100,
		98,1,0,93,177,1,2,36,29,0,106,4,84,79,
		80,0,98,1,0,93,125,1,2,36,30,0,98,1,
		0,93,177,1,1,100,8,29,165,0,176,4,0,98,
		1,0,93,160,1,1,98,1,0,93,161,1,1,98,
		1,0,93,176,1,1,98,1,0,93,175,1,1,98,
		1,0,93,162,1,1,98,1,0,93,163,1,1,98,
		1,0,93,164,1,1,98,1,0,93,165,1,1,98,
		1,0,93,166,1,1,98,1,0,93,167,1,1,98,
		1,0,93,168,1,1,98,1,0,93,170,1,1,98,
		1,0,93,171,1,1,98,1,0,93,169,1,1,98,
		1,0,93,172,1,1,98,1,0,93,173,1,1,98,
		1,0,93,174,1,1,98,1,0,93,156,1,1,98,
		1,0,93,157,1,1,98,1,0,93,159,1,1,98,
		1,0,93,158,1,1,98,1,0,93,97,1,1,20,
		22,26,63,1,98,1,0,93,162,1,1,100,8,28,
		126,176,5,0,98,1,0,93,160,1,1,98,1,0,
		93,161,1,1,98,1,0,93,176,1,1,98,1,0,
		93,175,1,1,106,1,0,98,1,0,93,163,1,1,
		98,1,0,93,164,1,1,98,1,0,93,165,1,1,
		98,1,0,93,177,1,1,98,1,0,93,168,1,1,
		98,1,0,93,170,1,1,98,1,0,93,171,1,1,
		98,1,0,93,169,1,1,98,1,0,93,207,1,1,
		68,98,1,0,93,173,1,1,98,1,0,93,174,1,
		1,98,1,0,93,172,1,1,20,17,26,184,0,176,
		6,0,98,1,0,93,160,1,1,98,1,0,93,161,
		1,1,98,1,0,93,176,1,1,98,1,0,93,175,
		1,1,98,1,0,93,162,1,1,98,1,0,93,163,
		1,1,98,1,0,93,164,1,1,98,1,0,93,165,
		1,1,98,1,0,93,166,1,1,98,1,0,93,167,
		1,1,98,1,0,93,168,1,1,98,1,0,93,170,
		1,1,98,1,0,93,171,1,1,98,1,0,93,169,
		1,1,98,1,0,93,172,1,1,98,1,0,93,173,
		1,1,98,1,0,93,174,1,1,98,1,0,93,156,
		1,1,98,1,0,93,157,1,1,98,1,0,93,159,
		1,1,98,1,0,93,158,1,1,98,1,0,93,177,
		1,1,98,1,0,93,125,1,1,98,1,0,93,97,
		1,1,98,1,0,93,207,1,1,68,20,25,36,32,
		0,176,7,0,20,0,36,9,0,176,8,0,106,5,
		77,97,105,110,0,106,7,67,101,110,116,101,114,0,
		20,2,36,10,0,176,8,0,106,5,77,97,105,110,
		0,106,9,65,99,116,105,118,97,116,101,0,20,2,
		36,15,0,7
	};

	hb_vmExecute( pcode, symbols );
}

HB_FUNC( LOADHRB )
{
	static const HB_BYTE pcode[] =
	{
		13,1,0,36,23,0,176,9,0,176,10,0,106,8,
		104,114,98,46,104,114,98,0,12,1,12,1,80,1,
		36,24,0,176,11,0,95,1,20,1,36,27,0,7
	};

	hb_vmExecute( pcode, symbols );
}

