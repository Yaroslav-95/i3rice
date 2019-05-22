#!/bin/sh

sudo pacman -Sy --noconfirm networkmanager network-manager-applet networkmanager-openvpn neovim dbus lightdm i3-gaps tmux htop dmenu mupdf mopidy ncmpcpp mpc mpv mplayer dunst cronie feh scrot slop maim ffmpeg w3m xcape youtube-dl youtube-viewer newsboat wget curl arandr firefox gimp inkscape xclip xorg gcc make fontconfig pkg-config fakeroot lxappearance papirus-icon-theme alsa-utils pulseaudio imagemagick ntfs-3g unzip unrar gnome-themes-standard gtk-engine-murrine telegram-desktop qt5ct r udisks2 xdotool xssstate sxiv perl-term-readline-gnu transmission-cli python-neovim python-pip calcurse acpi acpid gnupg noto-fonts-cjk powerline-fonts python-pygit2 polkit polkit-gnome zathura zathura-pdf-mupdf zathura-djvu gst-libav vifm ffmpegthumbnailer blueman bluez acpilight

# Install AUR helper
#cd /tmp
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si

yay -S --noconfirm ttf-symbola cli-visualizer compton-tryone-git stig python-ueberzug pam-gnupg mutt-wizard-git lightdm-mini-greeter i3lock-color-git ncmpamixer

# Laptop
sudo pacman -S --noconfirm xf86-video-intel

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

# Copy system config files
cp lightdm.conf /etc/lightdm/
cp lightdm-mini-greeter.conf /etc/lightdm/
cp sudoers /etc/
cp 90-backlight.rules /etc/udev/rules.conf.d/
cp hotspot.service /etc/systemd/system/
cp startupsound.service /etc/systemd/system/
