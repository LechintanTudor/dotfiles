# Disable startup message
set -U fish_greeting

# Environment
set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

# Bindings
bind \ce helix

# Program abbreviations 
abbr -a cd.. cd ..
abbr -a hx helix
abbr -a vi nvim
abbr -a vim nvim

# Program replacements
type -q bat && alias cat bat
type -q fd && alias find fd
type -q lsd && alias ls lsd
type -q rg && alias grep rg
type -q zoxide && zoxide init --cmd cd fish | source

# Zellij integration
function zellij_update_name --on-variable PWD
    if not set -q ZELLIJ
        return
    end

    if test $PWD = $HOME
        set -f directory '~'
    else
        set -f directory $(basename $PWD)
    end

    zellij action rename-pane $directory
end

zellij_update_name
