#!/bin/fish

function dotfiles-init
    git init --bare $HOME/.dotfiles $argv	
end

