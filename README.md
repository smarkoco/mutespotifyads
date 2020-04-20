There is a Linux version and a Windows version of this Spotify ad detection and system muting program.


# Linux Version of mutespotifyads

These bash functions can automatically mute your system every time a Spotify ad is detected.

It uses the window manager's knowledge that an "Advertisement" or a "Sponsored Message" is playing in order to mute the system by detecting some tell-tale strings that are present in the output of "wmctrl -l". The first function "mutespotifyads()" runs in a while loop in the terminal and checks once per second for these tell-tale string outputs. The second function, "adfree()" will call this first function within a background tmux session called "adfree". You can have this run in the background automatically at login by placing adfreespotify.sh somewhere in your file system, and setting it to run on logon in Session and Startup -> Application Autostart (Ubuntu Studio). This will run mutespotifyads in a detached tmux session. You can end it with "pkill tmux" or attach to it with "tmux attach". These functions could also be pasted into ~/.bashrc

This works well in Ubuntu Studio 19.10.



# Windows Version of mutespotifyads

The PowerShell script "winmutespotifyads.ps1" checks for Spotify ads every 1 second within a while loop.

Register "winmutespotifyads.ps1" PowerShell script as a Windows 10 task by opening Task Scheduler, clicking "Import Task," and selecting the winadfree.xml file. It is triggered to start at logon or workstation unlock. When you are importing the .xml file with the Task Scheduler GUI, be sure to change the file path to the actual correct location of where you downloaded your mutespotifyads git repo. To do so: navigate to the Actions tab, double-click under the Details field, and change the path to your correct path in the Add Arguments box.

In order to start and stop this task manually, open Powershell.exe with Win+X, Win+I or Win+"powershell"+Enter. To start it from within PowerShell: type "Start-ScheduledTask winadfree"; to stop it type "Stop-ScheduledTask winadfree".
