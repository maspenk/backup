#!/bin/sh

# PulseAudio with pulsemixer
ou_mute=$(pulsemixer --get-mute --id 0)
in_mute=$(pulsemixer --get-mute --id 1)
ou_vol=$(pulsemixer --get-volume --id 0 | awk '{print $1}')
in_vol=$(pulsemixer --get-volume --id 1 | awk '{print $1}')
jack_stat=$($HOME/.config/dwm-status/has_headphone)

if	[ $jack_stat = "yes" ]; then
	icon_ou_on=""
	icon_ou_off=""
elif	[ $jack_stat = "no"  ]; then
	icon_ou_on=""
	icon_ou_off=""
fi
icon_in_on=""
icon_in_off=""

if 	[ $ou_mute = "0" ]; then
	ou_show="$icon_ou_on $ou_vol"
else	
	ou_show="$icon_ou_off Ø"
fi

if	[ $in_mute = "0" ];then
	in_show="$icon_in_on $in_vol"
else
	in_show="$icon_in_off Ø"
fi

echo "$ou_show  $in_show"
