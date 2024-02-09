#!/bin/bash

yad --width=300 --height=30 --title="Alert" --text-align=center \
  --text="<b>   Left-click and Restart.   </b>" --button=OK:0

# Restart
killall -SIGUSR1 fvwm3
killall -SIGUSR1 fvwm
