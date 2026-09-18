19 September 2026

# HOW TO INSTALL AND RUN IN XFCE.

Debian based GNU/Linux:
* sudo apt update
* sudo apt install fvwm3 (or fvwm)

Arch Linux:
* sudo pacman -Syu fvwm3 (or fvwm)

Fedora/OpenSUSE/other RPM-based distros:
* sudo dfn install fvwm3

Alpine Linux:
* apk add fvwm

# FVWM EXTENSION DEPENDENCIES

Required by thumbnails, screen resolution, and search app:
* sudo apt install imagemagick-common x11-utils xfce4-appfinder
* sudo pacman -Syu imagemagick xorg-xdpyinfo xfce4-appfinder
* sudo dnf install ImageMagick xwd xdpyinfo xfce4-appfinder

# Download Xfce-FvwmEXT:
* https://github.com/rasatpc/Xfce-FvwmEXT/archive/refs/heads/main.zip

Extract and copy the subfolders to ~/.fvwm

# Load Fvwm at login, and logout.
It automatically copies the Fvwm2-3.desktop file to .config/autostart/.

OR

Run an alternative in Xfce by typing the line below in a terminal, and logout.
cp ~/.fvwm/Setup/autostart/Fvwm2-3.desktop ~/.config/autostart/

# Load Xfce at login.
It is ready to use.
