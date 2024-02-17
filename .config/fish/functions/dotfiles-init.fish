function dotfiles-init
    mkdir -p "$HOME/.local/share/dotfiles"
    git init --bare "$HOME/.local/share/dotfiles" $argv	
end
