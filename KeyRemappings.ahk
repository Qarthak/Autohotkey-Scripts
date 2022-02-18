#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force 		;Forces only 1 instance

;Hot Strings
;Todo: Figure out how it works
:o*:e25::f20190125@goa.bits-pilani.ac.in
:o*:i25::2019A7PS0125G
:o*:f25::f20190125
:o*:m25::8871719401
:oC:S C::Sarthak Chaudhary


;Remappings: ! is alt and + is shift and ^ is Ctrl

!e::Edit	;Edits the script (in notepad by default)
;Changing to something like VSCode requires changes in the registry editor


!r::Reload	;Reloads the script so it reflects the new changes

^!x::
	Suspend	;Put the script in suspended state. Press again to unsuspend
Return



Alt::
	Send, {CtrlDown}{RButton}{CtrlUp}
Return
	
Ctrl::
	Send, {SC15D}	
	;SC15D refers to the context menu key
	;The menu key opens a context menu for your current application. It’s basically like right-clicking on your selection in the application
Return


; Up,Down,Left,Right refers to the arrow key

^Up::
	Send, {Home}
Return

^+Up::
	Send, {ShiftDown}}{Home}{ShiftUp}
Return

^Down::
	Send, {End}
Return
^+Down::
	Send, {ShiftDown}{+End}{ShiftUp}
Return



!c::
	Send, ^c
Return

!v::
	Send, ^v
Return

!a::
	Send, ^a
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
