#!/bin/sh

temp=$(sensors | grep 'Tdie' | awk '{print $2}' | head -c3 | sed 's/^.//')

echo "$temp"

