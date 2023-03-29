#!/bin/sh

xrdb /home/finn/.config/x/xresources &
xrandr --output DP-0 --scale 1.2x1.2 &
~/.config/feh/fehbg &
nvidia-settings -l --config=/home/finn/.config/nvidia_settings &
setxkbmap -layout us,de -option grp:alt_shift_toggle &
exec picom &
/home/finn/.config/dwm/status &
exec dwm
