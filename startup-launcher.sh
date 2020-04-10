#!/bin/bash

sleep 5
lxterminal --command='/root/rspeer-launcher/rspeer-launcher-x64-linux' &

if [ ! -f /root/RSPeer/cache/misc_new ]
then
	sleep 5
	xdotool type $RSPEER_EMAIL
	xdotool key Return
	sleep 2
	xdotool type $RSPEER_PASS
	xdotool key Return
fi