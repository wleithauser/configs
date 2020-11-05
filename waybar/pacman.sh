#!/bin/bash
num_updates=$(checkupdates | wc -l)
updates=$(for i in $(checkupdates | head -n 20); do echo $i"\n"; done | awk 'NR%4==1')
updates=$(echo $updates | tr -d \ | rev | cut -c 3- | rev)
if [ $num_updates -gt 25 ]; then extras=$(echo "\n-" $(expr $num_updates - 25) more -); fi
if [ $num_updates -eq 0 ]
	then echo '{"text":"0","tooltip":"Up to date"}'
	else echo '{"text":"'$num_updates'", "tooltip":"'$updates""$extras'"}'
fi
