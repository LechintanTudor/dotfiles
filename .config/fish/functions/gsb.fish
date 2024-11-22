function gsb
    if not git rev-parse --is-inside-work-tree >/dev/null 2>&1
        echo 'Not inside a Git repository.'
        return
    end

    git branch --format '%(refname:short)' |
        fzf |
        xargs \
            --no-run-if-empty \
            git \
            switch
end
