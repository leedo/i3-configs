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
syndaemon -i 1 -K -R -d

synclient VertScrollDelta=-111
synclient HorizScrollDelta=111
synclient MaxSpeed=1.25
synclient PalmDetect=1
synclient PalmMinWidth=5
synclient PalmMinZ=20

/usr/lib/x86_64-linux-gnu/notify-osd &

compton -b
echo "Starting at $(date)" >> ~/.i3/logfile
exec i3 -V -d all >> ~/.i3/logfile
