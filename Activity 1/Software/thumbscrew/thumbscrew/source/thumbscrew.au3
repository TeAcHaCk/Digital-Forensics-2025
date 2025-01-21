#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Version=beta
#AutoIt3Wrapper_icon=usbenabled.ico
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Icon_Add=usbdisabled.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs
Source code by Adrian Crenshaw, consider it GPLed
#ce
#Include <Constants.au3>
Opt("TrayAutoPause",0)	; Script will not be paused when clicking the tray icon.
Opt("TrayMenuMode", 1)
FileInstall ( "usbdisabled.ico", "usbdisabled.ico")
$x= RegRead("HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\StorageDevicePolicies","WriteProtect")
$exitmenu= TrayCreateItem("Exit")
$aboutmenu = TrayCreateItem("About")
TrayCreateItem("")
TrayCreateItem("")
TrayCreateItem("")
TrayCreateItem("")
TrayCreateItem("")
TrayCreateItem("")
TrayCreateItem("")
$togglereadonlyusb	= TrayCreateItem("Init it")
;MsgBox(0,"", "a" & $x & "b")
if $x="1" Then
	TrayItemSetText ($togglereadonlyusb, "Make USB Writeable")
	;TraySetIcon(@AutoItExe, 3)
	TraySetIcon("usbdisabled.ico")
else
	TrayItemSetText ($togglereadonlyusb, "Make USB Read Only")
	TraySetIcon(@AutoItExe, 0)
endIf

TraySetState()
TrayItemSetText($TRAY_ITEM_EXIT,"Exit Program")
$y=0
While 1
	$msg = TrayGetMsg()
	Select
		Case $msg = 0
			ContinueLoop
		Case $msg = $togglereadonlyusb
			$x= RegRead("HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\StorageDevicePolicies","WriteProtect")
			if $x="1" Then				
				RegWrite("HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\StorageDevicePolicies", "WriteProtect", "REG_DWORD", 0) 
				TraySetIcon(@AutoItExe, 0)
				TrayItemSetText ($togglereadonlyusb, "Make USB Read Only")
			else				
				RegWrite("HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\StorageDevicePolicies", "WriteProtect", "REG_DWORD", 1) 
				;TraySetIcon(@AutoItExe, 3)
				TraySetIcon("usbdisabled.ico")				
				TrayItemSetText ($togglereadonlyusb, "Make USB Writeable")
			endif 
		case $msg=$aboutmenu
			run(@ComSpec & ' /c start http://irongeek.com/i.php?page=security/thumbscrew-software-usb-write-blocker','', @SW_HIDE)
		Case $msg = $exitmenu				
				Exit						
	EndSelect
WEnd

; $x= RegRead("HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\StorageDevicePolicies","WriteProtect")