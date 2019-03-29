;WINDOWS-C switches to or opens Notepad and pastes from Clipboard 
#c:: 

Send {CTRLDOWN}c{CTRLUP} 

IfWinExist Untitled - Notepad 

WinActivate 

else
 
Run Notepad 
sleep, 300 

Send {CTRLDOWN}v{CTRLUP}{ENTER} 

return
;********************************************