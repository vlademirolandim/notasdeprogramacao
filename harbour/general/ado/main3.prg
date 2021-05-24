
#define adOpenForwardOnly 0
#define adOpenKeyset 1
#define adOpenDynamic 2
#define adOpenStatic 3
#define adLockReadOnly 1
#define adLockPessimistic 2
#define adLockOptimistic 3
#define adLockBatchOptimistic 4
#define adUseNone 1
#define adUseServer 2
#define adUseClient 3

PROCEDURE MAIN()


   LOCAL oRs , oCn, cSql
   LOCAL cUsername := "SYSDBA"
   LOCAL cPassWord := "masterkey"
   LOCAL cDatabase := hb_Dirbase() + "sistemas33.fdb"
   LOCAL cDb := "Driver=Firebird/InterBase(r) driver;Uid=" + cUserName + ";Pwd=" + cPassword + ";DbName=" + cDataBase + ";" 

   oCn := win_oleCreateObject( "ADODB.Connection" )
   oCn:ConnectionString := cDb
   oCn:Open()

   
   //oRs := win_oleCreateObject("ADODB.RecordSet")
   cSql := "INSERT INTO emp ( empno, ename ) VALUES ( 122 , 'NOVO NOME' )"
   
   ? "Execute : " , oCn:Execute( cSql )
   oCn:Close()
   
   RETURN