# starting configuration    
urxvtd --quiet --opendisplay --fork &    
xbanish &                                                                                                                                                                                                                         
xset b off    
xrdb $HOME/.Xresources    
xbacklight -set 10    
    
# android-studio on dwm    
export _JAVA_AWT_WM_NONREPARENTING=1    
    
# d-Bus    
if command -v dbus-launch >/dev/null && test -z "${DBUS_SESSION_BUS_ADDRESS}"; then    
       eval $(dbus-launch --sh-syntax --exit-with-session)    
fi    
    
dwm    
while true; do    
        /usr/local/bin/dwm 2> ~/.dwm.log    
done    
