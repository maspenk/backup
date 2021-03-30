#!/bin/sh

wlan=$(iwctl station wlan0 show | grep "Connected network" | awk '{print $1=$2="",$0}')
if [ $wlan != "" ]; then
	printf "直$wlan"
else
	print "no connection"
fi
