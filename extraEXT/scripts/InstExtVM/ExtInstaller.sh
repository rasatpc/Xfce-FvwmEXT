#!/bin/bash
# By Misko - Yad Command Google Forum 10 Mar 2022
# By rasat 15 Mar 2022
## IMPORTANT: No space between the lines.
if ! [ -x "$(command -v awk)" ]; then
   yad --form --width=360 --height=40 --title="Alert" --text-align=center \
  --text="<b>Requires gawk to run Ext Installer.</b>" --button=OK:0
  exit
fi
cd ~/.fvwm/extraEXT/scripts/InstExtVM/
split_arg () {
 echo -e "\f"
 echo "$5"
}
export -f split_arg
export fpipe="$(mktemp -u --tmpdir fvwmei.XXXXXXXX)"
mkfifo "$fpipe"
trap "rm "$fpipe"" EXIT
exec 3<> "$fpipe"
key=$RANDOM
yad --plug=$key --tabnum=1 \
    --select-action='bash -c "split_arg %s >$fpipe"' \
    --hide-column=5 \
    --list --checklist \
    --width=900 --height=580 \
    --separator=" " \
    --column=Y/n --column="Type" \
    --column=Extension --column=Description --column="" --column=# \
TRUE Functions "<b>Auto Hide List</b>" "Hides widgets not to use desktop space." "images/auto-hide.png" 101 \
TRUE Functions "<b>Auto Move Windows</b>" "Moves apps to a specific workspace." "images/auto-move.png" 102 \
TRUE Styles "<b>Fvwm Thumbnails</b>" "Iconified windows." "images/fvwm-thumb.png" 201 \
TRUE Styles "<b>Diary Thumbnails</b>" "Thumbnails based on addy-fe's theme." "images/dairy-thumb.png" 202 \
TRUE Styles "<b>My Border Style</b>" "Thin window border." "images/my-border.png" 203 \
TRUE Menus "<b>Xfce Menu</b>" "Menu list pop up bindings, hook and panel." "images/my-menu.png" 302 \
TRUE Bindings "<b>My Key Binding</b>" "VM desk (alt-d), Thumbnail (alt-t), etc." "images/key-bind.png" 402 \
TRUE Decorations "<b>My Decor</b>" "Simple title bar." "images/my-decor.png" 501 \
false Decorations "<b>Diary Decor</b>" "Right-side title bar based on addy-fe's theme." "images/diary-decor.png" 502 \
TRUE Modules "<b>Desk Switch</b>" "Virtual window management." "images/desk-switch.png" 603 \
TRUE Modules "<b>Fvwm Over View</b>" "View of running windows on current page." "images/over-view.png" 605 \
TRUE Modules "<b>Time/Day Button</b>" "Date, time, and calendar panel." "images/time-day.png" 609 \
TRUE Modules "<b>Vertical Pager 1x5</b>" "Miniature view of desktops (1x5)." "images/pager1x5.png" 610 \
false Modules "<b>Vertical Pager 2x4</b>" "Miniature view of desktops (2x4)." "images/pager2x4.png" 611 \
false Modules "<b>Mini Pager</b>" "Mini pager, 2x2 view of desktop." "images/control-pg.png" 612 \
	>output.tmp &
yad --plug=$key --tabnum=2 --list --no-headers --listen --cycle-read --column=":IMG" <&3  &
yad --paned --key=$key --title="Extension Installer (VM)" \
    --button=Close:1 --button='Reset:bash -c "./reset.sh"' --button='Upgrade myExt:bash -c "./checkLine-Update.sh"' --button=Install:0 --center --orient=Horizontal --splitter=620 --width=800 --height=530
exec 3>&-
# Change all extension to false.
awk '{print $1 " " $NF}' output.tmp > install.tmp
if [ -s install.tmp ]
	then
sed -i 's/TRUE/false/g' ExtInstaller.sh #CODE
		./extraExtUpdate.sh
	else
		exit
fi
