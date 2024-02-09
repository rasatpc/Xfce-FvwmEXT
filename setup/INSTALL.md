9 Jan 2024
# HOW TO INSTALL AND RUN FVWM ON XFCE

Install Xfce (if not already installed).

Install Fvwm3 or Fvwm2 package.

Debian based GNU/Linux:
* `sudo apt install fvwm3` (or fvwm)

Arch Linux:
* `yay -S fvwm3` (or fvwm)

Fedora/OpenSUSE/other RPM-based distros:
* `sudo dfn install fvwm3`

Alpine Linux:
* `apk add fvwm`

# Installing from Git FVWM3:

Read instructions:
* https://github.com/rasatpc/FVWM3-myEXT/blob/main/setup/INSTALL.md

FVWM
====

Download:
* https://github.com/rasatpc/Xfce-FvwmEXT/archive/refs/heads/main.zip

Extract the copy subfolders to ~/.fvwm

XFCE
====

Load Fvwm at login:
* `cp .fvwm/Xfce-FvwmEXT-main/setup/autostart/XfceFvwm2-3.desktop ~/.config/autostart`

OR create XfceFvwm2-3.desktop with below content. (At startup a script checks if Fvwm2 or 3 and replaces with correct desktop file).

---------

[Desktop Entry]

Exec=fvwm --replace

Exec=fvwm3 --replace

-------


# FVWM EXTENSION DEPENDENCIES

Required by Extention Installer:
* sudo apt install yad gawk sed wget
* sudo pacman -Syu yad gawk sed wget
* sudo dnf install yad gawk sed wget

Required by Thumbnails:
* sudo apt install imagemagick-common
* sudo pacman -Syu imagemagick
* sudo dnf install ImageMagick xwd

FvwmButton configs to adjust as per screen resolution:
* sudo apt install x11-utils
* sudo pacman -Syu xorg-xdpyinfo
* sudo dnf install xdpyinfo

# OPTIONAL

Search app:
* sudo apt install rofi
* sudo pacman -Syu rofi
* sudo dnf install rofi

Copy .fvwm/setup/rofi to .config/

Touchpad:
* sudo apt install xserver-xorg-input-synaptics
* sudo pacman -Syu xf86-input-synaptics
* sudo dnf install xorg-x11-drv-synaptics

Read more in .fvwm/setup/install.txt
