# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

COLOR_GREEN='\[\e[32m\]'
COLOR_NORMAL='\[\e[00m\]'

PS1="$COLOR_GREEN\u@\h$COLOR_NORMAL:$COLOR_GREEN\W$COLOR_NORMAL\$ "

