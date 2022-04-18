#!/bin/bash
## Checks if online and new update.

yad --form --width=350 --height=40 --title="Confirm" --text-align=center --text="<b>Do you want to check for new myExt upgrade?</b>" \
--button=No:1 --button=Yes:0
if [ $? -ne 0 ]; then
  rm *.tmp
  exit
else
  ping -q -c1 github.com &>/dev/null && echo online || test="offline"
  
	if [ $test = offline ]; then
	yad --width=300 --height=30 --title="Alert" --text-align=center  \
	--text="<b>You are offline, check github.com or your device connection.</b>" --button=Close:0
	
	else
	
	cd ~/.fvwm/extraEXT/scripts/InstExtVM/download/ || exit
	wget https://raw.githubusercontent.com/rasatpc/Xfce-FvwmEXT/main/version.txt
	
	verGit=$(grep -oE '[0-9]+\.[0-9]+\.[0-9]+' version.txt)
	verLocal=$(grep -oE '[0-9]+\.[0-9]+\.[0-9]+' ~/.fvwm/version.txt)
	
		if [ "$verGit" = "$verLocal" ]; then
		rm *.txt
		yad --width=300 --height=40 --title="Alert" --text-align=center \
		--text="<b>No new upgrade.  ( $verGit ) </b>" --button=Close:0
		
		else
		
		yad --width=360 --height=40 --title="Confirm" --text-align=center \
		--text="<b>New upgrade available, want to download? ( $verGit ) </b>" --button=No:1 --button=Yes:0
		
  			if [ $? -ne 0 ]; then
  			rm *.txt
  			cd ~/.fvwm/extraEXT/scripts/InstExtVM/
  			rm *.tmp
			exit
			else
			~/.fvwm/extraEXT/scripts/InstExtVM/update.sh
			fi
			
		fi
	fi
fi
exec 3>&-
