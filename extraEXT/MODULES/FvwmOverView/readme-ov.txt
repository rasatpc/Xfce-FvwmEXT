# readme-ov.txt

To install or edit .fvwm/ExtraExt.sys

## Add the below line below "Load 7.Modules".
Read $[EXTRA_DIR]/MODULES/FvwmOverView/fvwmWOview.sys #605

## Any addon or modification in .fvwm/userEXT.sys

Test screen resolution:
xdpyinfo | awk '/dimensions:/{print $2}'

Check: coreEXT/1Functions/MyInitMgr/myInitMgr.sys

## Any addon or modification in .fvwm/UserEXT.sys
