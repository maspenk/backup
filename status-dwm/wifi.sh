#!/bin/sh

#wpa_cli only:
#wifi=$(wpa_cli status | grep -w ssid | sed 's/ssid=/直 /g')
wifi=$(iwctl station wlan0 show | grep -w "Connected network" | awk '{for(i=3;i<=NF;++i)print $i}' | tr '\n' ' ')
if [ -z "$wifi" ]
then
      echo ""
else
      echo "直 $wifi "
fi
