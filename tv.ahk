 #Persistent                 ; This keeps the script running permanently.
 #NoTrayIcon                 ; Disables the tray icon. Must quit from task manager.
 #SingleInstance             ; Only allows one instance of the script to run.

 IfWinExist, Sponsored Session
        WinClose        ; When this script detects the TeamViewer "Thanks for playing fair!" pop up it closes it.