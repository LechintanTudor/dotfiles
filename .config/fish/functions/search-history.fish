function search-history
    set command (history | fzf)

    if test -n "$command"
        commandline -f repaint
        commandline -- $command
    end
end
