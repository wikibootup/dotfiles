#!/bin/bash

# References
# - https://github.com/dahlia/nvimrc/blob/master/install.sh

oh_my_zsh=$HOME/.oh-my-zsh
if [[ ! -d "$oh_my_zsh" ]]
then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Install plugins using oh-my-zsh
git clone https://github.com/agkozak/zsh-z.git $oh_my_zsh/plugins/z

ln -sf $HOME/dotfiles/dotfiles_zsh/.zshrc $HOME/.zshrc

