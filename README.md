# .dotfiles

## Overview

These are my dotfiles for use on arch and ubuntu based linux distributions.
It includes:

- neovim ([submodule](https://github.com/gabrielforster/nvim))
- zsh ([submodule](https://github.com/gabrielforster/zsh))
- i3 ([submodule](https://github.com/gabrielforster/i3))
- alacritty
- tmux
- rofi
- git
- glow
- personal scripts

## Setup

1. Clone the repo

```bash
cd ~
```

```bash
git clone --bare git@github.com:gabrielforster/dotfiles.git .dotfiles
```

2. Include the dotfiles alias in .bashrc / .zshrc

```bash
echo alias dotfiles=\"git --git-dir='$HOME'/.dotfiles --work-tree='$HOME'\" >> .bashrc
```

```bash
source ~/.bashrc
```
Avoid tracking files not in the repo.

```bash
dotfiles config status.showUntrackedFiles no
```

Move the files to their locations.

```bash
dotfiles checkout
```

3. Install the submodules
```bash
cd ~
dotfiles submodule update --init --recursive
```

4. Checkout to master branch on submodules 
```bash
dotfiles submodule foreach 'git checkout master'
```

## Usage

Once setup, useful commands include:

```bash
dotfiles status
dotfiles add <filename> # to add dotfiles changes
dotfiles add -u # to add unstaged files
```
