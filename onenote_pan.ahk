#Requires AutoHotkey v2.0

#HotIf WinActive("ahk_exe ONENOTE.EXE")     ;   Check if onenote window is active

*MButton::{
    Send("!dy1")            ;   send alt+d+y+1 (hotkey sequence for pan tool)
    sleep(10)               ;   sleep briefly for stability
    Send("{LButton Down}")  ;   Left button down to activate pan tool and grab page
}

*MButton Up::{      ;When Middle Mouse released - return to normal operations
    WinActivate("ahk_class Shell_TrayWnd")  ; activate the taskbar to steal focus from OneNote
    Send("{LButton Up}")
    WinActivate("ahk_exe ONENOTE.EXE")      ;   reactive onenote window
    Send("!h")                              ;   return to Home ribbon
    Send("{Esc 2}")                         ;   hit excxape to return to standard elect/type tool
}

#HotIf