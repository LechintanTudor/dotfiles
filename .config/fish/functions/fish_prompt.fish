#!/bin/fish

function fish_prompt
    set -l directory '~'

    if test $PWD != $HOME 
        set directory (basename $PWD)
    end

    set -l symbol '$ '
    set -l color $fish_color_cwd

    if fish_is_root_user
        set symbol '# '
        set -q fish_color_cwd_root
        and set color $fish_color_cwd_root
    end

    echo -n [$USER@$hostname\ 

    set_color $color
    echo -n $directory
    set_color normal

    echo -n ]$symbol
end

