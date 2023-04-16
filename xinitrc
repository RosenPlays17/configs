#!/bin/sh

xrdb /home/finn/.config/x/xresources
xrandr --output DP-0 --scale 1.25x1.25
/home/finn/.config/feh/fehbg
nvidia-settings -l --config=/home/finn/.config/nvidia_settings
setxkbmap -layout us,de -option grp:alt_shift_toggle
xset r rate 250 30
exec picom &
/home/finn/.config/dwm/status &
exec dwm
