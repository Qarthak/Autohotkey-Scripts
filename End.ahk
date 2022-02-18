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


!e::Edit

!r::Reload

^!x::
	Suspend
Return



Alt::
	Send, {CtrlDown}{RButton}{CtrlUp}
Return
	
Ctrl::
	Send, {SC15D}
Return


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