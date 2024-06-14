function arch-up
    echo 'Updating Arch...'
    paru
    echo

    echo 'Updating Flatpaks...'
    flatpak update -y
    echo

    echo 'Updating Rust programs...'
    cargo install-update --all
    echo
end
