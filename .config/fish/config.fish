# Disable startup message
set -U fish_greeting

#
# Paths
#

fish_add_path -P "$HOME/.cargo/bin"
fish_add_path -P "$HOME/.local/bin/odin"
fish_add_path -P "$HOME/.local/bin/scripts"

#
# Environment
#

set -gx EDITOR helix
set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

#
# Keybindings
#

bind \ce $EDITOR
bind \cn 'xdg-open .'
bind \cq search-history

#
# Program abbreviations
#

# Change directory
abbr -a cd- cd -
abbr -a cd.. cd ..

# Cargo
abbr -a cb cargo build
abbr -a cbr cargo build --release
abbr -a c cargo
abbr -a cr cargo run
abbr -a crr cargo run --release

# Docker
abbr -a d docker
abbr -a dc docker compose
abbr -a dr docker run --rm -it

# Dotfiles
abbr -a dfsa dotfiles add .
abbr -a dfs dotfiles
abbr -a dfss dotfiles status
abbr -a --set-cursor dfsc dotfiles commit -m \'%\'

# Git
abbr -a ga git add .
abbr -a g git
abbr -a gs git status
abbr -a --set-cursor gc git commit -m \'%\'

# Editors
abbr -a hx helix
abbr -a vim nvim
abbr -a vi nvim

# Other
abbr -a ff fastfetch

#
# Program replacements
#

type -q bat && alias cat bat && alias cats 'bat -pp'
type -q doas && alias sudo doas
type -q lsd && alias ls lsd
type -q zoxide && zoxide init --cmd cd fish | source

#
# Program configuration
#

# Fzf
set -gx FZF_DEFAULT_OPTS '
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

# Helix
function helix
    command helix $argv
    printf '\033[0 q'
end

#
# Theme
#

set -g fish_color_autosuggestion 555 brblack
set -g fish_color_cancel -r
set -g fish_color_command blue
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end green
set -g fish_color_error brred
set -g fish_color_escape brcyan
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_host_remote yellow
set -g fish_color_normal normal
set -g fish_color_operator brcyan
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection cyan --bold
set -g fish_color_search_match bryellow --background=brblack
set -g fish_color_selection white --bold --background=brblack
set -g fish_color_status red
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline
set -g fish_pager_color_completion normal
set -g fish_pager_color_description B3A06D yellow -i
set -g fish_pager_color_prefix normal --bold --underline
set -g fish_pager_color_progress brwhite --background=cyan
set -g fish_pager_color_selected_background -r
