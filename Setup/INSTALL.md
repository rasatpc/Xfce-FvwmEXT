9 September 2026

# HOW TO INSTALL AND RUN IN XFCE.

Debian based GNU/Linux:
* sudo apt update
* sudo apt install fvwm3 (or fvwm)

Arch Linux:
* yay -S fvwm3 (or fvwm)

Fedora/OpenSUSE/other RPM-based distros:
* sudo dfn install fvwm3

Alpine Linux:
* apk add fvwm

# FVWM EXTENSION DEPENDENCIES

Required by search apps, thumbnails, and screen resolution:
* sudo apt install imagemagick-common x11-utils xfce4-appfinder
* sudo pacman -Syu imagemagick xorg-xdpyinfo xfce4-appfinder
* sudo dnf install ImageMagick xwd xdpyinfo xfce4-appfinder

# Download Xfce-FvwmEXT:
* https://github.com/rasatpc/Xfce-FvwmEXT/archive/refs/heads/main.zip

Extract and copy subfolders to ~/.fvwm

# Load Fvwm at login
* Automatically runs the line below, which copies the
  Fvwm2-3.desktop file to .config/autostart. 
  cp .fvwm/Setup/autostart/Fvwm2-3.desktop ~/.config/autostart

Alternatively, create `Fvwm2-3.desktop` with the content provided below.

---
[Desktop Entry]

Exec=fvwm --replace
Exec=fvwm3 --replace
---

# Load Xfce at login
  and it is ready to use.
