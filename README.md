There is a Linux version and a Windows version of this Spotify ad detection and system muting program.


# Linux Version of mutespotifyads

These bash functions can automatically mute your system every time a Spotify ad is detected.

It uses the window manager's knowledge that an "Advertisement" or a "Sponsored Message" is playing in order to mute the system by detecting some tell-tale strings that are present in the output of "wmctrl -l". The first function "mutespotifyads()" runs in a while loop in the terminal and checks once per second for these tell-tale string outputs. The second function, "adfree()" will call this first function within a background tmux session called "adfree". You can have this run in the background automatically at login by placing adfreespotify.sh somewhere in your file system, and setting it to run on logon in Session and Startup -> Application Autostart (Ubuntu Studio). This will run mutespotifyads in a detached tmux session. You can end it with "pkill tmux" or attach to it with "tmux attach". These functions could also be pasted into ~/.bashrc

This works well in Ubuntu Studio 19.10.



# Windows Version of mutespotifyads

Use the "adfreeSpotify" shortcut to open spotify, start music, and launch the "mutespotifyads.ps1" powershell process in the background. You can pin it to your desktop or Start menu (if you place it in ~\AppData\Roaming\Microsoft\Windows\'Start Menu', right click, and choose "Pin to Start Menu")
You may need to modify the scripts to ensure accurate paths (such as your spotify.exe location).
The PowerShell script "mutespotifyads.ps1" checks for Spotify ads every 1 second within a while loop, consuming only ~1% of CPU.
