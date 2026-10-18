#!/bin/sh

# Run Arch's standard X session helpers (passes DISPLAY to systemd/D-Bus services)
if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

exec dwm 2> ~/.cache/dwm.log
