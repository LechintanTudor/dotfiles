function arch-up
    echo 'Updating Arch...'
    paru
    echo

    echo 'Updating Flatpaks...'
    flatpak update -y
    echo
end
