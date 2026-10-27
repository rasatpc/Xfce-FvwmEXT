#!/bin/sh
## By Trilby (Arch Linux)
## 30 December 2022
## https://bbs.archlinux.org/viewtopic.php?id=271659&p=2
## Update: 25 October 2026

## Values to change at restart/refresh (ex. MENU 1920/2+390=1350)
## RESOLUTION  DESK  MENU  PANEL
#: 3840x2160   1737  2310  1514
#: 2560x1440   1097  1670  874
#: 1920x1200   777   1350  554
#: 1920x1080   777   1350  554
#: 1600x900    617   1190  394
#: 1360x768    497   1070  274
#: 1280x1024   457   1030  234
#: 1280x720    457   1030  234

res=$(xdpyinfo | awk '/dimensions:/{print $2}')
path="/home/$USER/.fvwm"

set -- $(grep -Fm 1 "#: $res" "$0")

sed -i "/366x28/c\*DeskTitleIcon: Geometry 366x28-$3+10" "$path/Extension/Functions/deskIcons.sys"

sed -i "/Rectangle/c\*FvwmPanel: (90x1, Icon $[boxIcons]/Fvwm-58x20.png, Colorset 40, \
 ActionOnPress, Action(Mouse 1) Menu MenuStart Rectangle -$4-34 0 -111m)" "$path/Extension/Modules/FluxPanel/fluxbox-panel.sys"

sed -i "/812x30/c\*FvwmPanel: Geometry 812x30+$5-8" "$path/Extension/Modules/FluxPanel/fluxbox-panel.sys"
