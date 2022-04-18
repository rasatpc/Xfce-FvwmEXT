#!/bin/sh

resInit=$(ps --no-headers -o comm 1)
path="/home/$USER/.fvwm"

if [ "$resInit" = "systemd" ]; then

sed -i "/#1Systemd/c\*RestartShutdown: (Title Restart, Action(Mouse 1) Exec systemctl reboot) #1Systemd Linux distro" "$path/coreEXT/MODULES/RestartShutdown/restartSDown.sys"

sed -i "/#2Systemd/c\*RestartShutdown: (Title OK, Action(Mouse 1) Exec systemctl poweroff) #2Systemd Linux distro" "$path/coreEXT/MODULES/RestartShutdown/restartSDown.sys"

sed -i "/#3Non-systemd/c\#*RestartShutdown: (Title Restart, Action(Mouse 1) Exec sudo /sbin/reboot) #3Non-systemd" "$path/coreEXT/MODULES/RestartShutdown/restartSDown.sys"

sed -i "/#4Non-systemd/c\#*RestartShutdown: (Title OK, Action(Mouse 1) Exec sudo /sbin/poweroff) #4Non-systemd" "$path/coreEXT/MODULES/RestartShutdown/restartSDown.sys"

else

sed -i "/#1Systemd/c\#*RestartShutdown: (Title Restart, Action(Mouse 1) Exec systemctl reboot) #1Systemd Linux distro" "$path/coreEXT/MODULES/RestartShutdown/restartSDown.sys"

sed -i "/#2Systemd/c\#*RestartShutdown: (Title OK, Action(Mouse 1) Exec systemctl poweroff) #2Systemd Linux distro" "$path/coreEXT/MODULES/RestartShutdown/restartSDown.sys"

sed -i "/#3Non-systemd/c\*RestartShutdown: (Title Restart, Action(Mouse 1) Exec sudo /sbin/reboot) #3Non-systemd" "$path/coreEXT/MODULES/RestartShutdown/restartSDown.sys"

sed -i "/#4Non-systemd/c\*RestartShutdown: (Title OK, Action(Mouse 1) Exec sudo /sbin/poweroff) #4Non-systemd" "$path/coreEXT/MODULES/RestartShutdown/restartSDown.sys"

fi

