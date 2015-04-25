cd ~
xset -dpms
xset s off

xset -b

#xscreensaver -no-splash&
xautolock -locker screenlock &

xsetroot -solid "#333333"
ulimit -c unlimited

xrandr --dpi 140
xrdb -merge ~/.Xresources
setxkbmap -option ctrl:nocaps
xinput set-button-map 11 1 2 3 5 4
xbacklight -set 28

unclutter -idle 2&
syndaemon -i 2 -d

synclient VertScrollDelta=-111
synclient HorizScrollDelta=-111
synclient PalmDetect=1
synclient PalmMinWidth=8
synclient PalmMinZ=100

/usr/lib/notify-osd/notify-osd &

echo "Starting at $(date)" >> ~/.i3/logfile
exec i3 -V -d all >> ~/.i3/logfile
