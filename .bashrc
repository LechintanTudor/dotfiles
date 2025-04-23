[[ $- != *i* ]] && return

#
# Custom prompt
#

COLOR_GREEN='\[\e[32m\]'
COLOR_NORMAL='\[\e[00m\]'

PS1="[$COLOR_GREEN\W$COLOR_NORMAL]\$ "

#
# Abbreviations
#

alias ff='fastfetch'

#
# Program replacements
#

type -t bat >/dev/null && alias cat='bat'
type -t doas >/dev/null && alias sudo='doas'
type -t fd >/dev/null && alias find='fd'
type -t lsd >/dev/null && alias ls='lsd'
type -t rg >/dev/null && alias grep='rg'
type -t zoxide >/dev/null && eval "$(zoxide init bash)"
