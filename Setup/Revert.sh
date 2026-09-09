#!/bin/bash

# Revert Fvwm with Xfce.

xfwm4 --replace &
conky-startup.sh

# Restart
# killall -SIGUSR1 fvwm3
# killall -SIGUSR1 fvwm
