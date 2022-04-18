#!/bin/sh
## By Trilby (Arch Linux)
## 30 December 2022

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

sed -i "/1020x36/c\*TaskButtonsFlux: Geometry 1020x36-$3-18" "$path/extraEXT/MODULES/TaskButtonsFlux/taskBFlux.sys"
sed -i "/1020x36/c\*TaskButtonsFlux: Geometry 1020x36-$3+55" "$path/extraEXT/MODULES/TaskButtonsFlux/action/fluxNorth.conf"
sed -i "/Rectangle/c\*TaskButtonsFlux: (70x1, Icon $[tpc-image]/Fvwm-58x20.png, Colorset 363, \
 ActionOnPress, Action(Mouse 1) Menu MenuStart Rectangle -$6-42 0 -111m)" "$path/extraEXT/MODULES/TaskButtonsFlux/taskBFlux.sys"
sed -i "/Rectangle/c\*TaskButtonsFlux: (70x1, Icon $[tpc-image]/Fvwm-58x20.png, Colorset 363, \
 ActionOnPress, Action(Mouse 1) Menu MenuStart Rectangle -$6+92 0 -0m)" "$path/extraEXT/MODULES/TaskButtonsFlux/action/fluxNorth.conf"

sed -i "/450x96/c\*RestartShutdown: Geometry 450x96-$4" "$path/coreEXT/MODULES/RestartShutdown/restartSDown.sys"

# sed -i "/440x200/c\*InfoPanel: Geometry 440x200-$4" "$path/coreEXT/MODULES/InfoPanel/infoPanel.sys"
# sed -i "/440x100/c\*ExitButtons: Geometry 440x100-$4" "$path/coreEXT/MODULES/InfoPanel/action/exit.sys"

sed -i "/+80+70/c\*bgWOButton: Geometry $5+80+70" "$path/coreEXT/MODULES/FvwmOverView/OverView/bgWOview.sys"

