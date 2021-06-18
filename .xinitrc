#!/bin/sh

resources=$HOME/.Xresources

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi
if [-f $resources ]; then
	xrdb -merge $resources
fi

autocutsel -selection CLIPBOARD -fork

exec i3


