function dotfiles-init
    git init --bare $HOME/.dotfiles $argv	
end

function dotfiles
    git --git-dir=$HOME/.dotfiles --work-tree=$HOME $argv
end
