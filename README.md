# Dotfiles

My dotfiles for Linux.

## Installation

```shell
git clone --bare git@github.com:LechintanTudor/dotfiles.git "$HOME/.local/share/dotfiles"
git --git-dir="$HOME/.local/share/dotfiles" --work-tree="$HOME" checkout -f
bat cache --build
```

## Theme

- Color scheme: [catppuccin](https://github.com/catppuccin/catppuccin)
- Font: [iosevka](https://github.com/be5invis/Iosevka)

## Core Programs

- Terminal: [ghostty](https://github.com/ghostty-org/ghostty)
- Shell: [fish](https://github.com/fish-shell/fish-shell)
- Text editor: [helix](https://github.com/helix-editor/helix)
- GUI text editor: [zed](https://github.com/zed-industries/zed)

## Program Replacements

- `cat` replacement: [bat](https://github.com/sharkdp/bat)
- `cd` replacement: [zoxide](https://github.com/ajeetdsouza/zoxide)
- `find` replacement: [fd](https://github.com/sharkdp/fd)
- `grep` replacement: [ripgrep](https://github.com/BurntSushi/ripgrep)
- `ls` replacement: [lsd](https://github.com/lsd-rs/lsd)
- `sudo` replacement: [doas](https://github.com/Duncaen/OpenDoas)
