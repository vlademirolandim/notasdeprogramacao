#include <minigui.ch>
#include 'adodb.ch'

Function Main
	Local nOption := 0
	Local oConexion, oTable
	
	Set DAte British
	Set Century On
	Set Navigation Extended
	
	oConexion = TOleauto():New('ADODB.Connection')                    	
	oConexion:ConnectionString ='Provider=Microsoft.Jet.OLEDB.4.0;'+;    
								'Data Source=Test.mdb;'+;                 
								'User Id=Admin;'+;                       
								"Password=;"                             
	oConexion:Open()

	
	oTable := TOleAuto():New('ADODB.Recordset')
	oTable:CursorLocation = adUseClient
	oTable:Open( "Select * from tabla1", oConexion, adOpenDynamic, adLockOptimistic )
	if oTable:State = adStateClose
		Msgstop('Failed open table Tabla1')
		Return
	Endif
		
	Load Window Main                  								                 
	Main.Center  	
	Main.Activate                                                                  
Return
	
procedure load( otbl )
	Main.grid_1.deleteallitems
	if oTbl:recordcount > 0
		oTbl:Movefirst()
		do while !oTbl:eof()
			main.grid_1.additem( { 	oTbl:fields('id'):value,;
									oTbl:fields('texto'):value,;	
									oTbl:fields('numero'):value,;
									oTbl:fields('fecha'):value,;
									oTbl:fields('logico'):value,;
									oTbl:fields('memo'):value })
			otbl:movenext()
		enddo
		oTbl:Movefirst()
	endif
	main.grid_1.value := 1
	main.grid_1.setfocus									
return

procedure viewrecord( otbl )
	if Main.grid_1.value > 0
		if main.grid_1.cell( main.grid_1.value, 1 ) > 0
			Main.text_1.value		:= Main.grid_1.cell(Main.Grid_1.value, 2 )
			Main.text_2.value		:= Main.grid_1.cell(Main.Grid_1.value, 3 )
			Main.datepicker_1.value	:= Main.grid_1.cell(Main.Grid_1.value, 4 )
			Main.check_1.value		:= Main.grid_1.cell(Main.Grid_1.value, 5 )
			Main.edit_1.value		:= Main.grid_1.cell(Main.Grid_1.value, 6 )			
			Main.check_1.caption := if( Main.check_1.value, 'Married','Single')
		endif
	endif
return

procedure statuscontrols(n, otbl)
	if n = 2 .and. oTbl:Recordcount = 0
		msgstop('Grid dont have records')
		return
	endif
	Main.text_1.enabled			:= if( n <> 0, .t., .f. )
	Main.text_2.enabled			:= if( n <> 0, .t., .f. )
	Main.datepicker_1.enabled	:= if( n <> 0, .t., .f. )
	Main.check_1.enabled		:= if( n <> 0, .t., .f. )
	Main.edit_1.enabled			:= if( n <> 0, .t., .f. )
	Main.grid_1.enabled			:= if( n <> 0, .f., .t. )
	if n = 1
		Main.text_1.value		:= ""
		Main.text_2.value		:= 0
		Main.datepicker_1.value	:= date()
		Main.check_1.value		:= .t.
		Main.edit_1.value		:= ""
		Main.text_1.setfocus
	elseif n = 2
		Main.text_1.setfocus
	else
		Main.Grid_1.Setfocus
	endif
return

procedure Save( n, oTbl )
	local i := 1
	
	if n = 1
		oTbl:AddNew()
	else
		oTbl:MoveFirst()
		oTbl:find( "id="+alltrim(str(Main.grid_1.cell(Main.grid_1.value,1))))
		if oTbl:eof()
			Msgstop('Record not found')
			return
		endif
	endif
	oTbl:fields('texto'):value	:= Main.text_1.value
	oTbl:fields('numero'):value	:= Main.text_2.value
	oTbl:fields('fecha'):value	:= Main.datepicker_1.value
	oTbl:fields('Logico'):value	:= Main.check_1.value
	oTbl:fields('Memo'):value	:= Main.edit_1.value
	oTbl:Update()
	if n = 1
		oTbl:Movelast()
		main.grid_1.additem( { 	oTbl:fields('id'):value,;
								oTbl:fields('texto'):value,;	
								oTbl:fields('numero'):value,;
								oTbl:fields('fecha'):value,;
								oTbl:fields('logico'):value,;
								oTbl:fields('memo'):value })
	elseif n = 2
		for i= 1 to 6
			Main.Grid_1.Cell(Main.grid_1.value,i):= oTbl:fields(i-1):value
		next
	endif
	statuscontrols(0,otbl)
return

procedure del( otbl )
	if main.grid_1.value > 0
		if msgyesno('do you wish delete this record')
			oTbl:MoveFirst()
			oTbl:find("id="+alltrim(str(main.grid_1.cell(main.grid_1.value,1))))
			if oTbl:eof()
				msgstop('Record not found')
			else
				oTbl:delete()
				oTbl:Update()
				Main.grid_1.deleteitem( Main.grid_1.value )
			endif
			Main.grid_1.setfocus
		endif
	endif				
return

procedure find(otbl)
	Local cValue := Inputbox('Find','Input name', "")

	if len( cValue ) > 0
		if oTbl:recordcount > 0
			oTbl:movefirst()
			oTbl:find("Texto='"+cValue+"'")
			if oTbl:eof()
				msgstop(cValue+" not found")
			else
				Main.Grid_1.Value := oTbl:AbsolutePosition
			endif
		endif				
	endif
return