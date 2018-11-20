#!/bin/sh

[[ -f ~/.bashrc ]] && source ~/.bashrc

export PATH=$PATH:$HOME/.scripts
export SCROT_DIR=$HOME/Pictures/screenshots/
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export QT_QPA_PLATFORMTHEME="qt5ct"

# User specific environment and startup programs:
export LANG=en_US.UTF-8
export TERM=st
