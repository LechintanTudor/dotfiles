function arch-up
    echo '[1/5] Updating Arch packages...'
    paru
    echo

    echo '[2/5] Deleting orphaned Arch packages...'
    pacman -Qdtq | xargs -r doas pacman -Rns
    echo

    echo '[3/5] Updating Flatpaks...'
    flatpak update -y
    echo

    echo '[4/5] Deleting unused Flatpaks...'
    flatpak remove --unused
    echo

    echo '[5/5] Updating Rust programs...'
    cargo install-update --all
    echo
end
