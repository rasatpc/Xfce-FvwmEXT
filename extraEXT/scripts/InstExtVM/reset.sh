#!/bin/bash
## This will reset the extension list to default setting.

yad --form --width=350 --height=40 --title="Confirm" --text-align=center --text="<b>Do you want to reset the extension list (default)?</b>" \
--button=No:1 --button=Yes:0

if [ $? -ne 0 ]; then
  exit
  
else

  cp -f default/ExtInstaller.sh ~/.fvwm/extraEXT/scripts/InstExtVM/ExtInstaller.sh
  cp default/ExtraExt.sys ~/.fvwm/ExtraExt.sys
  rm install.tmp output.tmp
  
  yad --form --width=360 --height=40 --title="Alert" --text-align=center \
  --text="<b>Close Extension Installer, and Restart myExt.</b>" --button=OK:0
fi
exec 3>&-
