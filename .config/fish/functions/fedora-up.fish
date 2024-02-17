function fedora-up
    echo 'Updating Fedora...'
    sudo dnf -y upgrade
    echo

    echo 'Updating Flatpaks...'
    flatpak update -y
    echo
end
