; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

!`::
DetectHiddenWindows, on
IfWinExist Console2
{
	IfWinActive Console2
	{
		WinActivate ahk_class Shell_TrayWnd
		WinHide Console2
	}
	else
	{
		WinShow Console2
		WinActivate Console2
	}
}
else
{
		Run C:\Program Files\Console2\Console.exe
		DetectHiddenWindows, off
}
return

!esc::
IfWinActive Console2
{
	WinKill Console2
}
return 

!^f::
IfWinExist Mozilla Firefox
	WinActivate MozillaUIWindowClass
else
	Run firefox
return

!^d::
IfWinExist Notepad++
	WinActivate Notepad++
else
	Run notepad++.exe
return


!^l::
WinGet, mm, MinMax, A
WinRestore, A
WinGetPos, X, Y,,,A
WinMove, A,, X+A_ScreenWidth, Y
if(mm = 1){
    WinMaximize, A
}
return


!^h::
WinGet, mm, MinMax, A
WinRestore, A
WinGetPos, X, Y,,,A
WinMove, A,, X-A_ScreenWidth, Y
if(mm = 1){
    WinMaximize, A
}
return

!^k::
WinGet, mm, MinMax, A
WinMaximize, A

return

!^;::
WinGet, mm, MinMax, A
WinMinimize, A

return

!^j::
WinGet, mm, MinMax, A
WinRestore, A

return


!^c::
WinGet, mm, MinMax, A
WinClose, A

return


;----------------------------------
; Navigation in Text
;----------------------------------
!j::Send ^{Down}
!k::Send ^{Up}



; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.

