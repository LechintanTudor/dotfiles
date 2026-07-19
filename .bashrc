# Exit early if not running interactively.
[[ $- != *i* ]] && return

#
# Custom prompt
#

COLOR_GREEN='\[\e[32m\]'
COLOR_NORMAL='\[\e[00m\]'

PS1="[$COLOR_GREEN\W$COLOR_NORMAL]\$ "

#
# Paths
#

PATH="$PATH:$HOME/.cargo/bin"
PATH="$PATH:$HOME/.local/bin/odin"
PATH="$PATH:$HOME/.local/bin/scripts"

#
# Environment
#

EDITOR='helix'
SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
VCPKG_ROOT="$HOME/.local/share/vcpkg"

#
# Program aliases
#

# Cargo
alias c='cargo'
alias cb='cargo build'
alias cbr='cargo build --release'
alias cr='cargo run'
alias crr='cargo run --release'

# Docker
alias d='docker'
alias dc='docker compose'
alias dr='docker run --rm -it'

# Dotfiles
alias dfs='dotfiles'
alias dfsa='dotfiles add .'
alias dfss='dotfiles status'

# Git
alias g='git'
alias ga='git add .'
alias gs='git status'

# Change directory
alias cd-='cd -'
alias cd..='cd ..'

# List files
alias ll='ls -l'

# Editors
alias hx='helix'
alias vim='nvim'
alias vi='nvim'

# Other
alias ff='fastfetch'
alias j='just'

#
# Program replacements
#

type -t bat >/dev/null && alias cat='bat' && alias cats='bat -pp'
type -t doas >/dev/null && alias sudo='doas'
type -t lsd >/dev/null && alias ls='lsd'
type -t zoxide >/dev/null && eval "$(zoxide init --cmd cd bash)"

#
# Program configuration
#

# Fzf
FZF_DEFAULT_OPTS='
    --bind=btab:up,tab:down
    --border=sharp
    --cycle
    --height=45%
    --info=inline
    --layout=reverse
    --no-sort

    --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8
    --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc
    --color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8
    --color=selected-bg:#45475a
    --color=border:#6c7086,label:#cdd6f4
'

#
# Functions
#

# Helix
helix() {
    command helix "$@"
    printf '\033[0 q'
}

# Dotfiles
dotfiles() {
    git --git-dir="$HOME/.local/share/dotfiles" --work-tree="$HOME" "$@"
}
