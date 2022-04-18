# readme-rsb.txt

To install or edit .fvwm/CoreExt.sys

## Add the below line below "Load 7.Modules".
Read $[CORE_DIR]/MODULES/RestartShutdown/restartSDown.sys

OR

## Add the below line where you want to lounch the RestartShutdown panel.
*<name buttons>: (1x1, Icon $[smallIcons]/quit-w.png, Action \
    `Read $[CORE_DIR]/MODULES/RestartShutdown/restartSDown.sys` )

Center RestartShutdown postion as per screen resolution.
Add below line in 1Functions/MyInitMgr/myInitMgr.sys (without "#").
# Test (x xdpyinfo) Exec $[CORE_DIR]/1Functions/MyInitMgr/scripts/ButtonScreenPosition.sh

Add below line in 1Functions/MyInitMgr/scripts/ButtonScreenPosition.sh
sed -i "/450x96/c\*RestartShutdown: Geometry 450x96-$4" "$path/coreEXT/MODULES/RestartShutdown/restartSDown.sys"

## Any addon or modification in .fvwm/UserEXT.sys
