# Yaroslav's i3 rice

My own config files for my setup of i3wm/i3-gaps. I started set up i3 on Manjaro, but it should work on any distro. Mostly based on the default i3 config of Manjaro, and Luke Smith's dotfiles. Most scripts were taken/modified from Luke Smith's dotfiles.

## Programs/Packages

### From manjaro's official repositories

`pacman -S i3-gaps python polybar compton mupdf ranger mopidy ncmpcpp mpc mpv gvim dunst cronie feh networkmanager network-manager-applet scrot tmux alsamixer i3-scrot i3exit ffmpeg w3m xcape youtube-dl youtube-viewer newsboat wget python-pywal arandr firefox xclip xorg-xprop xorg-xwininfo`

### On Void

In this repo, there's a script for installing all of the needed packages for this config called `install.sh` on Void Linux. There's also `setup.sh` to start the necessary services like LightDM to login gracefully, NetworkManager, dbus, etc,; and copies all of the dotfiles in this repo to your home folder.

If you also want to game on Void Linux, there's a `gaming.sh` that installs Steam, Lutris and all the needed libraries for Nvidia GPUs. You should modify it if you use an AMD card.

### External packages

* st (my own fork)
* i3lock-color (AUR)
* ttf-ms-fonts (AUR)

## Theme(s)

GTK theme: Oomox-customized Materia Dark based theme (under .themes, might need to install the original Materia Dark theme)

Icon theme: Papirus
