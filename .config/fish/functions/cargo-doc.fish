function cargo-doc
    cargo doc
    python -m http.server -d target/doc &

    set -l server_pid (jobs --pid)

    sleep 0.5
    xdg-open "http://localhost:8000/$(basename $PWD)"

    fg $server_pid
end
