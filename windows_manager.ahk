;=-=-=-=-=-=-=-=-=-
; Per-App Configs
;=-=-=-=-=-=-=-=-=-

programRules := [   { class: "MozillaWindowClass"
                        , sizebox: 0 }
                ,   { class: "{E7076D1C-A7BF-4f39-B771-BCBE88F2A2A8}"
                        , all: 0
                        , redraw: 1 }
                ,   { class: "CabinetWClass"
                        , caption: 0
                        , border: 0 }
                ,   { class: "TabbedHostWndClass"
                        , caption: 0
                        , border: 0 }
                ,   { class: "MSBLWindowClass"
                        , caption: 0    
                        , border: 0 }
                ,   { class: "µTorrent4823DF041B09"
                        , caption: 0
                        , border: 0 }
                ,   { class: "PX_WINDOW_CLASS"
                        , caption: 0
                        , border: 0 }
                ,   { class: "classFoxitReader"
                        , caption: 0
                        , border: 0 }
                ,   { class: "mintty"
                        , caption: 0
                        , border: 0 }
                ,   { class: "metapad"
                        , caption: 0
                        , border: 0 }
                ,   { class: "Chrome_WidgetWin_1"
                        , caption: 1
                        , border: 1 }
                ,   { class: "SunAwtFrame"
                        , caption: 0
                        , border: 0 } ]

;=-=-=-=-=-=-=-=-=-=-=-=-
; Variables & Autostarts
;=-=-=-=-=-=-=-=-=-=-=-=-

monWidth = 1366
monHeight = 768
windowGap = 5
AdjustOnRedraw := 0
toggle := 1

WinHide ahk_class Shell_TrayWnd
WinHide Start ahk_class Button
adjustAllWindows()
GoSub, HookWindow
Sleep,10000
adjustAllWindows()
Return

;=-=-=-=-=-=-=-=-=-=-
; Main Program Loops
;=-=-=-=-=-=-=-=-=-=-

adjustWindow(_id)
{
    global programRules
    id := _id = "A" ? "A" : "ahk_id " . _id

    for _, program in programRules
    {
        if program.class
        {
            WinGetClass, class, % id
            if (class <> program.class)
            {
                continue
            }
        }
        if program.process
        {
            WinGet, process, ProcessName, % id
            if (process <> program.process)
            {
                continue
            }
        }
        if program.title
        {
            WinGetTitle, title, % id
            if (title <> program.title)
            {
                continue
            }
        }

        for rule, value in program
        {
            if (rule = "class" or rule = "process" or rule = "title")
                continue
            else if (rule = "border")
            {
                WinSet, Style, % (value = 0 ? "-" : value = 1 ? "+" : "^") . 0x800000, % id
            }
            else if (rule = "sizebox")
                WinSet, Style, % (value = 0 ? "-" : value = 1 ? "+" : "^") . 0x40000, % id
            else if (rule = "caption")
                WinSet, Style, % (value = 0 ? "-" : value = 1 ? "+" : "^") . 0x80000, % id
            else if (rule = "all")
                WinSet, Style, % (value = 0 ? "-" : value = 1 ? "+" : "^") . 0xCF0000, % id
            else if (rule = "always_on_top")
                WinSet, AlwaysOnTop, % (value = 0 ? "OFF" : value = 1 ? "ON" : "TOGGLE"), % id
            else if (rule = "top")
                WinSet, Top,, % id
            else if (rule = "bottom")
                WinSet, Top,, % id
            else if (rule = "alt_tab")
                WinSet, ExStyle, % (value = 0 ? "-" : value = 1 ? "+" : "^") . 0x80, % id
            else if (rule = "transparent")
                WinSet, Transparent, % value, % id
            else if (rule = "transcolor")
                WinSet, TransColor, % value, % id
            else if (rule = "alt_tab")
                WinSet, ExStyle, % (value = 0 ? "-" : value = 1 ? "+" : "^") . 0x80, % id
            else if (rule = "alt_tab")
                WinSet, ExStyle, % (value = 0 ? "-" : value = 1 ? "+" : "^") . 0x80, % id
            else if (rule = "close")
                WinClose, % id
            else if (rule = "redraw")
            {
                WinGetPos, X, Y, W, H, % id
                WinMove, % id,, % X, % Y, % W, % H + 1
                WinMove, % id,, % X, % Y, % W, % H
            }
            else if (rule = "x")
            {
                WinGetPos, X, Y, W, H, % id
                WinMove, % id,, % value, % Y, % W, % H
            }
            else if (rule = "y")
            {
                WinGetPos, X, Y, W, H, % id
                WinMove, % id,, % X, % value, % W, % H
            }
            else if (rule = "w")
            {
                WinGetPos, X, Y, W, H, % id
                WinMove, % id,, % X, % Y, % value, % H
            }
            else if (rule = "h")
            {
                WinGetPos, X, Y, W, H, % id
                WinMove, % id,, % X, % Y, % W, % value
            }
            else if (rule = "rx")
            {
                WinGetPos, X, Y, W, H, % id
                WinMove, % id,, % X + value, % Y, % W, % H
            }
            else if (rule = "ry")
            {
                WinGetPos, X, Y, W, H, % id
                WinMove, % id,, % X, % Y + value, % W, % H
            }
            else if (rule = "rw")
            {
                WinGetPos, X, Y, W, H, % id
                WinMove, % id,, % X, % Y, % W + value, % H
            }
            else if (rule = "rh")
            {
                WinGetPos, X, Y, W, H, % id
                WinMove, % id,, % X, % Y, % W, % H + value
            }
            else
                OutputDebug, "Invalid rule: " . rule
        }
    }
}

adjustAllWindows()
{
    WinGet, id, list,,, Program Manager
    Loop, %id%
    {
        AdjustWindow(id%A_Index%)
    }
}

HookWindow:
    ; New Window Hook
    Gui +LastFound
    hWnd := WinExist()

    DllCall( "RegisterShellHookWindow", UInt,hWnd )
    MsgNum := DllCall( "RegisterWindowMessage", Str,"SHELLHOOK" )
    OnMessage( MsgNum, "ShellMessage" )

    ShellMessage(wParam,lParam) {
        Global AdjustOnRedraw
        Sleep, 10
        If (AdjustOnRedraw)
        {
            If wParam in 1,6
                adjustWindow(lParam)
        }
        Else
            If (wParam = 1)
                adjustWindow(lParam)
    }
Return

;=-=-=-=-=-=-
; Keybinds
;=-=-=-=-=-=-

;+=Shift #=Win !=Alt ^=Ctrl
;------- tiling functions ---------

!w::
  WinMove,A,,windowGap,windowGap, monWidth-(2*windowGap), (monHeight/2)-(1.5*windowGap)
return

!x::
	WinMove,A,,windowGap,(monHeight/2)+windowGap, monWidth-(2*windowGap), (monHeight/2)-(1.5*windowGap)
return

!s::
	WinMove,A,,windowGap,windowGap, monWidth-(2*windowGap), monHeight-(2*windowGap)
return

!a::
	WinMove,A,,windowGap,windowGap, (monWidth/2)-(1.5*windowGap), monHeight-(2*windowGap)
return

!d::
	WinMove,A,,(monWidth/2)+windowGap, windowGap, (monWidth/2)-(1.5*windowGap), monHeight-(2*windowGap)
return

;------ decoration functions ------
;+=Shift #=Win !=Alt ^=Ctrl

; Toggle Border Ctrl+Alt+b
^!b::
    WinSet, Style, ^0x800000, A
Return

; Toggle Sizing Border Ctrl+Alt+g
^!g::
    WinSet, Style, ^0x40000, A
Return

; Toggle Caption CTRL+SHIFT+T
^!t::
    WinSet, Style, -0x800000, A
    WinSet, Style, ^0xC00000, A
Return

; Adjust all windows Shift+Alt+R
+!r::
    adjustAllWindows()
Return

; Toggle Menubar CTRL+ALT+M
^!m::
    WinSet, Style, ^0xC00000, A
Return

;Toggle taskbar CTRL+ALT+SPACE
^!Space::
if toggle := !toggle
{
  WinHide ahk_class Shell_TrayWnd
  WinHide Start ahk_class Button
}
else
{
  WinShow ahk_class Shell_TrayWnd
  WinShow Start ahk_class Button
}
Return

;------------ shortkeys ------------

;WIN+Q
#q::
	Send !{F4}
return

;WIN+H
#h::
	WinMinimize,A
return