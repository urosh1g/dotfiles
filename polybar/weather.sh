#!/bin/sh
while [ 1 ]
do
	weather=$(curl -s wttr.in/Nis?format="%l:+%c+%t\n")
	if [[ $weather =~ "Unknown" ]]; then
		echo "wttr unavailable"
	elif [[ $weather =~ "Sorry" ]]; then
		echo "wttr unavailable"
	elif [[ -n "$weather" ]]; then
		echo $weather
	fi
	sleep 300
done
