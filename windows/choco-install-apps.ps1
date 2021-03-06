# If chocolatey not installed
## Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) 
{ Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
ECHO "Installing apps via Chocolatey"
choco feature enable -n allowGlobalConfirmation

# MISC
choco install shutup10 # "OOSU10" > win+R
choco install defaultprogramseditor
choco install qbittorrent
choco install autohotkey

# EDITORS
choco install firacode # Font for editors
choco install visualstudiocode
choco install notepadplusplus # \/ makes it default editor
cmd /c 'reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\notepad.exe" /v "Debugger" /t REG_SZ /d "\"%ProgramFiles%\Notepad++\notepad++.exe\" -notepadStyleCmdline -z" /f'
choco install 7zip

# MEDIA
choco install k-litecodecpackfull
choco install paint.net
choco install wincdemu

# BROWSERS
choco install firefox
choco install tor-browser
choco install microsoft-teams # big thonk

# DEV
choco install git
choco install fiddler
choco install gradle
choco install python3
choco install xampp-81
## NODE
choco install nvm

# DEVOPS
choco install sysinternals
choco install putty
choco install speccy
choco install ccleaner
choco install defraggler
choco install filezilla
#choco install ilspy 
choco install malwarebytes

# GAMING
choco install geforce-experience
choco install steam-client
choco install discord

# Cleaning up
choco feature disable -n allowGlobalConfirmation
