#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export PATH="$HOME/.local/bin:$PATH"
alias pycharm="bash pycharm-2022.1.3/bin/pycharm.sh"

source .shells/git
source .shells/alias

# Welcome message
date '+%A, %B %-d %Y'
# sudo pacman -S neofetch
neofetch --off --color_blocks off --underline off --disable host theme icons shell host
