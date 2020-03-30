There is a Linux version and a Windows version of this Spotify ad detection and system muting program.


# Linux Version of mutespotifyads
This bash function will automatically mute your system everytime a spotify ad is detected.

It uses the window manager's knowledge that an "Advertisement" or a "Sponsored Message" is playing in order to mute the system while some tell-tale strings are present in the output of "wmctrl -l". These functions are to be pasted into ~/.bashrc or ~/.profile so they can be called from the command line. The first function "mutespotifyads()" will run in a while loop in the terminal and check once a second for these string outputs. The second function, "adfree()" will call this first function within a background tmux session called "adfree".

This works well in Ubuntu Studio 19.10.



# Windows Version of mutespotifyads

The PowerShell script "winmutespotifyads.ps1" checks for Spotify ads every 1 second within a while loop.

Register "winmutespotifyads.ps1" PowerShell script as a Windows 10 task by using "Import Task" and selecting the winadfree.xml file in Task Scheduler. It is triggered to start at logon or workstation unlock. When you are importing, be sure to change the file path to the correct location of the mutespotifyads git repo. To do so: navigate to the Actions tab, double-click under the Details field, and change the path to your correct path in the Add Arguments box.

In order to start and stop this task manually, open Powershell.exe with Win+X, Win+I or Win+"powershell"+Enter. To start it type "Start-ScheduledTask winadfree"; to stop it type "Stop-ScheduledTask winadfree".
