# mutespotifyads
This bash function will automatically mute your system everytime a spotify ad is detected.

It uses the window manager's knowledge that an "Advertisement" or a "Sponsored Message" is playing in order to mute the system while either of those strings are present in the output of "wmctrl -l". These functions are to be pasted into ~/.bashrc or ~/.profile so they can be called from the command line. The first function "mutespotifyads()" will run in a while loop in the terminal and check once a second for these string outputs. The second function, "adfree()" will call this first function within a background tmux session called "adfree".

This works well in Ubuntu Studio 19.10.
