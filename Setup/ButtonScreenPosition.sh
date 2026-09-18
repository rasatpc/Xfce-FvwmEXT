#!/bin/sh
## By Trilby (Arch Linux)
## 30 December 2022

## Values to change at restart/refresh
## RESOLUTION  PANEL
#: 3840x2160   1737
#: 2560x1440   1097
#: 1920x1200   777
#: 1920x1080   777
#: 1600x900    617
#: 1360x768    497
#: 1280x1024   457
#: 1280x720    457

res=$(xdpyinfo | awk '/dimensions:/{print $2}')
path="/home/$USER/.fvwm"

set -- $(grep -Fm 1 "#: $res" "$0")

sed -i "/366x32/c\*DeskTitleIcon: Geometry 366x32-$3+10" "$path/Extension/Functions/deskIcons.sys"
