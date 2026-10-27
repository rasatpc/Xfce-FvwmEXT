27 October 2026

# HOW TO INSTALL AND RUN IN XFCE.

Debian based GNU/Linux:
* sudo apt update
* sudo apt install fvwm3 (or fvwm)

Arch Linux:
* sudo pacman -Syu fvwm3 (or fvwm)

Fedora/OpenSUSE/other RPM-based distros:
* sudo dfn install fvwm3

FreeBSD:
* pkg install fvwm3

# FVWM EXTENSION DEPENDENCIES

Required by quick note, thumbnails, screen resolution, and search app:
* sudo apt install imagemagick-common x11-utils zenity
* sudo pacman -Syu imagemagick xorg-xdpyinfo zenity
* sudo dnf install ImageMagick xwd xdpyinfo zenity
* pkg install ImageMagick7 xprop xwininfo xdpyinfo zenity

# Download Xfce-FvwmEXT:
* https://www.xfce-look.org/p/1774061
* https://github.com/rasatpc/Xfce-FvwmEXT/archive/refs/heads/main.zip

Extract and copy the subfolders to ~/.fvwm

# Load Fvwm at login, and logout.
It automatically copies the Fvwm2-3.desktop file to .config/autostart/.

OR

Run an alternative in Xfce by typing the line below in a terminal, and logout.
cp ~/.fvwm/Setup/autostart/Fvwm2-3.desktop ~/.config/autostart/

# Load Xfce at login.
It is ready to use.

# Optional
FvwmPanel is an optional extension that adds additional Fvwm features. It requires moving the Xfce panel to the left side, vertically. To install in .fvwm/userEXT.sys, add the below line:
Read $[EXT_DIR]/Modules/FluxPanel/fluxbox-panel.sys

# NOTE
* For transparency, use the same wallpaper in both Fvwm and Xfce.
