#!/bin/sh

temp=$(sensors | grep 'Tdie' | awk '{print $2}' | sed 's/^.//')

echo " $temp"
