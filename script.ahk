GroupAdd,ExplorerGroup, ahk_class CabinetWClass
GroupAdd,ExplorerGroup, ahk_class ExploreWClass
SetTitleMatchMode, 2

; Key switches
CapsLock::ESC
ESC::CapsLock 

; Shortcuts
RAlt & d::Suspend
!w::WinClose, A
!h::
    MouseMove, -20, 0, 1, R
    return
!j::
    MouseMove, 0, 20, 1, R
    return
!k::
    MouseMove, 0, -20, 1, R
    return
!l::
    MouseMove, 20, 0, 1, R
    return
!Space::
    MouseClick, Left
    return
^!Space::
    MouseClick, Right
    return
!d::
    EnvGet, AppDataPath, appdata
    ActiveOrLaunch("- Discord", AppDataPath .= "\..\Local\Discord\Update.exe --processStart Discord.exe")
    return
!q::
    WinGetActiveTitle, ActiveWindowTitle
    WinGet, ActiveWindowProcess, ProcessName, %ActiveWindowTitle% 
    if (ActiveWindowProcess = "explorer.exe") {
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
#IfWinNotActive, - Android Studio
!Enter::
    Run "C:\Windows\System32\wsl.exe", C:\Users\brand\
    return
!+Enter::
    Run "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe", C:\Users\brand\
    return
#IfWinNotActive
!a::
  toggle:=!toggle

  if toggle
    Run, nircmd setdefaultsounddevice "Headset Earphone"
  else
    Run, nircmd setdefaultsounddevice "Speakers"
!p::
    WinSet, AlwaysOnTop, , A
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
