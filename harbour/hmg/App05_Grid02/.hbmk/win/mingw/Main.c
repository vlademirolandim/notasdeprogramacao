/*
 * Harbour 3.2.0dev (r1703241902)
 * MinGW GNU C 5.3 (32-bit)
 * Generated C source from "C:\CursoHMG\CookBook\App05_Grid02\Main.Prg"
 */

#include "hbvmpub.h"
#include "hbinit.h"


HB_FUNC( MAIN );
HB_FUNC_EXTERN( _DEFINEWINDOW );
HB_FUNC_EXTERN( _BEGINFRAME );
HB_FUNC_EXTERN( MSGINFO );
HB_FUNC_EXTERN( VALTYPE );
HB_FUNC_EXTERN( _DEFINEGRID );
HB_FUNC_EXTERN( _DEFINETEXTBOX );
HB_FUNC_EXTERN( _DEFINEMASKEDTEXTBOX );
HB_FUNC_EXTERN( _DEFINECHARMASKTEXTBOX );
HB_FUNC( BUSCAR );
HB_FUNC_EXTERN( _DEFINEBUTTON );
HB_FUNC_EXTERN( _DEFINEIMAGEBUTTON );
HB_FUNC_EXTERN( _DEFINEMIXEDBUTTON );
HB_FUNC_EXTERN( _ENDWINDOW );
HB_FUNC_EXTERN( DOMETHOD );
HB_FUNC_EXTERN( ERRORSYS );


HB_INIT_SYMBOLS_BEGIN( hb_vm_SymbolInit_MAIN )
{ "MAIN", {HB_FS_PUBLIC | HB_FS_FIRST | HB_FS_LOCAL}, {HB_FUNCNAME( MAIN )}, NULL },
{ "_HMG_SYSDATA", {HB_FS_PUBLIC | HB_FS_MEMVAR}, {NULL}, NULL },
{ "_DEFINEWINDOW", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINEWINDOW )}, NULL },
{ "_BEGINFRAME", {HB_FS_PUBLIC}, {HB_FUNCNAME( _BEGINFRAME )}, NULL },
{ "MSGINFO", {HB_FS_PUBLIC}, {HB_FUNCNAME( MSGINFO )}, NULL },
{ "VALTYPE", {HB_FS_PUBLIC}, {HB_FUNCNAME( VALTYPE )}, NULL },
{ "_DEFINEGRID", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINEGRID )}, NULL },
{ "_DEFINETEXTBOX", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINETEXTBOX )}, NULL },
{ "_DEFINEMASKEDTEXTBOX", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINEMASKEDTEXTBOX )}, NULL },
{ "_DEFINECHARMASKTEXTBOX", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINECHARMASKTEXTBOX )}, NULL },
{ "BUSCAR", {HB_FS_PUBLIC | HB_FS_LOCAL}, {HB_FUNCNAME( BUSCAR )}, NULL },
{ "_DEFINEBUTTON", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINEBUTTON )}, NULL },
{ "_DEFINEIMAGEBUTTON", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINEIMAGEBUTTON )}, NULL },
{ "_DEFINEMIXEDBUTTON", {HB_FS_PUBLIC}, {HB_FUNCNAME( _DEFINEMIXEDBUTTON )}, NULL },
{ "_ENDWINDOW", {HB_FS_PUBLIC}, {HB_FUNCNAME( _ENDWINDOW )}, NULL },
{ "DOMETHOD", {HB_FS_PUBLIC}, {HB_FUNCNAME( DOMETHOD )}, NULL },
{ "ERRORSYS", {HB_FS_PUBLIC}, {HB_FUNCNAME( ERRORSYS )}, NULL }
HB_INIT_SYMBOLS_EX_END( hb_vm_SymbolInit_MAIN, "C:\\CursoHMG\\CookBook\\App05_Grid02\\Main.Prg", 0x0, 0x0003 )

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
		36,5,0,106,5,77,97,105,110,0,98,1,0,93,
		214,0,2,36,4,0,176,2,0,100,106,1,0,93,
		41,2,93,13,1,93,38,2,93,94,1,9,9,9,
		9,9,9,106,1,0,90,4,100,6,90,4,100,6,
		90,4,100,6,90,4,100,6,90,4,100,6,90,4,
		100,6,100,90,4,100,6,9,9,120,100,9,100,100,
		100,100,90,4,100,6,90,4,100,6,90,4,100,6,
		100,100,90,4,100,6,90,4,100,6,90,4,100,6,
		90,4,100,6,90,4,100,6,90,4,100,6,9,90,
		4,100,6,90,4,100,6,100,9,90,4,100,6,100,
		100,100,100,100,100,100,100,9,20,56,36,6,0,106,
		8,70,114,97,109,101,95,49,0,98,1,0,93,160,
		1,2,100,98,1,0,93,161,1,2,100,98,1,0,
		93,175,1,2,100,98,1,0,93,176,1,2,100,98,
		1,0,93,164,1,2,100,98,1,0,93,165,1,2,
		100,98,1,0,93,162,1,2,100,98,1,0,93,166,
		1,2,100,98,1,0,93,167,1,2,100,98,1,0,
		93,201,1,2,100,98,1,0,93,202,1,2,9,98,
		1,0,93,207,1,2,9,98,1,0,93,188,1,2,
		9,98,1,0,93,156,1,2,9,98,1,0,93,157,
		1,2,9,98,1,0,93,158,1,2,9,98,1,0,
		93,159,1,2,36,7,0,92,10,98,1,0,93,175,
		1,2,36,8,0,92,20,98,1,0,93,176,1,2,
		36,9,0,93,244,1,98,1,0,93,164,1,2,36,
		10,0,92,80,98,1,0,93,165,1,2,36,11,0,
		106,6,65,114,105,97,108,0,98,1,0,93,166,1,
		2,36,12,0,92,9,98,1,0,93,167,1,2,36,
		13,0,9,98,1,0,93,156,1,2,36,14,0,9,
		98,1,0,93,157,1,2,36,15,0,9,98,1,0,
		93,159,1,2,36,16,0,9,98,1,0,93,158,1,
		2,36,17,0,106,28,68,105,103,105,116,101,32,111,
		32,116,101,114,109,111,32,112,97,114,97,32,97,32,
		98,117,115,99,97,0,98,1,0,93,162,1,2,36,
		18,0,100,98,1,0,93,201,1,2,36,19,0,100,
		98,1,0,93,202,1,2,36,20,0,120,98,1,0,
		93,188,1,2,36,21,0,176,3,0,98,1,0,93,
		160,1,1,98,1,0,93,161,1,1,98,1,0,93,
		175,1,1,98,1,0,93,176,1,1,98,1,0,93,
		164,1,1,98,1,0,93,165,1,1,98,1,0,93,
		162,1,1,98,1,0,93,166,1,1,98,1,0,93,
		167,1,1,98,1,0,93,188,1,1,98,1,0,93,
		156,1,1,98,1,0,93,157,1,1,98,1,0,93,
		159,1,1,98,1,0,93,158,1,1,98,1,0,93,
		201,1,1,98,1,0,93,202,1,1,98,1,0,93,
		207,1,1,20,17,36,23,0,120,98,1,0,93,127,
		1,2,100,98,1,0,93,126,1,2,106,11,71,114,
		105,100,95,66,117,115,99,97,0,98,1,0,93,160,
		1,2,100,98,1,0,93,161,1,2,100,98,1,0,
		93,176,1,2,100,98,1,0,93,175,1,2,100,98,
		1,0,93,164,1,2,100,98,1,0,93,165,1,2,
		100,98,1,0,93,189,1,2,100,98,1,0,93,190,
		1,2,100,98,1,0,93,25,1,2,100,98,1,0,
		93,180,1,2,100,98,1,0,93,178,1,2,100,98,
		1,0,93,166,1,2,100,98,1,0,93,167,1,2,
		100,98,1,0,93,168,1,2,100,98,1,0,93,170,
		1,2,100,98,1,0,93,179,1,2,100,98,1,0,
		93,171,1,2,100,98,1,0,93,191,1,2,100,98,
		1,0,93,192,1,2,9,98,1,0,93,193,1,2,
		100,98,1,0,93,194,1,2,100,98,1,0,93,195,
		1,2,100,98,1,0,93,173,1,2,9,98,1,0,
		93,199,1,2,9,98,1,0,93,187,1,2,9,98,
		1,0,93,156,1,2,9,98,1,0,93,157,1,2,
		9,98,1,0,93,158,1,2,9,98,1,0,93,159,
		1,2,100,98,1,0,93,152,1,2,100,98,1,0,
		93,151,1,2,100,98,1,0,93,201,1,2,100,98,
		1,0,93,202,1,2,100,98,1,0,93,185,1,2,
		9,98,1,0,93,154,1,2,9,98,1,0,93,145,
		1,2,9,98,1,0,93,200,1,2,9,98,1,0,
		93,73,1,2,100,98,1,0,93,135,1,2,100,98,
		1,0,93,134,1,2,100,98,1,0,93,132,1,2,
		100,98,1,0,93,246,0,2,100,98,1,0,93,131,
		1,2,100,98,1,0,93,71,1,2,100,98,1,0,
		93,70,1,2,9,98,1,0,93,69,1,2,9,98,
		1,0,93,226,1,2,100,98,1,0,93,230,1,2,
		100,98,1,0,93,244,0,2,100,98,1,0,93,21,
		1,2,100,98,1,0,93,130,1,2,100,98,1,0,
		93,163,1,2,100,98,1,0,93,247,0,2,100,98,
		1,0,93,248,0,2,120,98,1,0,93,207,1,2,
		100,98,1,0,93,197,1,2,100,98,1,0,93,198,
		1,2,120,98,1,0,93,196,1,2,100,98,1,0,
		93,96,1,2,36,24,0,92,110,98,1,0,93,175,
		1,2,36,25,0,92,20,98,1,0,93,176,1,2,
		36,26,0,93,244,1,98,1,0,93,164,1,2,36,
		27,0,93,190,0,98,1,0,93,165,1,2,36,28,
		0,106,1,0,106,1,0,4,2,0,4,1,0,98,
		1,0,93,180,1,2,36,29,0,100,98,1,0,93,
		178,1,2,36,30,0,93,250,0,93,200,0,4,2,
		0,98,1,0,93,190,1,2,36,31,0,106,5,78,
		111,109,101,0,106,10,69,110,100,101,114,101,195,167,
		111,0,4,2,0,98,1,0,93,189,1,2,36,32,
		0,106,6,65,114,105,97,108,0,98,1,0,93,166,
		1,2,36,33,0,92,9,98,1,0,93,167,1,2,
		36,34,0,106,1,0,98,1,0,93,168,1,2,36,
		35,0,90,4,100,6,98,1,0,93,179,1,2,36,
		36,0,90,4,100,6,98,1,0,93,170,1,2,36,
		37,0,90,4,100,6,98,1,0,93,171,1,2,36,
		38,0,9,98,1,0,93,156,1,2,36,39,0,9,
		98,1,0,93,157,1,2,36,40,0,9,98,1,0,
		93,159,1,2,36,41,0,9,98,1,0,93,158,1,
		2,36,42,0,90,15,176,4,0,98,1,0,93,195,
		0,1,12,1,6,98,1,0,93,191,1,2,36,43,
		0,100,98,1,0,93,192,1,2,36,44,0,90,4,
		100,6,98,1,0,93,152,1,2,36,45,0,9,98,
		1,0,93,199,1,2,36,46,0,9,98,1,0,93,
		200,1,2,36,47,0,9,98,1,0,93,154,1,2,
		36,48,0,100,98,1,0,93,135,1,2,36,49,0,
		100,98,1,0,93,134,1,2,36,50,0,100,98,1,
		0,93,130,1,2,36,51,0,100,98,1,0,93,131,
		1,2,36,52,0,100,98,1,0,93,132,1,2,36,
		53,0,120,98,1,0,93,126,1,2,36,54,0,9,
		98,1,0,93,73,1,2,36,55,0,9,98,1,0,
		93,193,1,2,36,56,0,100,98,1,0,93,173,1,
		2,36,57,0,100,98,1,0,93,194,1,2,36,58,
		0,100,98,1,0,93,195,1,2,36,59,0,100,98,
		1,0,93,151,1,2,36,60,0,100,98,1,0,93,
		201,1,2,36,61,0,100,98,1,0,93,202,1,2,
		36,62,0,100,98,1,0,93,246,0,2,36,63,0,
		100,98,1,0,93,71,1,2,36,64,0,100,98,1,
		0,93,70,1,2,36,65,0,9,98,1,0,93,230,
		1,2,36,66,0,9,98,1,0,93,226,1,2,36,
		67,0,9,98,1,0,93,69,1,2,36,68,0,100,
		98,1,0,93,244,0,2,36,69,0,176,5,0,100,
		12,1,106,2,85,0,8,28,5,100,25,6,90,4,
		100,6,98,1,0,93,21,1,2,36,70,0,121,98,
		1,0,93,25,1,2,36,71,0,9,98,1,0,93,
		127,1,2,176,6,0,98,1,0,93,160,1,1,98,
		1,0,93,161,1,1,98,1,0,93,176,1,1,98,
		1,0,93,175,1,1,98,1,0,93,164,1,1,98,
		1,0,93,165,1,1,98,1,0,93,189,1,1,98,
		1,0,93,190,1,1,98,1,0,93,180,1,1,98,
		1,0,93,178,1,1,98,1,0,93,166,1,1,98,
		1,0,93,167,1,1,98,1,0,93,168,1,1,98,
		1,0,93,179,1,1,98,1,0,93,191,1,1,98,
		1,0,93,192,1,1,98,1,0,93,170,1,1,98,
		1,0,93,171,1,1,98,1,0,93,193,1,1,98,
		1,0,93,194,1,1,98,1,0,93,195,1,1,98,
		1,0,93,187,1,1,98,1,0,93,173,1,1,98,
		1,0,93,156,1,1,98,1,0,93,157,1,1,98,
		1,0,93,159,1,1,98,1,0,93,158,1,1,98,
		1,0,93,154,1,1,98,1,0,93,152,1,1,98,
		1,0,93,151,1,1,100,100,100,98,1,0,93,199,
		1,1,100,98,1,0,93,201,1,1,98,1,0,93,
		202,1,1,98,1,0,93,200,1,1,98,1,0,93,
		132,1,1,98,1,0,93,135,1,1,98,1,0,93,
		134,1,1,98,1,0,93,131,1,1,98,1,0,93,
		130,1,1,98,1,0,93,126,1,1,98,1,0,93,
		246,0,1,98,1,0,93,73,1,1,98,1,0,93,
		71,1,1,98,1,0,93,70,1,1,98,1,0,93,
		230,1,1,98,1,0,93,69,1,1,98,1,0,93,
		226,1,1,98,1,0,93,244,0,1,98,1,0,93,
		21,1,1,98,1,0,93,25,1,1,98,1,0,93,
		163,1,1,98,1,0,93,247,0,1,98,1,0,93,
		248,0,1,98,1,0,93,207,1,1,68,98,1,0,
		93,196,1,1,68,98,1,0,93,197,1,1,98,1,
		0,93,198,1,1,98,1,0,93,96,1,1,20,62,
		36,73,0,106,11,84,101,120,116,95,66,117,115,99,
		97,0,98,1,0,93,160,1,2,100,98,1,0,93,
		161,1,2,100,98,1,0,93,176,1,2,100,98,1,
		0,93,42,1,2,100,98,1,0,93,43,1,2,100,
		98,1,0,93,175,1,2,100,98,1,0,93,164,1,
		2,100,98,1,0,93,165,1,2,100,98,1,0,93,
		178,1,2,100,98,1,0,93,166,1,2,100,98,1,
		0,93,129,1,2,100,98,1,0,93,167,1,2,100,
		98,1,0,93,168,1,2,100,98,1,0,93,186,1,
		2,9,98,1,0,93,219,1,2,9,98,1,0,93,
		220,1,2,9,98,1,0,93,221,1,2,9,98,1,
		0,93,222,1,2,100,98,1,0,93,171,1,2,100,
		98,1,0,93,170,1,2,100,98,1,0,93,179,1,
		2,100,98,1,0,93,181,1,2,9,98,1,0,93,
		184,1,2,9,98,1,0,93,185,1,2,9,98,1,
		0,93,144,1,2,100,98,1,0,93,173,1,2,100,
		98,1,0,93,223,1,2,100,98,1,0,93,244,1,
		2,100,98,1,0,93,201,1,2,100,98,1,0,93,
		202,1,2,9,98,1,0,93,156,1,2,9,98,1,
		0,93,172,1,2,9,98,1,0,93,174,1,2,9,
		98,1,0,93,157,1,2,9,98,1,0,93,158,1,
		2,9,98,1,0,93,159,1,2,36,74,0,92,50,
		98,1,0,93,175,1,2,36,75,0,92,40,98,1,
		0,93,176,1,2,36,76,0,93,114,1,98,1,0,
		93,164,1,2,36,77,0,92,20,98,1,0,93,165,
		1,2,36,78,0,106,6,65,114,105,97,108,0,98,
		1,0,93,166,1,2,36,79,0,92,9,98,1,0,
		93,167,1,2,36,80,0,106,1,0,98,1,0,93,
		168,1,2,36,81,0,90,4,100,6,98,1,0,93,
		179,1,2,36,82,0,90,4,100,6,98,1,0,93,
		170,1,2,36,83,0,90,4,100,6,98,1,0,93,
		171,1,2,36,84,0,9,98,1,0,93,156,1,2,
		36,85,0,9,98,1,0,93,157,1,2,36,86,0,
		9,98,1,0,93,159,1,2,36,87,0,9,98,1,
		0,93,158,1,2,36,88,0,90,4,100,6,98,1,
		0,93,181,1,2,36,89,0,100,98,1,0,93,173,
		1,2,36,90,0,9,98,1,0,93,172,1,2,36,
		91,0,9,98,1,0,93,174,1,2,36,92,0,9,
		98,1,0,93,185,1,2,36,93,0,9,98,1,0,
		93,184,1,2,36,94,0,100,98,1,0,93,42,1,
		2,36,95,0,100,98,1,0,93,43,1,2,36,96,
		0,9,98,1,0,93,220,1,2,9,98,1,0,93,
		219,1,2,36,97,0,100,98,1,0,93,201,1,2,
		36,98,0,100,98,1,0,93,202,1,2,36,99,0,
		100,98,1,0,93,223,1,2,36,100,0,100,98,1,
		0,93,244,1,2,36,101,0,106,1,0,98,1,0,
		93,178,1,2,36,102,0,98,1,0,93,223,1,1,
		100,8,29,254,0,98,1,0,93,144,1,1,9,8,
		29,242,0,176,7,0,98,1,0,93,160,1,1,98,
		1,0,93,161,1,1,98,1,0,93,176,1,1,98,
		1,0,93,175,1,1,98,1,0,93,164,1,1,98,
		1,0,93,165,1,1,98,1,0,93,178,1,1,98,
		1,0,93,166,1,1,98,1,0,93,167,1,1,98,
		1,0,93,168,1,1,98,1,0,93,186,1,1,98,
		1,0,93,219,1,1,98,1,0,93,220,1,1,98,
		1,0,93,221,1,1,98,1,0,93,222,1,1,98,
		1,0,93,171,1,1,98,1,0,93,170,1,1,98,
		1,0,93,179,1,1,98,1,0,93,181,1,1,98,
		1,0,93,184,1,1,98,1,0,93,173,1,1,98,
		1,0,93,185,1,1,98,1,0,93,156,1,1,98,
		1,0,93,157,1,1,98,1,0,93,159,1,1,98,
		1,0,93,158,1,1,98,1,0,93,129,1,1,98,
		1,0,93,201,1,1,98,1,0,93,202,1,1,98,
		1,0,93,174,1,1,98,1,0,93,172,1,1,98,
		1,0,93,42,1,1,98,1,0,93,43,1,1,20,
		33,26,192,1,98,1,0,93,221,1,1,120,8,29,
		221,0,176,8,0,98,1,0,93,160,1,1,98,1,
		0,93,161,1,1,98,1,0,93,176,1,1,98,1,
		0,93,175,1,1,98,1,0,93,223,1,1,98,1,
		0,93,164,1,1,98,1,0,93,178,1,1,98,1,
		0,93,166,1,1,98,1,0,93,167,1,1,98,1,
		0,93,168,1,1,98,1,0,93,171,1,1,98,1,
		0,93,170,1,1,98,1,0,93,179,1,1,98,1,
		0,93,165,1,1,98,1,0,93,181,1,1,98,1,
		0,93,184,1,1,98,1,0,93,173,1,1,98,1,
		0,93,244,1,1,98,1,0,93,156,1,1,98,1,
		0,93,157,1,1,98,1,0,93,159,1,1,98,1,
		0,93,158,1,1,98,1,0,93,129,1,1,98,1,
		0,93,201,1,1,98,1,0,93,202,1,1,98,1,
		0,93,185,1,1,98,1,0,93,174,1,1,98,1,
		0,93,172,1,1,98,1,0,93,42,1,1,98,1,
		0,93,43,1,1,20,30,26,218,0,176,9,0,98,
		1,0,93,160,1,1,98,1,0,93,161,1,1,98,
		1,0,93,176,1,1,98,1,0,93,175,1,1,98,
		1,0,93,223,1,1,98,1,0,93,164,1,1,98,
		1,0,93,178,1,1,98,1,0,93,166,1,1,98,
		1,0,93,167,1,1,98,1,0,93,168,1,1,98,
		1,0,93,171,1,1,98,1,0,93,170,1,1,98,
		1,0,93,179,1,1,98,1,0,93,165,1,1,98,
		1,0,93,181,1,1,98,1,0,93,184,1,1,98,
		1,0,93,173,1,1,98,1,0,93,156,1,1,98,
		1,0,93,157,1,1,98,1,0,93,159,1,1,98,
		1,0,93,158,1,1,98,1,0,93,129,1,1,98,
		1,0,93,201,1,1,98,1,0,93,202,1,1,98,
		1,0,93,144,1,1,98,1,0,93,185,1,1,98,
		1,0,93,174,1,1,98,1,0,93,172,1,1,98,
		1,0,93,42,1,1,98,1,0,93,43,1,1,20,
		30,36,104,0,106,13,66,117,116,116,111,110,95,66,
		117,115,99,97,0,98,1,0,93,160,1,2,100,98,
		1,0,93,161,1,2,100,98,1,0,93,176,1,2,
		100,98,1,0,93,175,1,2,100,98,1,0,93,162,
		1,2,100,98,1,0,93,163,1,2,100,98,1,0,
		93,164,1,2,100,98,1,0,93,165,1,2,100,98,
		1,0,93,166,1,2,100,98,1,0,93,167,1,2,
		100,98,1,0,93,168,1,2,9,98,1,0,93,169,
		1,2,100,98,1,0,93,170,1,2,100,98,1,0,
		93,171,1,2,9,98,1,0,93,172,1,2,100,98,
		1,0,93,173,1,2,9,98,1,0,93,174,1,2,
		100,98,1,0,93,175,1,2,100,98,1,0,93,176,
		1,2,100,98,1,0,93,177,1,2,120,98,1,0,
		93,207,1,2,9,98,1,0,93,156,1,2,9,98,
		1,0,93,157,1,2,9,98,1,0,93,158,1,2,
		9,98,1,0,93,97,1,2,9,98,1,0,93,159,
		1,2,36,105,0,92,50,98,1,0,93,175,1,2,
		36,106,0,93,174,1,98,1,0,93,176,1,2,36,
		107,0,92,50,98,1,0,93,164,1,2,36,108,0,
		92,20,98,1,0,93,165,1,2,36,109,0,90,8,
		176,10,0,12,0,6,98,1,0,93,163,1,2,36,
		110,0,106,7,66,117,115,99,97,114,0,98,1,0,
		93,162,1,2,36,111,0,106,6,65,114,105,97,108,
		0,98,1,0,93,166,1,2,36,112,0,92,9,98,
		1,0,93,167,1,2,36,113,0,106,1,0,98,1,
		0,93,168,1,2,36,114,0,9,98,1,0,93,156,
		1,2,36,115,0,9,98,1,0,93,157,1,2,36,
		116,0,9,98,1,0,93,159,1,2,36,117,0,9,
		98,1,0,93,158,1,2,36,118,0,90,4,100,6,
		98,1,0,93,170,1,2,36,119,0,90,4,100,6,
		98,1,0,93,171,1,2,36,120,0,100,98,1,0,
		93,173,1,2,36,121,0,9,98,1,0,93,169,1,
		2,36,122,0,9,98,1,0,93,172,1,2,36,123,
		0,9,98,1,0,93,174,1,2,36,124,0,9,98,
		1,0,93,207,1,2,36,125,0,9,98,1,0,93,
		97,1,2,36,126,0,100,98,1,0,93,177,1,2,
		36,127,0,106,4,84,79,80,0,98,1,0,93,125,
		1,2,36,128,0,98,1,0,93,177,1,1,100,8,
		29,165,0,176,11,0,98,1,0,93,160,1,1,98,
		1,0,93,161,1,1,98,1,0,93,176,1,1,98,
		1,0,93,175,1,1,98,1,0,93,162,1,1,98,
		1,0,93,163,1,1,98,1,0,93,164,1,1,98,
		1,0,93,165,1,1,98,1,0,93,166,1,1,98,
		1,0,93,167,1,1,98,1,0,93,168,1,1,98,
		1,0,93,170,1,1,98,1,0,93,171,1,1,98,
		1,0,93,169,1,1,98,1,0,93,172,1,1,98,
		1,0,93,173,1,1,98,1,0,93,174,1,1,98,
		1,0,93,156,1,1,98,1,0,93,157,1,1,98,
		1,0,93,159,1,1,98,1,0,93,158,1,1,98,
		1,0,93,97,1,1,20,22,26,63,1,98,1,0,
		93,162,1,1,100,8,28,126,176,12,0,98,1,0,
		93,160,1,1,98,1,0,93,161,1,1,98,1,0,
		93,176,1,1,98,1,0,93,175,1,1,106,1,0,
		98,1,0,93,163,1,1,98,1,0,93,164,1,1,
		98,1,0,93,165,1,1,98,1,0,93,177,1,1,
		98,1,0,93,168,1,1,98,1,0,93,170,1,1,
		98,1,0,93,171,1,1,98,1,0,93,169,1,1,
		98,1,0,93,207,1,1,68,98,1,0,93,173,1,
		1,98,1,0,93,174,1,1,98,1,0,93,172,1,
		1,20,17,26,184,0,176,13,0,98,1,0,93,160,
		1,1,98,1,0,93,161,1,1,98,1,0,93,176,
		1,1,98,1,0,93,175,1,1,98,1,0,93,162,
		1,1,98,1,0,93,163,1,1,98,1,0,93,164,
		1,1,98,1,0,93,165,1,1,98,1,0,93,166,
		1,1,98,1,0,93,167,1,1,98,1,0,93,168,
		1,1,98,1,0,93,170,1,1,98,1,0,93,171,
		1,1,98,1,0,93,169,1,1,98,1,0,93,172,
		1,1,98,1,0,93,173,1,1,98,1,0,93,174,
		1,1,98,1,0,93,156,1,1,98,1,0,93,157,
		1,1,98,1,0,93,159,1,1,98,1,0,93,158,
		1,1,98,1,0,93,177,1,1,98,1,0,93,125,
		1,1,98,1,0,93,97,1,1,98,1,0,93,207,
		1,1,68,20,25,36,130,0,176,14,0,20,0,36,
		6,0,176,15,0,106,5,77,97,105,110,0,106,7,
		67,101,110,116,101,114,0,20,2,36,7,0,176,15,
		0,106,5,77,97,105,110,0,106,9,65,99,116,105,
		118,97,116,101,0,20,2,36,9,0,7
	};

	hb_vmExecute( pcode, symbols );
}

HB_FUNC( BUSCAR )
{
	static const HB_BYTE pcode[] =
	{
		36,15,0,176,15,0,106,5,77,97,105,110,0,106,
		11,71,114,105,100,95,66,117,115,99,97,0,106,15,
		68,69,76,69,84,69,65,76,76,73,84,69,77,83,
		0,20,3,36,17,0,176,15,0,106,5,77,97,105,
		110,0,106,11,71,114,105,100,95,66,117,115,99,97,
		0,106,8,65,68,68,73,84,69,77,0,106,10,86,
		108,97,100,101,109,105,114,111,0,106,19,82,46,32,
		84,101,114,101,122,97,32,67,114,105,115,116,105,110,
		97,0,4,2,0,20,4,36,19,0,7
	};

	hb_vmExecute( pcode, symbols );
}

