17 April 2022
# HOW TO INSTALL myEXT and FVWM3 (or Fvwm2)

myEXT:
One time install and then updgrade with the Extension Installer.

Download:
* https://github.com/rasatpc/FVWM3-myEXT/archive/refs/heads/main.zip

Extract and copy subfolders to ~/.fvwm

# FVWM3 INSTALL & DEPENDENCIES 

Install Fvwm3 package `(if available)` or Fvwm2

Debian based Linux:
* sudo apt install fvwm3

Arch Linux:
* sudo yay -S fvwm3

Fedora:
* sudo dfn install fvwm3

# Installing from Git FVWM3:

Important dependencies for installation and usage.

CORE
====

Debian:
* sudo apt-get install libevent-dev libx11-dev libxrandr-dev libxrender-dev libxt-dev libxft-dev

Arch Linux:
* sudo pacman -Syu libevent-dev libx11-dev libxrandr-dev libxrender-dev libxt-dev libxft-dev

Fedora:
* sudo dnf install libevent-devel libX11-devel libXrandr-devel libXt-devel libXft-devel


To generate/view fvwm3's documentation, XDG menu, and Network:
===============================================================
* sudo apt-get install asciidoctor xterm python3-xdg stalonetray
* sudo pacman -Syu asciidoctor xterm python3-xdg stalonetray
* sudo dnf install rubygem-asciidoctor xterm xdg-utils stalonetray

OPTIONAL
========

Debian:
* sudo apt-get install libfribidi-dev libncurses5-dev libpng-dev libreadline-dev libxcursor-dev libxpm-dev sharutils

Arch Linux:
* sudo pacman -Syu libfribidi-dev libncurses5-dev libpng-dev libreadline-dev libxcursor-dev libxpm-dev sharutils

Fedora:
* sudo dnf install fribidi-devel ncurses-devel libpng-devel readline-devel libXcursor-devel libXpm-devel sharutils

Make & install command dependencies:
====================================
* sudo apt-get install automake dh-autoreconf autogen
* sudo pacman -Syu automake autoreconf autogen
* sudo dnf install automake dh-autoreconf autogen

Install FVWM3
=============

* git clone https://github.com/fvwmorg/fvwm3.git
* cd fvwm3
* ./autogen.sh
* ./configure --enable-mandoc
* make
* sudo make install

Read dev-docs/INSTALL.md

# For login manager
* COPY ~/.fvwm/setup/fvwm.desktop to /usr/share/xsessions/

OR create fvwm.desktop with below content.

---------

[Desktop Entry]

Name=Fvwm3

Keywords=Fvwm Window Manager

Comment=F? Virtual Window Manager

Exec=fvwm3

Terminal=False

TryExec=fvwm3

Type=Application

[Window Manager]

SessionManaged=true

-------

# myEXT DEPENDENCIES

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

# myEXT OPTIONAL

Volume Icon (add icon in system tray):
* sudo apt install volumeicon-alsa
* sudo pacman -Syu volumeicon
* sudo dnf install volumeicon

Search app:
* sudo apt install rofi
* sudo pacman -Syu rofi
* sudo dnf install rofi

Copy .fvwm/setup/rofi to .config/

* sudo apt install xfce4-appfinder
* sudo pacman -Syu xfce4-appfinder
* sudo dnf install xfce4-appfinder

Look & Feel:
* sudo apt install lxappearance
* sudo pacman -Syu lxappearance
* sudo dnf install lxappearance

Touchpad:
* sudo apt install xserver-xorg-input-synaptics
* sudo pacman -Syu xf86-input-synaptics
* sudo dnf install xorg-x11-drv-synaptics

Read more in .fvwm/setup/install.txt
