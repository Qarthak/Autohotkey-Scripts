#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance, Force 		;Forces only 1 instance

; msgbox % "my ahk version: " A_AhkVersion

;;;;;;; Main Function (Sort of) ;;;;;;;

LeftButtonToggle:=0

globalToggle:=0

toggle1:=0
toggle2:=0
toggle3:=0

winNamee:="Stuff"
lastHidden:=""
somethingIsHidden:=0

;;;;;; Functions starts here ;;;;;;;

!#x::
	MouseGetPos,,, WinUMID
	WinSet, Style, -0xC00000, ahk_id %WinUMID%
Return

; #!x::
; 	WinGetTitle, currentWindow, A
; 	IfWinExist %currentWindow%
; 	WinSet, Style, -0xC40000,
; 	; WinMove, , , 0, 0, A_ScreenWidth, A_ScreenHeight
; 	DllCall("SetMenu", "Ptr", WinExist(), "Ptr", 0)
; Return

; !+#r::GoSub, AdjustAllWindows
; 	; Initalise the hook
; ; 	GoSub, HookWindow
; ; 	; Run it once for every window
; ; 	GoSub, AdjustAllWindows
; ; Return

; HookWindow:
; 	; New Window Hook
; 	Gui +LastFound
; 	hWnd := WinExist()
; 	DllCall( "RegisterShellHookWindow", UInt,hWnd )
; 	MsgNum := DllCall( "RegisterWindowMessage", Str,"SHELLHOOK" )
; 	OnMessage( MsgNum, "ShellMessage" )
; 	ShellMessage(wParam,lParam) {
; 	If (wParam = 1) ; HSHELL_WINDOWCREATED := 1
; 	{
; 		Sleep, 10
; 		AdjustWindow(lParam)
; 	}
; 	}
; Return

; ; Adjust Window
; AdjustWindow(id)
; {
; 	WinId := id
; 	WinTitle := id = "A" ? "A" : "ahk_id " . id
; 	; Uncomment this and comment the above if you don't want it to work on every window
; 	WinSet, Style, -0xC00000, %WinTitle%
; }

; AdjustAllWindows:
; 	WinGet, id, list,,, Program Manager
; 	; WinGet, winid ,, A ; <-- need to identify window A = acitive

; 	Loop, %id%
; 	{
; 		AdjustWindow(id%A_Index%)
; 	}
; Return

/* 11
	line fafadsfa111
	line fafadsfa111
	111
	line 1111
	line 2
	
*/

+!2::
	Click, Left
Return

+!1::
	; WinGetPos, X, Y, W, H, A
	MouseGetPos, X, Y, W
	CoordMode, Mouse
	; MouseMove, X-10,Y-80,0
	Send, {MOUSELEFTDOWN}{MOUSELEFTUP}
	; Click, Left
	; MouseMove, X-10,Y+130,0
	; Click Right
	; MouseMove, X-10, Y-130, 0

	; Send {CtrlDown}{RButton}{CtrlUp}
	; MouseClick, right
	; while !(A_Cursor ~= "SizeN...") && A_Index < 15
	; 	MouseMove, InStr(pos, "left") ? 1 : -1, InStr(pos, "top") ? 1 : -1, 0, R
	; if (A_Cursor ~= "SizeN...")
	; 	Click, Down
Return

!^/::
	Run, D:\
Return

^!2::
	tempVar:=regexReplace(regexReplace( clipboard, "\r\n", "`n"),"\t","")
	Loop, parse, tempVar
	{
		Loop, parse, A_LoopField
		{
			if GetKeyState("x", "P")
				break
			SendRaw %A_LoopField%
			Sleep 50
		}
	}
Return

;Hot Strings
;Todo: Figure out how it works
:o*:e25::f20190125@goa.bits-pilani.ac.in
:o*:i25::2019A7PS0125G
:o*:f25::f20190125
:o*:m25::8871719401
:oC:S C::Sarthak Chaudhary

^Pause::
	Send, {ShiftDown}{Home}{ShiftUp}
	Send, {BackSpace}
return

^+BackSpace::
	Send, {ShiftDown}{End}{ShiftUp}
	Send, {BackSpace}
return

; !2::
; 	SetKeyDelay, 100
; 	clipTempp=Clipboard
; 	SendRaw % regexReplace(regexReplace( clipboard, "\r\n", "`n"),"\t","")
; Return

;Transparency toggle, Scroll Lock
!1::
	WinGetActiveTitle, winNamee
	if toggle1=1
	{
		WinSet, Transparent, OFF, A
		globalToggle=0
		; MsgBox, "Here"
		toggle1=0
	}
	else if (globalToggle==1){
		if(toggle1=0){
			WinSet, Transparent, 20, A
			; MsgBox, "Here2"
			globalToggle=1
			toggle1=1
		}
	}
	else
	{

		WinSet, Transparent, 20, A
		; MsgBox, "Here3"
		globalToggle=1
		toggle1=1
	}
return

!2::
	WinGetActiveTitle, winNamee
	if toggle2=1
	{
		WinSet, Transparent, OFF, A
		globalToggle=0
		; MsgBox, "Here"
		toggle2=0
	}
	else if (globalToggle==1){
		if(toggle2=0){
			WinSet, Transparent, 40, A
			; MsgBox, "Here2"
			globalToggle=1
			toggle2=1
		}
	}
	else
	{
		WinSet, Transparent, 40, A
		; MsgBox, "Here3"
		globalToggle=1
		toggle2=1
	}
return

!3::
	WinGetActiveTitle, winNamee
	if toggle3=1
	{
		WinSet, Transparent, OFF, A
		globalToggle=0
		; MsgBox, "Here"
		toggle3=0
	}
	else if (globalToggle==1){
		if(toggle3=0){
			WinSet, Transparent, 70, A
			; MsgBox, "Here2"
			globalToggle=1
			toggle3=1 
		}
	}
	else
	{
		WinSet, Transparent, 70, A
		; MsgBox, "Here3"
		globalToggle=1
		toggle3=1
	}
return

!4::
	WinGetActiveTitle, winNamee
return

; ^!+d::
;     clipboard := "I want"
;     ; ClipWait, 1
;     ; sendAtRandom(%Clipboard%)
;     ; Or
;     Variable1 := %Clipboard%
;     sendAtRandom(Variable1)
; return

;Stolen stuff from the internet
#IfWinActive, ahk_class ConsoleWindowClass
	!F4::WinClose, A
#IfWinActive

#IfWinActive, ahk_class ConsoleWindowClass
	!w::WinClose, A
#IfWinActive

#IfWinActive, ahk_class ConsoleWindowClass
	^w::WinClose, A
#IfWinActive

;Remappings: ! is alt and + is shift and ^ is Ctrl # is windows

#v::
	Run, wsl code /mnt/d
Return

#!v::
	Run, subl D:\
Return

#t::
	Run, wsl
Return

#c::
	Run, "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default"
Return

!t::
	WinSet, AlwaysOnTop, Toggle, A
Return

;Edits the script (in notepad by default)
;Changing to something else like VSCode requires changes in the registry editor
!e::Edit

;Reloads the script so it reflects the new changes
!r::Reload


^!x::
	Suspend 	;Put the script in suspended state. Press again to unsuspend
Return

Alt::
	; if (somethingIsHidden=0){
	; 	WinHide,%winNamee%
	; 	lastHidden=%winNamee%
	; 	somethingIsHidden=1
	; }
	; else{

	; }
	Send, {CtrlDown}{RButton}{CtrlUp}
Return

!CapsLock::
	if LeftButtonToggle=0
	{
		Send, {RButton Down}
		LeftButtonToggle=1
	}
	else
	{
		Send, {RButton Up}
		LeftButtonToggle=0
	}
Return

; 	; WinShow, %lastHidden%
; 	; lastHidden= %winNamee%
; 	; winNamee=%lastHidden%
; 	; somethingIsHidden=0
; 	; Send, {SC15D}	
; 	;SC15D refers to the context menu key
; 	;The menu key opens a context menu for your current application. It’s basically like right-clicking on your selection in the application

; Shift::
; 	WinClose, %winNamee%
; 	WinClose, %lastHidden%
; Return

;Up,Down,Left,Right refers to the arrow key

^Up::
	Send, {Home}
Return

^+Up::
	Send, {ShiftDown}{Home}{ShiftUp}
Return

^Down::
	Send, {End}
Return

^+Down::
	Send, {ShiftDown}{End}{ShiftUp}
Return

;Alt stuff to Ctrl stuff

!c::
	Send, ^c
Return

!v::
	Send, ^v
Return

!+v::
	Send, ^+v
Return

!x::
	Send, ^x
Return

!a::
	Send, ^a
Return

!f::
	Send, ^f
Return

!z::
	Send, ^z
Return

!+z::
	Send, ^y
Return

^!k::
	Send, ^w
Return

^!+k::
	Send, ^+w
Return

^!.::
	; MsgBox, "fsdafds"
	Send, {CtrlDown}{Tab}{CtrlUp}
Return

^!,::
	Send, {CtrlDown}{ShiftDown}{Tab}{ShiftUp}{CtrlUp}
Return

!w::
	Send, ^w
Return

!+f::
	SendInput, {F11}
Return

!^Enter::
	WinMaximize, A
Return
