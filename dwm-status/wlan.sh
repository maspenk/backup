#!/bin/sh

icon="直"
wlan=$(iwctl station wlan0 show | grep "Connected network" | awk '{for(i=3;i<=NF;i++) printf $i" "; print ""}')

echo "$icon $wlan"
