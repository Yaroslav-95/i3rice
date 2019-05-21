#!/bin/sh

sudo pacman -Sy --noconfirm networkmanager network-manager-applet networkmanager-openvpn neovim dbus i3-gaps tmux htop dmenu mupdf ranger mopidy ncmpcpp mpc mpv mplayer dunst cronie feh scrot slop maim ffmpeg w3m xcape youtube-dl newsboat wget curl arandr firefox chromium gimp inkscape xclip xorg gcc make fontconfig pkg-config lxappearance papirus-icon-theme alsa-utils imagemagick ntfs-3g unzip unrar gnome-themes-standard gtk-engine-murrine telegram-desktop qt5ct r udisks2 xdotool xssstate sxiv perl-term-readline-gnu transmission-cli python-neovim python2-neovim python-pip calcurse acpi acpid gnupg powerline powerline-vim powerline-fonts python-pygit2 polkit polkit-gnome zathura zathura-pdf-mupdf zathura-djvu gst-libav vifm ffmpegthumbnailer

# Install AUR helper
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S --noconfirm ttf-symbola cli-visualizer compton-tryone-git stig python-ueberzug pam-gnupg mutt-wizard-git

# Laptop
sudo pacman -S --noconfirm xf86-video-intel

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
