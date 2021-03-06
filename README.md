# ahk-script

### How to Use

---

- Clone this repo to anywhere on your computer
- Download [autohotkey](https://autohotkey.com/download/)
- Download [nircmd](http://www.nirsoft.net/utils/nircmd.html) (v2.86 is the version that is known to work)
- Right-click the script.ahk file and click "Compile Script"
- Press Windows Key + R to open Run dialog and enter "shell:common startup"
- Copy the script.exe that was generated from the compilation into the startup folder

### This repo includes a basic AHK script that includes the following hotkeys:

---

- **Toggle hotkeys on/off with `RAlt + d`.**
- Vim-style mouse moving
  - `ALT + h`: Move mouse left
  - `ALT + j`: Move mouse down
  - `ALT + k`: Move mouse up
  - `ALT + l`: Move mouse right
  - `ALT + Space`: Left-click mouse
  - `ALT + Ctrl + Space`: Right-click mouse
- Windows commands
  - `ALT m + r` : Reboot the PC
  - `ALT + q` : Close active program completely
  - `ALT + w` : Close active window
  - `ALT + a` : Toggle Audio device (will need to change if the names mismatch in nircmd)
    - run `nircmd showsounddevices` to figure out which device name you need to use
  - `ALT + c` : Open calculator
- Specific Program launch commands
  - `ALT + v` : Open or activate VS Code
  - `ALT + d` : Open or activate Discord
  - `ALT + i` : Open or activate Chrome
  - `ALT + ENTER`: Open command line instance (for user-defined cli see _notes_)
  - `ALT + Shift + ENTER`: Open powershell instance
- Steam-specific commands
  - `ALT s + f`: Open Steam Friends list
  - `ALT s + l`: Open Steam Game Library
  - `ALT s + s`: Open Steam Store
- Misc command
  - `ALT + p`: Pin window (keep on top)

### Notes

- WSL is supported by default with the `ALT + ENTER` command, changing it is as simple as modifying that hotkey
