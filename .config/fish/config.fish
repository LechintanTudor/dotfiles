# Disable startup message
set -U fish_greeting

# Environment
set -gx EDITOR /bin/helix
set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

# Bindings
bind \ce $EDITOR

# Program abbreviations 
abbr -a c cargo
abbr -a cd.. cd ..
abbr -a cr cargo run
abbr -a crr cargo run --release
abbr -a dfs dotfiles
abbr -a dfsa dotfiles add .
abbr -a dfss dotfiles status
abbr -a g git
abbr -a ga git add .
abbr -a gs git status
abbr -a hx helix
abbr -a vim nvim
abbr -a vi nvim

# Program replacements
type -q bat && alias cat bat
type -q fd && alias find fd
type -q lsd && alias ls lsd
type -q rg && alias grep rg
type -q zoxide && zoxide init --cmd cd fish | source

# Zellij integration
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
