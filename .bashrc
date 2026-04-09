# Exit early if not running interactively.
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

type -t bat >/dev/null && alias cat='bat' && alias cats='bat -pp'
type -t doas >/dev/null && alias sudo='doas'
type -t lsd >/dev/null && alias ls='lsd'
type -t zoxide >/dev/null && eval "$(zoxide init bash)"
