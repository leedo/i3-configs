cd ~

xset +dpms
xset dpms 300 480 600
xset s off
xset -b

killall chrome

xautolock -time 5 -locker screenlock &
hsetroot -cover lockimages/Tunnel-of-trees.png
ulimit -c unlimited
xrandr --dpi 200
xrdb -merge ~/.Xresources
setxkbmap -option ctrl:nocaps
xbacklight -set 28
unclutter -idle 2&

/usr/lib/x86_64-linux-gnu/notify-osd &

Agile1pAgent &
# wicd-client --tray > .wicd/log &

dropbox start

compton -b
urxvtd -f -q -o

echo "Starting at $(date)" >> ~/.config/i3/log
exec ssh-agent i3 -V -d all >> ~/.config/i3/log
