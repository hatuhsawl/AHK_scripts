#NoTrayIcon

:*:d8]::  ; This hotstring replaces "d8]" with the current date via the commands below.
FormatTime, CurrentDateTime,, yyMMdd ; It will look like 101215
SendInput %CurrentDateTime%
return

:*:date]::  ; This hotstring replaces "date]" with the current date in long format via the commands below.
FormatTime, CurrentDateTime,, dddd dd MMMM yyyy ; It will look like Saturday 15 August 2009 
SendInput %CurrentDateTime%
return

:*:today]::  ; This hotstring replaces "today]" with the current date in long format via the commands below.
FormatTime, CurrentDateTime,, dddd dd MMMM yyyy ; It will look like Saturday 15 August 2009 
SendInput today (%CurrentDateTime%)
return

:*:-1d8::  ; This hotstring replaces "-1d8" with yesterdays date via the commands below.
var1 =  
var1 += -1, days
FormatTime, var2, %var1% , yyMMdd  
SendInput %var2%
return

:*:-1date::  ; This hotstring replaces "-1date" with yesterdays date via the commands below.
var1 =  
var1 += -1, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy  
SendInput %var2%
return

:*:yesterday]::  ; This hotstring replaces "yesterday]" with yesterdays date via the commands below.
var1 =  
var1 += -1, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy  
SendInput yesterday (%var2%)
return

:*:-2d8::  ; This hotstring replaces "-2d8" with the date two days ago via the commands below.
var1 =  
var1 += -2, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-2date::  ; This hotstring replaces "-2date" with the date two days ago via the commands below.
var1 =  
var1 += -2, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy  
SendInput %var2%
return

:*:-3d8::  ; This hotstring replaces "-3d8" with the date three days ago via the commands below.
var1 =  
var1 += -3, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-3date::  ; This hotstring replaces "-3date" with the date three days ago via the commands below.
var1 =  
var1 += -3, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:-4d8::  ; This hotstring replaces "-4d8" with the date four days ago via the commands below.
var1 =  
var1 += -4, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-4date::  ; This hotstring replaces "-4date" with the date four days ago via the commands below.
var1 =  
var1 += -4, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:-5d8::  ; This hotstring replaces "-5d8" with the date five days ago via the commands below.
var1 =  
var1 += -5, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-5date::  ; This hotstring replaces "-5date" with the date five days ago via the commands below.
var1 =  
var1 += -5, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy  
SendInput %var2%
return

:*:-6d8::  ; This hotstring replaces "-6d8" with the date six days ago via the commands below.
var1 =  
var1 += -6, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-6date::  ; This hotstring replaces "-6date" with the date six days ago via the commands below.
var1 =  
var1 += -6, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy
SendInput %var2%
return

:*:-7d8::  ; This hotstring replaces "-7d8" with the date seven days ago via the commands below.
var1 =  
var1 += -7, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-7date::  ; This hotstring replaces "-7date" with the date seven days ago via the commands below.
var1 =  
var1 += -7, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:-1wk::  ; This hotstring replaces "-1wk" with the date in seven days via the commands below.
var1 =  
var1 += -7, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-1week::  ; This hotstring replaces "-1week" with the date in seven days via the commands below.
var1 =  
var1 += -7, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:-8d8::  ; This hotstring replaces "-8d8" with the date seven days ago via the commands below.
var1 =  
var1 += -8, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-8date::  ; This hotstring replaces "-8date" with the date seven days ago via the commands below.
var1 =  
var1 += -8, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:-9d8::  ; This hotstring replaces "-9d8" with the date seven days ago via the commands below.
var1 =  
var1 += -9, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-9date::  ; This hotstring replaces "-9date" with the date seven days ago via the commands below.
var1 =  
var1 += -9, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:-10d8::  ; This hotstring replaces "-10d8" with the date seven days ago via the commands below.
var1 =  
var1 += -10, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-10date::  ; This hotstring replaces "-10date" with the date seven days ago via the commands below.
var1 =  
var1 += -10, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:-11d8::  ; This hotstring replaces "-11d8" with the date seven days ago via the commands below.
var1 =  
var1 += -11, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-11date::  ; This hotstring replaces "-11date" with the date seven days ago via the commands below.
var1 =  
var1 += -11, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:-12d8::  ; This hotstring replaces "-12d8" with the date seven days ago via the commands below.
var1 =  
var1 += -12, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-12date::  ; This hotstring replaces "-12date" with the date seven days ago via the commands below.
var1 =  
var1 += -12, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:-13d8::  ; This hotstring replaces "-13d8" with the date seven days ago via the commands below.
var1 =  
var1 += -13, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-13date::  ; This hotstring replaces "-13date" with the date seven days ago via the commands below.
var1 =  
var1 += -13, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:-14d8::  ; This hotstring replaces "-14d8" with the date seven days ago via the commands below.
var1 =  
var1 += -14, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-14date::  ; This hotstring replaces "-14date" with the date seven days ago via the commands below.
var1 =  
var1 += -14, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:-2wk::  ; This hotstring replaces "-2wk" with the date in seven days via the commands below.
var1 =  
var1 += +14, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-2week::  ; This hotstring replaces "-2week" with the date in seven days via the commands below.
var1 =  
var1 += -14, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:-3wk::  ; This hotstring replaces "-3wk" with the date in seven days via the commands below.
var1 =  
var1 += -21, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-3week::  ; This hotstring replaces "-3week" with the date in seven days via the commands below.
var1 =  
var1 += -21, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:-4wk::  ; This hotstring replaces "-4wk" with the date in seven days via the commands below.
var1 =  
var1 += -28, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:-4week::  ; This hotstring replaces "-4week" with the date in seven days via the commands below.
var1 =  
var1 += -28, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:+1d8::  ; This hotstring replaces "+1d8" with tomorrows date via the commands below.
var1 =  
var1 += +1, days
FormatTime, var2, %var1% , yyMMdd  
SendInput %var2%
return

:*:tomoz]::  ; This hotstring replaces "[tomoz]" with tomorrows date via the commands below.
var1 =  
var1 += +1, days
FormatTime, var2, %var1% , yyMMdd  
SendInput %var2%
return

:*:+1date::  ; This hotstring replaces "+1date" with tomorrows date via the commands below.
var1 =  
var1 += +1, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy  
SendInput %var2%
return

:*:tomorrow]::  ; This hotstring replaces "[tomorrow]" with tomorrows date via the commands below.
var1 =  
var1 += +1, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy  
SendInput tomorrow (%var2%)
return

:*:+2d8::  ; This hotstring replaces "+2d8" with the date in two days via the commands below.
var1 =  
var1 += +2, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+2date::  ; This hotstring replaces "+2date" with the date in two days via the commands below.
var1 =  
var1 += +2, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy  
SendInput %var2%
return

:*:+3d8::  ; This hotstring replaces "+3d8" with the date in three days via the commands below.
var1 =  
var1 += +3, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+3date::  ; This hotstring replaces "+3date" with the date in three days via the commands below.
var1 =  
var1 += +3, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:+4d8::  ; This hotstring replaces "+4d8" with the date in four days via the commands below.
var1 =  
var1 += +4, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+4date::  ; This hotstring replaces "+4date" with the date in four days via the commands below.
var1 =  
var1 += +4, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:+5d8::  ; This hotstring replaces "+5d8" with the date in five days via the commands below.
var1 =  
var1 += +5, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+5date::  ; This hotstring replaces "+5date" with the date in five days via the commands below.
var1 =  
var1 += +5, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy  
SendInput %var2%
return

:*:+6d8::  ; This hotstring replaces "+6d8" with the date in six days via the commands below.
var1 =  
var1 += +6, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+6date::  ; This hotstring replaces "+6date" with the date in six days via the commands below.
var1 =  
var1 += +6, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy
SendInput %var2%
return

:*:+7d8::  ; This hotstring replaces "+7d8" with the date in seven days via the commands below.
var1 =  
var1 += +7, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+7date::  ; This hotstring replaces "+7date" with the date in seven days via the commands below.
var1 =  
var1 += +7, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:+1wk::  ; This hotstring replaces "+1wk" with the date in seven days via the commands below.
var1 =  
var1 += +7, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+1week::  ; This hotstring replaces "+1week" with the date in seven days via the commands below.
var1 =  
var1 += +7, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:+8d8::  ; This hotstring replaces "+8d8" with the date in seven days via the commands below.
var1 =  
var1 += +8, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+8date::  ; This hotstring replaces "+8date" with the date in seven days via the commands below.
var1 =  
var1 += +8, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:+9d8::  ; This hotstring replaces "+9d8" with the date in seven days via the commands below.
var1 =  
var1 += +9, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+9date::  ; This hotstring replaces "+9date" with the date in seven days via the commands below.
var1 =  
var1 += +9, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:+10d8::  ; This hotstring replaces "+10d8" with the date in seven days via the commands below.
var1 =  
var1 += +10, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+10date::  ; This hotstring replaces "+10date" with the date in seven days via the commands below.
var1 =  
var1 += +10, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:+11d8::  ; This hotstring replaces "+11d8" with the date in seven days via the commands below.
var1 =  
var1 += +11, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+11date::  ; This hotstring replaces "+11date" with the date in seven days via the commands below.
var1 =  
var1 += +11, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:+12d8::  ; This hotstring replaces "+12d8" with the date in seven days via the commands below.
var1 =  
var1 += +12, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+12date::  ; This hotstring replaces "+12date" with the date in seven days via the commands below.
var1 =  
var1 += +12, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:+13d8::  ; This hotstring replaces "+13d8" with the date in seven days via the commands below.
var1 =  
var1 += +13, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+13date::  ; This hotstring replaces "+13date" with the date in seven days via the commands below.
var1 =  
var1 += +13, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:+14d8::  ; This hotstring replaces "+14d8" with the date in seven days via the commands below.
var1 =  
var1 += +14, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+14date::  ; This hotstring replaces "+14date" with the date in seven days via the commands below.
var1 =  
var1 += +14, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:+2wk::  ; This hotstring replaces "+2wk" with the date in seven days via the commands below.
var1 =  
var1 += +14, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+2week::  ; This hotstring replaces "+7week" with the date in seven days via the commands below.
var1 =  
var1 += +14, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:+3wk::  ; This hotstring replaces "+3wk" with the date in seven days via the commands below.
var1 =  
var1 += +21, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+3week::  ; This hotstring replaces "+3week" with the date in seven days via the commands below.
var1 =  
var1 += +21, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:+4wk::  ; This hotstring replaces "+4wk" with the date in seven days via the commands below.
var1 =  
var1 += +28, days
FormatTime, var2, %var1% , yyMMdd
SendInput %var2%
return

:*:+4week::  ; This hotstring replaces "+4week" with the date in seven days via the commands below.
var1 =  
var1 += +28, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput %var2%
return

:*:next wed]::  ; This hotstring replaces "+4week" with the date in seven days via the commands below.
FormatTime, day, %CurrentDateTime% , Wday 
If day += 3 
{
var1 = 
var1 += +3, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput Next Wednesday (%var2%)
return
}

:*:next wednesday]::  ; This hotstring replaces "+4week" with the date in seven days via the commands below.
FormatTime, day, %CurrentDateTime% , Wday 
If day += 1 
{
var1 = 
var1 += day+3, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput Next Wednesday (%var2%)
return
}
Else If day += 2 
{
var1 = 
var1 += day+3, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput Next Wednesday (%var2%)
return
}
Else If day += 3 
{
var1 = 
var1 += day+1, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput Next Wednesday (%var2%)
return
}
Else If day += 4 
{
var1 = 
var1 += day+3, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput Next Wednesday (%var2%)
return
}
Else If day += 5 
{
var1 = 
var1 += day+1, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput Next Wednesday (%var2%)
return
}
Else If day += 6 
{
var1 = 
var1 += day-1, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput Next Wednesday (%var2%)
return
}
Else If day += 7 
{
var1 = 
var1 += day-2, days
FormatTime, var2, %var1% , dddd dd MMMM yyyy 
SendInput Next Wednesday (%var2%)
return
}

; TIME

:*:[0000::0000 (12:00am Midnight)

:*:[time::  ; 
FormatTime var2, gg
SendInput %var2%
return

; 0800 (8:00am)
^r::Reload  ; Assign Ctrl-R as a hotkey to restart the script

