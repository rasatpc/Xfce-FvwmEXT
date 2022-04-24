#!/bin/bash

cd ~/.fvwm/coreEXT/1Functions/verXFvCheck/script/
fvwm3 -V > ver.txt
fvwm -V > ver.txt
awk 'NR==1{print $2}' ver.txt > tmp.txt
verFvwm=$(sed 's/.[0-9]$//' tmp.txt)

if [ $verFvwm = 2.6 ]; then
rm ~/.config/autostart/XfceFvwm*
cp ~/.fvwm/coreEXT/1Functions/verXFvCheck/files/XfceFvwm2.desktop ~/.config/autostart/
rm *.txt
exit
else
rm ~/.config/autostart/XfceFvwm*
cp ~/.fvwm/coreEXT/1Functions/verXFvCheck/files/XfceFvwm3.desktop ~/.config/autostart/
rm *.txt
exit
fi
