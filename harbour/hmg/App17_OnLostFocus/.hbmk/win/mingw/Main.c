/*
 * Harbour 3.2.0dev (r1703241902)
 * MinGW GNU C 5.3 (32-bit)
 * Generated C source from "C:\CursoHMG\CookBook\App17_OnLostFocus\Main.Prg"
 */

#include "hbvmpub.h"
#include "hbinit.h"


HB_FUNC( MAIN );
HB_FUNC_EXTERN( _DEFINEWINDOW );
HB_FUNC( TEXT01 );
HB_FUNC_EXTERN( _DEFINETEXTBOX );
HB_FUNC_EXTERN( _DEFINEMASKEDTEXTBOX );
HB_FUNC_EXTERN( _DEFINECHARMASKTEXTBOX );
HB_FUNC( TEXT02 );
HB_FUNC_EXTERN( _DEFINELABEL );
HB_FUNC_EXTERN( _ENDWINDOW );
HB_FUNC_EXTERN( DOMETHOD );
HB_FUNC_EXTERN( SETPROPERTY );
HB_FUNC_EXTERN( STRZERO );
HB_FUNC_EXTERN( GETCONTROLNAMEBYINDEX );
HB_FUNC_EXTERN( GETLASTACTIVECONTROLINDEX );
HB_FUNC_EXTERN( ERRORSYS );
HB_FUNC_INITSTATICS();


HB_INIT_SYMBOLS_BEGIN( hb_vm_SymbolInit_MAIN )
{ "MAIN", {HB_FS_PUBLIC | HB_FS_FIRST | HB_FS_LOCAL}, {HB_FUNCNAME( MAIN )}, NULL },
{ "IS_OK", {HB_FS_PUBLIC | HB_FS_MEMVAR}, {NULL}, NULL },
{ "_HMG_SYSDATA", {HB_FS_PUBLIC | HB_FS_MEMVAR}, {NULL}, NULL },
{ "_DEFINEWINDOW", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINEWINDOW )}, NULL },
{ "TEXT01", {HB_FS_PUBLIC | HB_FS_LOCAL}, {HB_FUNCNAME( TEXT01 )}, NULL },
{ "_DEFINETEXTBOX", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINETEXTBOX )}, NULL },
{ "_DEFINEMASKEDTEXTBOX", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINEMASKEDTEXTBOX )}, NULL },
{ "_DEFINECHARMASKTEXTBOX", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINECHARMASKTEXTBOX )}, NULL },
{ "TEXT02", {HB_FS_PUBLIC | HB_FS_LOCAL}, {HB_FUNCNAME( TEXT02 )}, NULL },
{ "_DEFINELABEL", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINELABEL )}, NULL },
{ "_ENDWINDOW", {HB_FS_PUBLIC}, {HB_FUNCNAME( _ENDWINDOW )}, NULL },
{ "DOMETHOD", {HB_FS_PUBLIC}, {HB_FUNCNAME( DOMETHOD )}, NULL },
{ "SETPROPERTY", {HB_FS_PUBLIC}, {HB_FUNCNAME( SETPROPERTY )}, NULL },
{ "STRZERO", {HB_FS_PUBLIC}, {HB_FUNCNAME( STRZERO )}, NULL },
{ "GETCONTROLNAMEBYINDEX", {HB_FS_PUBLIC}, {HB_FUNCNAME( GETCONTROLNAMEBYINDEX )}, NULL },
{ "GETLASTACTIVECONTROLINDEX", {HB_FS_PUBLIC}, {HB_FUNCNAME( GETLASTACTIVECONTROLINDEX )}, NULL },
{ "STRZERO", {HB_FS_PUBLIC | HB_FS_MEMVAR}, {NULL}, NULL },
{ "CCPF", {HB_FS_PUBLIC | HB_FS_MEMVAR}, {NULL}, NULL },
{ "ERRORSYS", {HB_FS_PUBLIC}, {HB_FUNCNAME( ERRORSYS )}, NULL },
{ "(_INITSTATICS00001)", {HB_FS_INITEXIT | HB_FS_LOCAL}, {hb_INITSTATICS}, NULL }
HB_INIT_SYMBOLS_EX_END( hb_vm_SymbolInit_MAIN, "C:\\CursoHMG\\CookBook\\App17_OnLostFocus\\Main.Prg", 0x0, 0x0003 )

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
		116,19,0,36,6,0,120,83,1,0,36,7,0,121,
		82,1,0,36,9,0,106,5,77,97,105,110,0,98,
		2,0,93,214,0,2,36,4,0,176,3,0,100,106,
		1,0,93,216,1,93,147,0,93,38,2,93,94,1,
		9,9,9,9,9,9,106,1,0,90,4,100,6,90,
		4,100,6,90,4,100,6,90,4,100,6,90,4,100,
		6,90,4,100,6,100,90,4,100,6,9,9,120,100,
		9,100,100,100,100,90,4,100,6,90,4,100,6,90,
		4,100,6,100,100,90,4,100,6,90,4,100,6,90,
		4,100,6,90,4,100,6,90,4,100,6,90,4,100,
		6,9,90,4,100,6,90,4,100,6,100,9,90,4,
		100,6,100,100,100,100,100,100,100,100,9,20,56,36,
		6,0,106,7,84,101,120,116,95,49,0,98,2,0,
		93,160,1,2,100,98,2,0,93,161,1,2,100,98,
		2,0,93,176,1,2,100,98,2,0,93,42,1,2,
		100,98,2,0,93,43,1,2,100,98,2,0,93,175,
		1,2,100,98,2,0,93,164,1,2,100,98,2,0,
		93,165,1,2,100,98,2,0,93,178,1,2,100,98,
		2,0,93,166,1,2,100,98,2,0,93,129,1,2,
		100,98,2,0,93,167,1,2,100,98,2,0,93,168,
		1,2,100,98,2,0,93,186,1,2,9,98,2,0,
		93,219,1,2,9,98,2,0,93,220,1,2,9,98,
		2,0,93,221,1,2,9,98,2,0,93,222,1,2,
		100,98,2,0,93,171,1,2,100,98,2,0,93,170,
		1,2,100,98,2,0,93,179,1,2,100,98,2,0,
		93,181,1,2,9,98,2,0,93,184,1,2,9,98,
		2,0,93,185,1,2,9,98,2,0,93,144,1,2,
		100,98,2,0,93,173,1,2,100,98,2,0,93,223,
		1,2,100,98,2,0,93,244,1,2,100,98,2,0,
		93,201,1,2,100,98,2,0,93,202,1,2,9,98,
		2,0,93,156,1,2,9,98,2,0,93,172,1,2,
		9,98,2,0,93,174,1,2,9,98,2,0,93,157,
		1,2,9,98,2,0,93,158,1,2,9,98,2,0,
		93,159,1,2,36,7,0,92,60,98,2,0,93,175,
		1,2,36,8,0,92,70,98,2,0,93,176,1,2,
		36,9,0,92,120,98,2,0,93,164,1,2,36,10,
		0,92,24,98,2,0,93,165,1,2,36,11,0,106,
		6,65,114,105,97,108,0,98,2,0,93,166,1,2,
		36,12,0,92,9,98,2,0,93,167,1,2,36,13,
		0,106,1,0,98,2,0,93,168,1,2,36,14,0,
		90,4,100,6,98,2,0,93,179,1,2,36,15,0,
		90,4,100,6,98,2,0,93,170,1,2,36,16,0,
		90,8,176,4,0,12,0,6,98,2,0,93,171,1,
		2,36,17,0,9,98,2,0,93,156,1,2,36,18,
		0,9,98,2,0,93,157,1,2,36,19,0,9,98,
		2,0,93,159,1,2,36,20,0,9,98,2,0,93,
		158,1,2,36,21,0,90,4,100,6,98,2,0,93,
		181,1,2,36,22,0,100,98,2,0,93,173,1,2,
		36,23,0,9,98,2,0,93,172,1,2,36,24,0,
		9,98,2,0,93,174,1,2,36,25,0,9,98,2,
		0,93,185,1,2,36,26,0,9,98,2,0,93,184,
		1,2,36,27,0,100,98,2,0,93,42,1,2,36,
		28,0,100,98,2,0,93,43,1,2,36,29,0,9,
		98,2,0,93,220,1,2,9,98,2,0,93,219,1,
		2,36,30,0,100,98,2,0,93,201,1,2,36,31,
		0,100,98,2,0,93,202,1,2,36,32,0,100,98,
		2,0,93,223,1,2,36,33,0,100,98,2,0,93,
		244,1,2,36,34,0,106,1,0,98,2,0,93,178,
		1,2,36,35,0,98,2,0,93,223,1,1,100,8,
		29,254,0,98,2,0,93,144,1,1,9,8,29,242,
		0,176,5,0,98,2,0,93,160,1,1,98,2,0,
		93,161,1,1,98,2,0,93,176,1,1,98,2,0,
		93,175,1,1,98,2,0,93,164,1,1,98,2,0,
		93,165,1,1,98,2,0,93,178,1,1,98,2,0,
		93,166,1,1,98,2,0,93,167,1,1,98,2,0,
		93,168,1,1,98,2,0,93,186,1,1,98,2,0,
		93,219,1,1,98,2,0,93,220,1,1,98,2,0,
		93,221,1,1,98,2,0,93,222,1,1,98,2,0,
		93,171,1,1,98,2,0,93,170,1,1,98,2,0,
		93,179,1,1,98,2,0,93,181,1,1,98,2,0,
		93,184,1,1,98,2,0,93,173,1,1,98,2,0,
		93,185,1,1,98,2,0,93,156,1,1,98,2,0,
		93,157,1,1,98,2,0,93,159,1,1,98,2,0,
		93,158,1,1,98,2,0,93,129,1,1,98,2,0,
		93,201,1,1,98,2,0,93,202,1,1,98,2,0,
		93,174,1,1,98,2,0,93,172,1,1,98,2,0,
		93,42,1,1,98,2,0,93,43,1,1,20,33,26,
		192,1,98,2,0,93,221,1,1,120,8,29,221,0,
		176,6,0,98,2,0,93,160,1,1,98,2,0,93,
		161,1,1,98,2,0,93,176,1,1,98,2,0,93,
		175,1,1,98,2,0,93,223,1,1,98,2,0,93,
		164,1,1,98,2,0,93,178,1,1,98,2,0,93,
		166,1,1,98,2,0,93,167,1,1,98,2,0,93,
		168,1,1,98,2,0,93,171,1,1,98,2,0,93,
		170,1,1,98,2,0,93,179,1,1,98,2,0,93,
		165,1,1,98,2,0,93,181,1,1,98,2,0,93,
		184,1,1,98,2,0,93,173,1,1,98,2,0,93,
		244,1,1,98,2,0,93,156,1,1,98,2,0,93,
		157,1,1,98,2,0,93,159,1,1,98,2,0,93,
		158,1,1,98,2,0,93,129,1,1,98,2,0,93,
		201,1,1,98,2,0,93,202,1,1,98,2,0,93,
		185,1,1,98,2,0,93,174,1,1,98,2,0,93,
		172,1,1,98,2,0,93,42,1,1,98,2,0,93,
		43,1,1,20,30,26,218,0,176,7,0,98,2,0,
		93,160,1,1,98,2,0,93,161,1,1,98,2,0,
		93,176,1,1,98,2,0,93,175,1,1,98,2,0,
		93,223,1,1,98,2,0,93,164,1,1,98,2,0,
		93,178,1,1,98,2,0,93,166,1,1,98,2,0,
		93,167,1,1,98,2,0,93,168,1,1,98,2,0,
		93,171,1,1,98,2,0,93,170,1,1,98,2,0,
		93,179,1,1,98,2,0,93,165,1,1,98,2,0,
		93,181,1,1,98,2,0,93,184,1,1,98,2,0,
		93,173,1,1,98,2,0,93,156,1,1,98,2,0,
		93,157,1,1,98,2,0,93,159,1,1,98,2,0,
		93,158,1,1,98,2,0,93,129,1,1,98,2,0,
		93,201,1,1,98,2,0,93,202,1,1,98,2,0,
		93,144,1,1,98,2,0,93,185,1,1,98,2,0,
		93,174,1,1,98,2,0,93,172,1,1,98,2,0,
		93,42,1,1,98,2,0,93,43,1,1,20,30,36,
		37,0,106,7,84,101,120,116,95,50,0,98,2,0,
		93,160,1,2,100,98,2,0,93,161,1,2,100,98,
		2,0,93,176,1,2,100,98,2,0,93,42,1,2,
		100,98,2,0,93,43,1,2,100,98,2,0,93,175,
		1,2,100,98,2,0,93,164,1,2,100,98,2,0,
		93,165,1,2,100,98,2,0,93,178,1,2,100,98,
		2,0,93,166,1,2,100,98,2,0,93,129,1,2,
		100,98,2,0,93,167,1,2,100,98,2,0,93,168,
		1,2,100,98,2,0,93,186,1,2,9,98,2,0,
		93,219,1,2,9,98,2,0,93,220,1,2,9,98,
		2,0,93,221,1,2,9,98,2,0,93,222,1,2,
		100,98,2,0,93,171,1,2,100,98,2,0,93,170,
		1,2,100,98,2,0,93,179,1,2,100,98,2,0,
		93,181,1,2,9,98,2,0,93,184,1,2,9,98,
		2,0,93,185,1,2,9,98,2,0,93,144,1,2,
		100,98,2,0,93,173,1,2,100,98,2,0,93,223,
		1,2,100,98,2,0,93,244,1,2,100,98,2,0,
		93,201,1,2,100,98,2,0,93,202,1,2,9,98,
		2,0,93,156,1,2,9,98,2,0,93,172,1,2,
		9,98,2,0,93,174,1,2,9,98,2,0,93,157,
		1,2,9,98,2,0,93,158,1,2,9,98,2,0,
		93,159,1,2,36,38,0,93,130,0,98,2,0,93,
		175,1,2,36,39,0,92,70,98,2,0,93,176,1,
		2,36,40,0,92,120,98,2,0,93,164,1,2,36,
		41,0,92,24,98,2,0,93,165,1,2,36,42,0,
		106,6,65,114,105,97,108,0,98,2,0,93,166,1,
		2,36,43,0,92,9,98,2,0,93,167,1,2,36,
		44,0,106,1,0,98,2,0,93,168,1,2,36,45,
		0,90,4,100,6,98,2,0,93,179,1,2,36,46,
		0,90,4,100,6,98,2,0,93,170,1,2,36,47,
		0,90,8,176,8,0,12,0,6,98,2,0,93,171,
		1,2,36,48,0,9,98,2,0,93,156,1,2,36,
		49,0,9,98,2,0,93,157,1,2,36,50,0,9,
		98,2,0,93,159,1,2,36,51,0,9,98,2,0,
		93,158,1,2,36,52,0,90,4,100,6,98,2,0,
		93,181,1,2,36,53,0,100,98,2,0,93,173,1,
		2,36,54,0,9,98,2,0,93,172,1,2,36,55,
		0,9,98,2,0,93,174,1,2,36,56,0,9,98,
		2,0,93,185,1,2,36,57,0,9,98,2,0,93,
		184,1,2,36,58,0,100,98,2,0,93,42,1,2,
		36,59,0,100,98,2,0,93,43,1,2,36,60,0,
		9,98,2,0,93,220,1,2,9,98,2,0,93,219,
		1,2,36,61,0,100,98,2,0,93,201,1,2,36,
		62,0,100,98,2,0,93,202,1,2,36,63,0,100,
		98,2,0,93,223,1,2,36,64,0,100,98,2,0,
		93,244,1,2,36,65,0,106,1,0,98,2,0,93,
		178,1,2,36,66,0,98,2,0,93,223,1,1,100,
		8,29,254,0,98,2,0,93,144,1,1,9,8,29,
		242,0,176,5,0,98,2,0,93,160,1,1,98,2,
		0,93,161,1,1,98,2,0,93,176,1,1,98,2,
		0,93,175,1,1,98,2,0,93,164,1,1,98,2,
		0,93,165,1,1,98,2,0,93,178,1,1,98,2,
		0,93,166,1,1,98,2,0,93,167,1,1,98,2,
		0,93,168,1,1,98,2,0,93,186,1,1,98,2,
		0,93,219,1,1,98,2,0,93,220,1,1,98,2,
		0,93,221,1,1,98,2,0,93,222,1,1,98,2,
		0,93,171,1,1,98,2,0,93,170,1,1,98,2,
		0,93,179,1,1,98,2,0,93,181,1,1,98,2,
		0,93,184,1,1,98,2,0,93,173,1,1,98,2,
		0,93,185,1,1,98,2,0,93,156,1,1,98,2,
		0,93,157,1,1,98,2,0,93,159,1,1,98,2,
		0,93,158,1,1,98,2,0,93,129,1,1,98,2,
		0,93,201,1,1,98,2,0,93,202,1,1,98,2,
		0,93,174,1,1,98,2,0,93,172,1,1,98,2,
		0,93,42,1,1,98,2,0,93,43,1,1,20,33,
		26,192,1,98,2,0,93,221,1,1,120,8,29,221,
		0,176,6,0,98,2,0,93,160,1,1,98,2,0,
		93,161,1,1,98,2,0,93,176,1,1,98,2,0,
		93,175,1,1,98,2,0,93,223,1,1,98,2,0,
		93,164,1,1,98,2,0,93,178,1,1,98,2,0,
		93,166,1,1,98,2,0,93,167,1,1,98,2,0,
		93,168,1,1,98,2,0,93,171,1,1,98,2,0,
		93,170,1,1,98,2,0,93,179,1,1,98,2,0,
		93,165,1,1,98,2,0,93,181,1,1,98,2,0,
		93,184,1,1,98,2,0,93,173,1,1,98,2,0,
		93,244,1,1,98,2,0,93,156,1,1,98,2,0,
		93,157,1,1,98,2,0,93,159,1,1,98,2,0,
		93,158,1,1,98,2,0,93,129,1,1,98,2,0,
		93,201,1,1,98,2,0,93,202,1,1,98,2,0,
		93,185,1,1,98,2,0,93,174,1,1,98,2,0,
		93,172,1,1,98,2,0,93,42,1,1,98,2,0,
		93,43,1,1,20,30,26,218,0,176,7,0,98,2,
		0,93,160,1,1,98,2,0,93,161,1,1,98,2,
		0,93,176,1,1,98,2,0,93,175,1,1,98,2,
		0,93,223,1,1,98,2,0,93,164,1,1,98,2,
		0,93,178,1,1,98,2,0,93,166,1,1,98,2,
		0,93,167,1,1,98,2,0,93,168,1,1,98,2,
		0,93,171,1,1,98,2,0,93,170,1,1,98,2,
		0,93,179,1,1,98,2,0,93,165,1,1,98,2,
		0,93,181,1,1,98,2,0,93,184,1,1,98,2,
		0,93,173,1,1,98,2,0,93,156,1,1,98,2,
		0,93,157,1,1,98,2,0,93,159,1,1,98,2,
		0,93,158,1,1,98,2,0,93,129,1,1,98,2,
		0,93,201,1,1,98,2,0,93,202,1,1,98,2,
		0,93,144,1,1,98,2,0,93,185,1,1,98,2,
		0,93,174,1,1,98,2,0,93,172,1,1,98,2,
		0,93,42,1,1,98,2,0,93,43,1,1,20,30,
		36,68,0,106,8,76,97,98,101,108,95,49,0,98,
		2,0,93,160,1,2,100,98,2,0,93,161,1,2,
		100,98,2,0,93,176,1,2,100,98,2,0,93,175,
		1,2,100,98,2,0,93,178,1,2,100,98,2,0,
		93,164,1,2,100,98,2,0,93,165,1,2,100,98,
		2,0,93,166,1,2,100,98,2,0,93,167,1,2,
		9,98,2,0,93,203,1,2,9,98,2,0,93,204,
		1,2,9,98,2,0,93,205,1,2,9,98,2,0,
		93,206,1,2,9,98,2,0,93,207,1,2,100,98,
		2,0,93,201,1,2,100,98,2,0,93,202,1,2,
		100,98,2,0,93,163,1,2,100,98,2,0,93,173,
		1,2,9,98,2,0,93,174,1,2,9,98,2,0,
		93,156,1,2,9,98,2,0,93,157,1,2,9,98,
		2,0,93,158,1,2,9,98,2,0,93,159,1,2,
		100,98,2,0,93,168,1,2,9,98,2,0,93,184,
		1,2,9,98,2,0,93,153,1,2,9,98,2,0,
		93,137,1,2,9,98,2,0,93,25,1,2,9,98,
		2,0,93,131,1,2,36,69,0,92,60,98,2,0,
		93,175,1,2,36,70,0,93,200,0,98,2,0,93,
		176,1,2,36,71,0,93,64,1,98,2,0,93,164,
		1,2,36,72,0,92,20,98,2,0,93,165,1,2,
		36,73,0,106,8,76,97,98,101,108,95,49,0,98,
		2,0,93,178,1,2,36,74,0,106,6,65,114,105,
		97,108,0,98,2,0,93,166,1,2,36,75,0,92,
		9,98,2,0,93,167,1,2,36,76,0,106,1,0,
		98,2,0,93,168,1,2,36,77,0,9,98,2,0,
		93,156,1,2,36,78,0,9,98,2,0,93,157,1,
		2,36,79,0,9,98,2,0,93,159,1,2,36,80,
		0,9,98,2,0,93,158,1,2,36,81,0,100,98,
		2,0,93,173,1,2,36,82,0,9,98,2,0,93,
		174,1,2,36,83,0,9,98,2,0,93,207,1,2,
		36,84,0,90,4,100,6,98,2,0,93,163,1,2,
		36,85,0,9,98,2,0,93,153,1,2,36,86,0,
		100,98,2,0,93,201,1,2,36,87,0,100,98,2,
		0,93,202,1,2,36,88,0,176,9,0,98,2,0,
		93,160,1,1,98,2,0,93,161,1,1,98,2,0,
		93,176,1,1,98,2,0,93,175,1,1,98,2,0,
		93,178,1,1,98,2,0,93,164,1,1,98,2,0,
		93,165,1,1,98,2,0,93,166,1,1,98,2,0,
		93,167,1,1,98,2,0,93,156,1,1,98,2,0,
		93,203,1,1,98,2,0,93,204,1,1,98,2,0,
		93,205,1,1,98,2,0,93,206,1,1,98,2,0,
		93,207,1,1,98,2,0,93,201,1,1,98,2,0,
		93,202,1,1,98,2,0,93,163,1,1,98,2,0,
		93,168,1,1,98,2,0,93,173,1,1,98,2,0,
		93,174,1,1,98,2,0,93,157,1,1,98,2,0,
		93,159,1,1,98,2,0,93,158,1,1,98,2,0,
		93,153,1,1,98,2,0,93,184,1,1,98,2,0,
		93,137,1,1,98,2,0,93,25,1,1,98,2,0,
		93,131,1,1,20,29,36,90,0,106,8,76,97,98,
		101,108,95,50,0,98,2,0,93,160,1,2,100,98,
		2,0,93,161,1,2,100,98,2,0,93,176,1,2,
		100,98,2,0,93,175,1,2,100,98,2,0,93,178,
		1,2,100,98,2,0,93,164,1,2,100,98,2,0,
		93,165,1,2,100,98,2,0,93,166,1,2,100,98,
		2,0,93,167,1,2,9,98,2,0,93,203,1,2,
		9,98,2,0,93,204,1,2,9,98,2,0,93,205,
		1,2,9,98,2,0,93,206,1,2,9,98,2,0,
		93,207,1,2,100,98,2,0,93,201,1,2,100,98,
		2,0,93,202,1,2,100,98,2,0,93,163,1,2,
		100,98,2,0,93,173,1,2,9,98,2,0,93,174,
		1,2,9,98,2,0,93,156,1,2,9,98,2,0,
		93,157,1,2,9,98,2,0,93,158,1,2,9,98,
		2,0,93,159,1,2,100,98,2,0,93,168,1,2,
		9,98,2,0,93,184,1,2,9,98,2,0,93,153,
		1,2,9,98,2,0,93,137,1,2,9,98,2,0,
		93,25,1,2,9,98,2,0,93,131,1,2,36,91,
		0,93,140,0,98,2,0,93,175,1,2,36,92,0,
		93,200,0,98,2,0,93,176,1,2,36,93,0,93,
		74,1,98,2,0,93,164,1,2,36,94,0,92,40,
		98,2,0,93,165,1,2,36,95,0,106,8,76,97,
		98,101,108,95,50,0,98,2,0,93,178,1,2,36,
		96,0,106,6,65,114,105,97,108,0,98,2,0,93,
		166,1,2,36,97,0,92,9,98,2,0,93,167,1,
		2,36,98,0,106,1,0,98,2,0,93,168,1,2,
		36,99,0,9,98,2,0,93,156,1,2,36,100,0,
		9,98,2,0,93,157,1,2,36,101,0,9,98,2,
		0,93,159,1,2,36,102,0,9,98,2,0,93,158,
		1,2,36,103,0,100,98,2,0,93,173,1,2,36,
		104,0,9,98,2,0,93,174,1,2,36,105,0,9,
		98,2,0,93,207,1,2,36,106,0,90,4,100,6,
		98,2,0,93,163,1,2,36,107,0,9,98,2,0,
		93,153,1,2,36,108,0,100,98,2,0,93,201,1,
		2,36,109,0,100,98,2,0,93,202,1,2,36,110,
		0,176,9,0,98,2,0,93,160,1,1,98,2,0,
		93,161,1,1,98,2,0,93,176,1,1,98,2,0,
		93,175,1,1,98,2,0,93,178,1,1,98,2,0,
		93,164,1,1,98,2,0,93,165,1,1,98,2,0,
		93,166,1,1,98,2,0,93,167,1,1,98,2,0,
		93,156,1,1,98,2,0,93,203,1,1,98,2,0,
		93,204,1,1,98,2,0,93,205,1,1,98,2,0,
		93,206,1,1,98,2,0,93,207,1,1,98,2,0,
		93,201,1,1,98,2,0,93,202,1,1,98,2,0,
		93,163,1,1,98,2,0,93,168,1,1,98,2,0,
		93,173,1,1,98,2,0,93,174,1,1,98,2,0,
		93,157,1,1,98,2,0,93,159,1,1,98,2,0,
		93,158,1,1,98,2,0,93,153,1,1,98,2,0,
		93,184,1,1,98,2,0,93,137,1,1,98,2,0,
		93,25,1,1,98,2,0,93,131,1,1,20,29,36,
		112,0,176,10,0,20,0,36,10,0,176,11,0,106,
		5,77,97,105,110,0,106,7,67,101,110,116,101,114,
		0,20,2,36,11,0,176,11,0,106,5,77,97,105,
		110,0,106,9,65,99,116,105,118,97,116,101,0,20,
		2,36,14,0,7
	};

	hb_vmExecute( pcode, symbols );
}

HB_FUNC( TEXT01 )
{
	static const HB_BYTE pcode[] =
	{
		116,19,0,36,18,0,176,12,0,106,5,77,97,105,
		110,0,106,8,76,97,98,101,108,95,49,0,106,6,
		86,97,108,117,101,0,106,11,85,109,32,101,114,114,
		111,32,58,32,0,176,13,0,104,1,0,172,92,2,
		12,2,72,106,4,32,47,32,0,72,176,14,0,176,
		15,0,12,0,12,1,72,20,4,36,19,0,176,11,
		0,106,5,77,97,105,110,0,106,7,84,101,120,116,
		95,49,0,106,9,83,101,116,70,111,99,117,115,0,
		20,3,36,21,0,7
	};

	hb_vmExecute( pcode, symbols );
}

HB_FUNC( TEXT02 )
{
	static const HB_BYTE pcode[] =
	{
		116,19,0,36,25,0,176,12,0,106,5,77,97,105,
		110,0,106,8,76,97,98,101,108,95,50,0,106,6,
		86,97,108,117,101,0,106,33,69,117,32,110,195,163,
		111,32,100,101,118,101,114,105,97,32,115,101,114,32,
		101,120,101,99,117,116,97,100,111,32,58,32,0,176,
		13,0,104,1,0,172,92,2,12,2,72,106,4,32,
		47,32,0,72,176,14,0,176,15,0,12,0,12,1,
		72,20,4,36,27,0,7
	};

	hb_vmExecute( pcode, symbols );
}

HB_FUNC_INITSTATICS()
{
	static const HB_BYTE pcode[] =
	{
		117,19,0,1,0,7
	};

	hb_vmExecute( pcode, symbols );
}
