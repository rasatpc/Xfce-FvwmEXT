readme.txt

https://www.fvwm.org/Archive/Faq/#using-application-screenshots-as-icon-or-mini-icon-thumbnails

Requires imagemagick and x11-apps for this function to work.
It takes a snapshot of the window before it is iconified, and then assigns the icon to the iconified window.

## Install
sudo apt install imagemagick x11-apps

To install in .fvwm/local.config

## Add the below line.
Read $[EXT_DIR]/Functions/Thumbnails/thumbnail.sys

To edit

## Copy to .fvwm/User and add below line in .fvwm/userEXT.sys
Read $[USER_DIR]/Thumbnails/thumbnail.sys
