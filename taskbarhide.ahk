#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

If FileExist(iniFile:=A_ScriptDir "\" SubStr(A_ScriptName,1,-4) ".ini")
  FileRead,Delay,%iniFile%
else Delay:=800
SetBatchLines,-1
SetWinDelay,-1
CoordMode,Mouse,Screen  
DetectHiddenWindows,On
WinGetPos,x,y,w,h,ahk_class Shell_TrayWnd
DetectHiddenWindows,Off
pos:=x>0?3:y>0?4:w>h?2:1 ; left, top, right, bottom = 1, 2, 3, 4

WinHide,ahk_class Button
WinHide,ahk_class Shell_TrayWnd
Menu,Tray,NoStandard
Menu,Tray,Add,&Exit,OnExit
Menu,Tray,Add,&SetDelay,SetDelay
OnExit, OnExit
Loop {
  Sleep % Delay/2
  If WinExist("ahk_class DV2ControlHost") && !WinExist("ahk_class Shell_TrayWnd"){
    WinShow,ahk_class Button
    WinShow,ahk_class Shell_TrayWnd
    WinHide,ahk_class DV2ControlHost
    WinShow,ahk_class DV2ControlHost
  WinSet,Redraw,,ahk_class Shell_TrayWnd
  }
  MouseGetPos,x,y,win
  WinGetClass,class,ahk_id %win%
  If (GetKeyState("LButton","P") || win=ShellID || win=ButtonID || class="#32768" || WinExist("ahk_class TaskListThumbnailWnd") || WinExist("ahk_class NotifyIconOverflowWindow")){
    DetectHiddenWindows,On
    WinGetPos,x,y,w,h,ahk_class Shell_TrayWnd
    DetectHiddenWindows,Off
    pos:=x>0?3:y>0?4:w>h?2:1 ; left, top, right, bottom = 1, 2, 3, 4
    continue
  }
  If WinExist("ahk_Class ahk_class DV2ControlHost") || (pos=1 && (x>-2 && x<2)) || (pos=2 && (y>-2 && y<2)) || (pos=3 && (x>A_ScreenWidth-2 && x<A_ScreenWidth+2)) || (pos=4 && (y>A_ScreenHeight-2 && y<A_ScreenHeight+2))
    SetTimer,ShowTray,% -1*(Delay/4)
  else if WinExist("ahk_class Shell_TrayWnd") {
    SetTimer,ShowTray,Off
    WinHide,ahk_class Shell_TrayWnd
    WinHide,ahk_class Button
  }
}
SetDelay:
InputBox,NewDelay,Set new delay,Please enter new delay time in milliseconds (minimum 100).,,200,150,,,,,%Delay%
If (NewDelay=Delay || NewDelay="")
  return
Delay:=NewDelay<100?100:NewDelay
FileDelete,% iniFile
FileAppend,%Delay%,% iniFile
Return
OnExit:
WinShow,ahk_class Shell_TrayWnd
WinShow,ahk_class Button
WinSet,Redraw,,ahk_class Shell_TrayWnd
ExitApp

ShowTray:
  DetectHiddenWindows,On
  WinShow,ahk_class Shell_TrayWnd
  WinShow,ahk_class Button
  WinSet,Redraw,,ahk_class Shell_TrayWnd
  DetectHiddenWindows,Off
  WinGet,ShellID,ID,ahk_class Shell_TrayWnd
  WinGet,ButtonID,ID,ahk_class Button
Return