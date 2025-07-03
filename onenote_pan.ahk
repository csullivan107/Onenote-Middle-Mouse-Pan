#Requires AutoHotkey v2.0

#HotIf WinActive("ahk_exe ONENOTE.EXE")

*MButton::{
    Send("!dy")   
    Send("{LButton Down}")
}

*MButton Up::{
    WinActivate("ahk_class Shell_TrayWnd")  ;activate the taskbar to steal focus from OneNote
    Send("{LButton Up}")
    WinActivate("ahk_exe ONENOTE.EXE")
    Send("!h")
    Send("{Esc 2}")
}

#HotIf