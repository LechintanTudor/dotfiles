function tf -a filename
    mkdir -p -- (dirname $filename) && touch -- $filename
end
