function fish_prompt
    if test $PWD = $HOME
        set -f directory '~'
    else
        set -f directory (basename $PWD)
    end

    set -f color $fish_color_cwd

    if fish_is_root_user
        set -f symbol '# '

        if set -q fish_color_cwd_root
            set -f color $fish_color_cwd_root
        end
    else
        set -f symbol '$ '
    end

    set_color $color
    echo -n $USER@$hostname

    set_color normal
    echo -n :

    set_color $color
    echo -n $directory

    set_color normal
    echo -n $symbol
end
