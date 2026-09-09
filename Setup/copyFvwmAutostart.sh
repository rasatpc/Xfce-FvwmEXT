#!/bin/bash

# Copy Fvwm2-3.desktop to .config/autostart/

cd $HOME/.config/autostart/

# Check if file does not exist.
FILE=Fvwm2-3.desktop
if [ ! -f "$FILE" ]; then
    cp $HOME/.fvwm/Setup/autostart/Fvwm2-3.desktop ~/.config/autostart/
fi
