function gci
    if not git rev-parse --is-inside-work-tree >/dev/null 2>&1
        echo "Not inside a Git repository."
        return
    end

    git branch --format '%(refname:short)' |
        fzf \
            # Search
            --no-sort \
            # Interface
            --bind=btab:up,tab:down \
            --cycle \
            --keep-right \
            # Layout
            --border=sharp \
            --height=45% \
            --info=inline \
            --layout=reverse |
        xargs \
            --no-run-if-empty \
            git \
            checkout
end
