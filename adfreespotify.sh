#!/bin/bash
# detect ads in spotify, mute when detected, unmute after they are over
function mutespotifyads(){
	while true; do
	pid=$(pidof spotify | awk '{print $NF;}')
  	if [[ $pid ]]
	then
      	if [ $(wmctrl -lp | grep $pid | grep '-' | wc -l) == 1 ] && [ $(amixer -D pulse | grep "Playback" | grep "off" | wc -l) == 0 ]
		then
        	echo "ad @ " $(date)
			amixer set -D pulse Master toggle -q
		fi

		if [ $(wmctrl -lp | grep $pid | grep '-' | wc -l) == 0 ] && [ $(amixer -D pulse | grep "Playback" | grep "off" | wc -l) == 2 ]
		then
			echo "noad @ " $(date)
			amixer set -D pulse Master toggle -q
		fi
		sleep 1 # wait for a second to limit resource usage
	fi
	done
}

# call this func to start tmux session to run mutespotifyads() in the bg
function adfreeSpotify() {
	tmux new-session -d -s adfreeSpotify
	tmux send-keys 'mutespotifyads' C-m # C-m sends ENTER keystroke
}

# execute it
adfreeSpotify
