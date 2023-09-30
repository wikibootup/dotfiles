#!/bin/bash

# Dot file path configuration
path_dir="$HOME/dotfiles"
mkdir -p "$path_dir"

common_url="https://github.com/wikibootup"
link_path="\$HOME/dotfiles"

if [[ ! -d "$link_path" ]]
then
  mkdir -p "$link_path"
fi

# zsh
cd "$path_dir/dotfiles_zsh" && ./install.sh

# nvim
cd "$path_dir/dotfiles_nvim" && ./install.sh

# tmux
cd "$path_dir/dotfiles_tmux" && ./install.sh

