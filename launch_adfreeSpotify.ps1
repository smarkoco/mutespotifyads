~\AppData\Roaming\Spotify\Spotify.exe
sleep 2
$wshell = New-Object -ComObject wscript.shell
$wshell.SendKeys(' ')
sleep 1
Start-ScheduledTask winadfree; exit