#!/bin/sh

wifi=$(wpa_cli status | grep -w ssid | sed 's/ssid=/直 /g')

if [ ! -z "$wifi" ];then
	echo " $wifi "
else
	echo ""
fi
