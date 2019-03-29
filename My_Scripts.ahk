;********************************************
;Combinations
:C*:scgi::order`:score type`:gif
:C*:scsw::order`:score type`:swf
:C*:scwe::order`:score type`:webm
:C*:fagi::order`:favcount type`:gif
:C*:fasw::order`:favcount type`:swf
:C*:fawe::order`:favcount type`:webm

;Individual pieces
:C*:orsc::order`:score
:C*:orfa::order`:favcount
:C*:tygi::type`:gif
:C*:tysw::type`:swf
:C*:tywe::type`:webm
;********************************************

; ==================================================
; ==================================================
; Alt+R reloads script
;
;  +=Shift #=Win !=Alt ^=Ctrl
;
; Debugging Controls At Bottom (Disabled by default)
; ==================================================
; ==================================================

;========================================
;==============Text Replace==============
;========================================
:C*:@@::cody.hattesohl@gmail.com
:C*:c@::catiesthrowaway@gmail.com
:C*:CT!::Catie1776!
:C*:F!::F0ss1ls!
:C*:f!::f0ss1ls!
:C*:fff::f0ss1ls
:C*:siter::site`:reddit.com/r/
:C*:sitealt::site`:alternativeto.net
:C*:redr::reddit.com/r/
!a::WinMinimizeAll
!m::WinMinimize, A
:*:dated::
{FormatTime, CurrentDateTime,, d MMMM yyy
SendInput %CurrentDateTime%
return 
}
;********************************************


;========================================
;==================Master List===========
;========================================
;1A - Alt+R reloads script
;1B - Win+C Closes current window
;1C - Ctrl+U = Permanently delete file w/ auto-confirm
;1D - Ctrl+E = Permanently delete file w/ auto-confirm
;1E - Ctrl+Space = Alt+F4
;1G - middle mouse, backtick - up a folder in explorer
;1H - Win+click = double click
;1I - Win+V = Paste without formatting/text-only
;1J - CTRL+F12 = Set resolution to 1366x768
;1K - ALT+F12 = Set resolution to 1920x1080
;1L - Right Alt = Windows
;1M - Right Alt + # = Function #
;*************************************************



;============================================
;=1A=========================================
;============================================
;********************************************
!r::Reload ; Alt+R reloads script
;********************************************




;============================================
;=1B=========================================
;============================================
;********************************************
#c::WinClose, A ; Win+C Closes current window
;********************************************




;============================================
;=1C=========================================
;============================================
;********************************************
;Ctrl+U or Ctrl+E = Permanently delete file w/ auto-confirm
^u::SendInput +{Delete} Sleep 100 Send {Enter} Return
^e::SendInput +{Delete} Sleep 100 Send {Enter} Return
;********************************************





;============================================
;=1D=========================================
;============================================
;********************************************
;Ctrl+E = Permanently delete file w/ auto-confirm

;********************************************






;============================================
;=1E=========================================
;============================================
;********************************************
;Ctrl+Space = Alt+F4
^Space::send !{f4} return
;********************************************





;============================================
;=1G=========================================
;============================================
;********************************************
; middle mouse button or tilde up a folder 
#IfWinActive, ahk_class CabinetWClass
~MButton::Send !{Up}
`::Send !{Up}
#IfWinActive
;********************************************






;============================================
;=1H=========================================
;============================================
;********************************************
#IfWinActive
;Win+click = double click
!Lbutton:: sendplay {click 2}
;********************************************




;============================================
;=1I=========================================
;============================================
;********************************************
;Win+V = Paste without formatting/text-only
#v::                             ; Text–only paste from ClipBoard
   Clip0 = %ClipBoardAll%
   ClipBoard = %ClipBoard%       ; Convert to text <
   Send ^v                       ; For best compatibility: SendPlay
   Sleep 50                      ; Don't change clipboard while it is pasted! (Sleep > 0)
   ClipBoard = %Clip0%           ; Restore original ClipBoard
   VarSetCapacity(Clip0, 0)      ; Free memory
Return
;********************************************




;============================================
;=1J=========================================
;============================================
;********************************************
;Alt+Shift+F12 = Set resolution to 1366x768
!+r:: ChangeResolution(1366, 768) Return
;********************************************



;============================================
;=1K=========================================
;============================================
;********************************************
;Ctrl+Shift+F12 = Set resolution to 1920x1080
^+r:: ChangeResolution(1920, 1080) Return
;********************************************



;********************************************
;BEGIN-FUNCTION FOR 1J+1K
ChangeResolution(Screen_Width := 1920, Screen_Height := 1080, Color_Depth := 32)
{
	VarSetCapacity(Device_Mode,156,0)
	NumPut(156,Device_Mode,36) 
	DllCall( "EnumDisplaySettingsA", UInt,0, UInt,-1, UInt,&Device_Mode )
	NumPut(0x5c0000,Device_Mode,40) 
	NumPut(Color_Depth,Device_Mode,104)
	NumPut(Screen_Width,Device_Mode,108)
	NumPut(Screen_Height,Device_Mode,112)
	Return DllCall( "ChangeDisplaySettingsA", UInt,&Device_Mode, UInt,0 )
}
;End-FUNCTION FOR 1J+1K
;********************************************



;============================================
;=1L=========================================
;============================================
;********************************************
;Right Ctrl = Windows Key
;

;********************************************


;============================================
;=1M=========================================
;============================================
;********************************************
;Right Alt + # = Function #
;RAlt+0=F10
;RAlt+-=F11
;RAlt+==F12


;********************************************


;============================================
;==========================================
;============================================
;********************************************
; Right Click + Scroll = Forward/Back
;RButton::click right
;RButton & WheelDown::Send {Browser_Back}
;RButton & WheelUp::Send {Browser_Forward}
;********************************************



;============================================
;==========================================
;============================================
;********************************************
!MButton::AltTabMenu
;********************************************




;============================================
;==========================================
;============================================
;********************************************
;Alt+Space = Toggle always on top
!SPACE::  Winset, Alwaysontop, , A
;********************************************




;============================================
;==========================================
;============================================
;********************************************
;
!WheelUp::
Send {Volume_Up}{Volume_Up}{Volume_Up}
SoundPlay *-1
return

!WheelDown::
Send {Volume_Down}{Volume_Down}{Volume_Down}
SoundPlay *-1
return

^MButton::
Send {Volume_Mute}
SoundPlay *-1
return
;********************************************



;============================================
;==========================================
;============================================
;********************************************
;
;********************************************



; ==============================
; ==============================
; +=Shift #=Win !=Alt ^=Ctrl
; Alt+R reloads script
; ==============================
; ==============================

;============================================
;====Debugging controls======================
;============================================
;any modifer+Q makes Windows key go up
#^q::SendInput { {RWin up}+{LWin Up}+{LAlt Up}+{RAlt Up}+{RCtrl Up}+{LCtrl Up} }
^q::SendInput { {RWin up}+{LWin Up}+{LAlt Up}+{RAlt Up}+{RCtrl Up}+{LCtrl Up} }
#!q::SendInput { {RWin up}+{LWin Up}+{LAlt Up}+{RAlt Up}+{RCtrl Up}+{LCtrl Up} }
!q::SendInput { {RWin up}+{LWin Up}+{LAlt Up}+{RAlt Up}+{RCtrl Up}+{LCtrl Up} }
#+q::SendInput { {RWin up}+{LWin Up}+{LAlt Up}+{RAlt Up}+{RCtrl Up}+{LCtrl Up} }
#q::SendInput { {RWin up}+{LWin Up}+{LAlt Up}+{RAlt Up}+{RCtrl Up}+{LCtrl Up} }
;********************************************

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenWindows, On