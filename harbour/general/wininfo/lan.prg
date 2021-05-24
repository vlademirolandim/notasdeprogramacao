/* Test.prg - For Win32 and CIM class.

This code is a basic sample.

*/

procedure main

local oLocator
local Item
local Items
local Propertie
local Method
local oWMI
local i
local n
local tr
local classe


// Class name.

//classe = "CIM_DesktopMonitor"
//classe = "CIM_DMA"
//classe = "CIM_Memory"
//classe = "CIM_MemoryCapacity"
//classe = "CIM_MemoryCheck"
//classe = "CIM_MemoryMappedIO"
//classe = "CIM_MemoryOnCard"
//classe = "CIM_NonVolatileStorage"
//classe = "CIM_OSVersionCheck"
//classe = "CIM_PhysicalMedia"
//classe = "CIM_PhysicalMemory"
//classe = "CIM_Thread"
//classe = "CIM_USBDevice"


//classe = "Win32_BIOS"
//classe = "Win32_CIMLogicalDeviceCIMDataFile"
//classe = "Win32_DMAChannel"
//classe = "Win32_NetworkClient"
//classe = "Win32_NetworkConnection"
//classe = "Win32_NetworkLoginProfile"
//classe = "Win32_NetworkProtocol"
//classe = "Win32_OperatingSystem"

classe = "Win32_PerfFormattedData_TCPIP_NetworkInterface"
//classe = "Win32_Printer"
//classe = "Win32_Process"
//classe = "Win32_Processor"
//classe = "Win32_Service"

ferase( "_Result.txt" )
set alte to _Result.txt
set alte on
? "Harbour version :", Version()
?
? "Infos for class : " + classe
?
oLocator  = CreateObject( "WbemScripting.SWbemLocator" )
oWMI      = oLocator:ConnectServer( ".", "root\cimv2" )
Items     = oWMI:ExecQuery( 'Select * from ' + classe )
? "Items count : " + ltrim( str( Items:count, 9, 0 ) )
?
if Items:count < 1
   ? "No item for class : " + classe
else
   i := 0
   for each Item in Items
      i ++
      ? replicate( "-", 99 ) + " " + ltrim( str( i, 9, 0 ) )
      n := 1
      for each Propertie in Item:Properties_
         if len( Propertie:Name ) > n
            n := len( Propertie:Name )
         endif
      endfor
      for each Propertie in Item:Properties_
         ? ValType( Propertie:Value ), Propertie:Name, replicate( ".", n - len( Propertie:Name ) ), ""
         do case
         case ValType( Propertie:Value ) == "A"
            ?? "Rows :", ltrim( str( len( Propertie:Value ), 9, 0 ) )
            for tr := 1 to len( Propertie:Value )
               ? space( n + 3 ), Propertie:Value[ tr ]
            endfor
         otherwise
            ??  Propertie:Value
         endcase
      endfor
      ? "  Methods :", ltrim( str( Item:Methods_:Count, 9, 0 ) )
      for each Method in Item:Methods_
         ? " ", Method:Name + "()"
      endfor
   endfor
endif
?
Item      := nil
Propertie := nil
Method    := nil
oLocator  := nil
Items     := nil
oWMI      := nil
set alte off
set alte to
Wapi_ShellExecute( NIL, "open", "_Result.txt" )
return