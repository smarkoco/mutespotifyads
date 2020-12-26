Start-Process $HOME\AppData\Roaming\Spotify\Spotify.exe
sleep 2
$wshell = New-Object -ComObject wscript.shell
$wshell.SendKeys(' ') # press play by sending spacebar to Spotify
Start-Process -WindowStyle hidden -FilePath $(Get-ChildItem .\mutespotifyads.ps1 | % {$_.FullName}) # run script in bg