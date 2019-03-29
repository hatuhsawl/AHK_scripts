; middle mouse button - up a folder in explorer
#IfWinActive, ahk_class CabinetWClass
~MButton::Send !{Up} 
#IfWinActive