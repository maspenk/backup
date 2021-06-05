#!/bin/sh

wlan=$(iwctl station wlan0 show | grep 'Connected network' | awk '{$1=$2=""; print substr($0,3)}')

if [ $wlan != "" ]; then
    echo " NET:$wlan"
else
    echo " NET:-"
fi    
