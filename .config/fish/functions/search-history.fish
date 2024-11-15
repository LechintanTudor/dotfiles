function search-history
    set command (history | fzf)
    commandline -f repaint

    if test -n "$command"
        commandline -- $command
    end
end
