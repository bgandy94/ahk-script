; Current Home Key: ((!))
GroupAdd,ExplorerGroup, ahk_class CabinetWClass
GroupAdd,ExplorerGroup, ahk_class ExploreWClass

; Key switches
CapsLock::ESC
ESC::CapsLock 

; Shortcuts
!w::WinClose, A
!d::
    ActiveOrLaunch("- Discord", "C:\Users\bgandy\AppData\Local\Discord\Update.exe --processStart Discord.exe")
    return
!q::
    WinGetActiveTitle, ActiveWindowTitle
    WinGet, ActiveWindowProcess, ProcessName, %ActiveWindowTitle% 
    if (ActiveWindowProcess = "explorer.exe") 
    {
        If (WinExist("ahk_group ExplorerGroup"))
        {
            WinClose, ahk_group ExplorerGroup
        }
    }
    else 
    {
        Run, cmd /k taskkill /IM %ActiveWindowProcess% /T /F,, Hide
    }
    return
!v::
    ActiveOrLaunch("- Visual Studio Code", "C:\Program Files\Microsoft VS Code\Code.exe")
    return
!i::
    ActiveOrLaunch(" - Google Chrome", "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe")
    return
!s::
    Input Key, L1
    if Key = f
    {
        run "steam://open/friends"
    }
    if Key = l
    {
        run "steam://open/games"
    }
    if Key = s
    {
        run "steam://store"
    }
    return
!m::
    Input Key, L1
    if Key = r
    {
        Shutdown, 2
    }
    if Key = h 
    {
        DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
    }
    return
!Enter::
    Run cmd.exe, C:\
    return


; Functions
ActiveOrLaunch(title, exePath) 
{
    SetTitleMatchMode, 2
    IfWinExist, %title%
    {
        WinActivate, %title%
    }
    IfWinNotExist, %title%
    {
        Run %exePath%
    }
}
