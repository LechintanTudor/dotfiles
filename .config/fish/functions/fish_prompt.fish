function fish_prompt
    if test $PWD = $HOME
        set -f directory '~'
    else
        set -f directory (basename $PWD)
    end

    if fish_is_root_user
        set -f color red
        set -f symbol '# '
    else
        set -f color green
        set -f symbol '$ '
    end

    set_color $color
    echo -n $USER@$hostname

    set_color normal
    echo -n ':'

    set_color $color
    echo -n $directory

    set -f git_prompt (fish_git_prompt %s)

    if test -n "$git_prompt"
        set_color normal
        echo -n ':'

        set_color magenta
        echo -n $git_prompt
    end

    set_color normal
    echo -n $symbol
end
