#!/bin/bash

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ping4='ping -c 4'


alias ll="ls -l"
alias ls='ls -hF --color=auto'
alias l='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -alh'
alias la='ll -A'
alias lm='la | less'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

