#!/bin/sh

#echo $(playerctl metadata --format "{{ artist }} - {{ title }}")

status=$(playerctl status spotifyd)
#echo $status
artist=$(playerctl metadata --format "{{ artist }}")
#echo $artist
title=$(playerctl metadata --format "{{ title }}")
#echo $title

if [ "$status" = "Playing" ]; then
	echo "$artist - $title";
elif [ "$status" = "Paused" ]; then
	echo "[Paused] $artist - $title";
else
	echo "Spotify unavailable";
fi
