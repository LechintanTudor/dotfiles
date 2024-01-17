function cargo-doc
    set -f directory $(basename $PWD)

    cargo doc
    python -m http.server -d target/doc &

    set -f server_pid $(jobs --pid)

    sleep 0.5
    xdg-open "http://localhost:8000/$directory/index.html"

    fg $server_pid
end
