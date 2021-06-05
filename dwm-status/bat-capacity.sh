#!/bin/sh

cap=$(cat /sys/class/power_supply/BAT1/capacity)
echo "BAT:$cap"
