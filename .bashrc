stty -ixon
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.

# Setting Bash prompt. Capitalizes username and host if root user (my root user uses this same config file).
#if [ "$EUID" -ne 0 ]
#	then export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
#	else export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]ROOT\[$(tput setaf 2)\]@\[$(tput setaf 4)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
#fi

source ~/.scripts/git-prompt.sh
#export PS1="\[\033[30;43m\][\t]\[$(tput sgr0)\]\[\033[33;40m\]\[\033[38;5;12m\]\$(__git_ps1) $(tput sgr0)\]\[\033[38;5;2m\]\u\[$(tput sgr0)\]\[\033[38;5;3m\]@\[$(tput sgr0)\]\[\033[38;5;2m\]\h:\[$(tput sgr0)\]\[\033[38;5;38m\]\w\[$(tput sgr0)\]\[\033[38;5;6m\]\n\[$(tput sgr0)\]\[\033[38;5;2m\]>\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export PS1="\[\033[30;48;5;9m\] \$(__git_ps1)\[$(tput sgr0)\]\[\033[48;5;11;38;5;9m\]\[\033[30m\] \u \[\033[38;5;11;48;5;6m\]\[\033[38;5;0m\] \h \[$(tput sgr0)\]\[\033[38;5;6;48;5;0m\]\[\033[38;5;38m\] \w\[$(tput sgr0)\]\[\033[00;38;5;0m\]\n\[$(tput sgr0)\]\[\033[48;5;0;38;5;2m\]\$\[$(tput sgr0)\]\[\033[00;38;5;0m\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput sgr0)\]"

export PATH=$PATH:$HOME/.scripts
export EDITOR="nvim"
export TERMINAL="rxvt"
export BROWSER="firefox"
export MOZ_USE_XINPUT2=1

# User specific environment and startup programs:
export LANG=en_US.UTF-8
export TERM=rxvt

#Generic shortcuts:
alias music="ncmpcpp"
alias clock="ncmpcpp -s clock"
alias visualizer="ncmpcpp -s visualizer"
alias news="newsboat"
alias email="neomutt"
alias files="ranger"
alias audio="ncpamixer"
alias calendar="calcurse"

#Mounting drive shortcuts
alias mnt="udisksctl mount -b"
alias umnt="udisksctl unmount -b"
alias dlock="udisksctl lock -b"
alias dulock="udisksctl unlock -b"

# System Maintainence
alias progs="(pacman -Qet && pacman -Qm) | sort -u" # List programs I've installed
alias orphans="pacman -Qdt" # List orphan programs
alias nf="clear && neofetch" # Le Redditfetch
#Install an AUR package manually (for Parabola to get AUR access):

# Some aliases
alias p="sudo pacman"
alias SS="sudo systemctl"
alias v="nvim"
alias r="ranger"
alias sr="sudo ranger"
alias ka="killall"
alias g="git"
alias gitup="git push origin master"
alias rf="source ~/.bashrc"
alias ref="shortcuts.sh && source ~/.bashrc" # Refresh shortcuts manually and reload bashrc
weath() { curl wttr.in/$1 ;} # Check the weather (give city or leave blank).

# Adding color
eval `dircolors ~/.dir_colors`
alias ls='ls -hN --color=auto --group-directories-first'
alias crep="grep --color=always" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=xterm256" #Color cat - print file with syntax highlighting.

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="youtube-dl --add-metadata -xic" # Download only audio
alias YT="youtube-viewer"
alias starwars="telnet towel.blinkenlights.nl"

# Audio and Music
alias mute="pamixer -m"
alias unmute="pamixer -u"
alias vu="pamixer --allow-boost -i 5"
alias vd="pamixer --allow-boost -d 5"
alias pause="mpc toggle"
alias next="mpc next"
alias prev="mpc prev"
alias trupause="mpc pause"
alias beg="mpc seek 0%"
alias lilbak="mpc seek -10"
alias lilfor="mpc seek +10"
alias bigbak="mpc seek -120"
alias bigfor="mpc seek +120"

# Tmux git
#if [[ $TMUX ]]; then source ~/.scripts/tmux-git.sh; fi

