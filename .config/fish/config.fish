# Disable startup message
set -U fish_greeting

#
# Zellij integration
#

if set -q ZELLIJ
    function zellij_update_name --on-variable PWD
        if test $PWD = $HOME
            set -f directory '~'
        else
            set -f directory $(basename $PWD)
        end

        zellij action rename-pane $directory
    end

    zellij_update_name
end

#
# Environment
#

set -gx EDITOR /bin/helix
set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

#
# Bindings
#

bind \ce $EDITOR

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

# Program replacements
type -q bat && alias cat bat
type -q fd && alias find fd
type -q lsd && alias ls lsd
type -q rg && alias grep rg
type -q zoxide && zoxide init --cmd cd fish | source
