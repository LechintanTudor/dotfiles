# Disable startup message
set -U fish_greeting

# Bindings
bind \ce 'clear; commandline -f repaint'

# Directory navigation shortcut
abbr -a cd.. cd ..

# Program abbreviations 
abbr -a hx helix
abbr -a vi nvim
abbr -a vim nvim

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
