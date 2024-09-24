# If not running interactively, don't do anything
[[ $- != *i* ]] && return

COLOR_GREEN='\[\e[32m\]'
COLOR_NORMAL='\[\e[00m\]'

PS1="[$COLOR_GREEN\W$COLOR_NORMAL]\$ "
