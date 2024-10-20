function gci
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
