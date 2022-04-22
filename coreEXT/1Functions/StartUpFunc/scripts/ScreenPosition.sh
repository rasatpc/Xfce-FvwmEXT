#!/bin/sh

## Values to change at restart/refresh
## RESOLUTION  PANEL  RESTART    BGWO       MENU
#: 3840x2160   1410   1695-1032  1700x1400  2395
#: 2560x1440   770    1055-672   1500x1200  1755
#: 1920x1200   450    735-552    1400x1060  1450
#: 1920x1080   450    735-492    1400x940   1450
#: 1600x900    290    575-402    1180x720   1275
#: 1360x768    170    455-336    1020x588   1155
#: 1280x1024   130    415-464    1010x880   1105
#: 1280x720    130    415-312    900x540    1105

res=$(xdpyinfo | awk '/dimensions:/{print $2}')
path="/home/$USER/.fvwm"

set -- $(grep -Fm 1 "#: $res" "$0")

sed -i "/+80+70/c\*bgWOButton: Geometry $5+80+70" "$path/coreEXT/MODULES/FvwmOverView/OverView/bgWOview.sys"

