# Dotfiles

My dotfiles for Linux.

## Installation

```shell
git clone --bare git@github.com:LechintanTudor/dotfiles.git "$HOME/.local/share/dotfiles"
git --git-dir="$HOME/.local/share/dotfiles" --work-tree="$HOME" checkout -f
```

## Theme

- Color scheme: [catppuccin](https://github.com/catppuccin/catppuccin)
- Font: [iosevka](https://github.com/be5invis/Iosevka) nerd

## Core Programs

- Terminal emulator: [alacritty](https://github.com/alacritty/alacritty)
- Terminal multiplexer: [zellij](https://github.com/zellij-org/zellij)
- Shell: [fish](https://github.com/fish-shell/fish-shell)
- Text editor: [helix](https://github.com/helix-editor/helix)

## Program Replacements

- `cat` replacement: [bat](https://github.com/sharkdp/bat)
- `cd` replacement: [zoxide](https://github.com/ajeetdsouza/zoxide)
- `find` replacement: [fd](https://github.com/sharkdp/fd)
- `grep` replacement: [ripgrep](https://github.com/BurntSushi/ripgrep)
- `ls` replacement: [lsd](https://github.com/lsd-rs/lsd)
