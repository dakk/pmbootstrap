#!/bin/sh

# Hildon autostart on tty1 (Autologin on tty1 is enabled in
# /etc/inittab by postmarketos-base post-install.hook).
# This is a temporary solution, we'll need something like a
# login manager in the long run.
if [ "$(id -u)" = "12345" ] && [ "$(tty)" = "/dev/tty1" ]; then
	# Start X11 with Hildon
	startx /etc/postmarketos-ui/xinitrc_hildon.sh >/tmp/x11.log 2>&1

	# In case of failure, restart after 1s
	sleep 1
	exit
fi

