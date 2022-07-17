#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '



source .shells/intro.sh
source .shells/media.sh
source .shells/myapps.sh
source .shells/pacman.sh
source .shells/path.sh
source .shells/system.sh
source .shells/tools.sh
