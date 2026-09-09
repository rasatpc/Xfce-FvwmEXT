#!/bin/sh

# Copy userEXTSAMPLE.sys to .fvwm/

cd $HOME/.fvwm

# Check if file does not exist.
FILE=userEXT.sys
if [ ! -f "$FILE" ]; then
    cp $HOME/.fvwm/setup/userEXTSAMPLE.sys userEXT.sys
fi
