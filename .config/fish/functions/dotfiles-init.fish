#!/bin/fish

function dotfiles-init
    git init --bare "$HOME/.local/share/dotfiles" $argv	
end

