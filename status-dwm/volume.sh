#!/bin/sh

# PulseAudio with pulsemixer
ou_mute=$(pulsemixer --get-mute --id 0)
in_mute=$(pulsemixer --get-mute --id 1)
ou_vol=$(pulsemixer --get-volume --id 0 | awk '{print $1}')
in_vol=$(pulsemixer --get-volume --id 1 | awk '{print $1}')
jack_stat=$($HOME/.config/dwm-status/has_headphone)

if	[ $jack_stat = "yes" ]; then
	icon_ou_on=" "
	icon_ou_off=" "
else
    icon_ou_on="墳 "
    icon_ou_off="婢 "
fi

if 	[ $ou_mute = "0" ]; then
	ou_show="$icon_ou_on$ou_vol"
else	
	ou_show="$icon_ou_off"
fi

if	[ $in_mute = "0" ];then
	in_show=" $in_vol"
else
	in_show=" -"
fi

echo "$ou_show  $in_show"
