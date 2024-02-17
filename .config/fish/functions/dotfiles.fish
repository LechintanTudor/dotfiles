function dotfiles
    git --git-dir="$HOME/.local/share/dotfiles" --work-tree="$HOME" $argv
end
