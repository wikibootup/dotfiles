path_dir="$HOME/.dotfiles"
if [[ ! -d "$path_dir" ]]
then
  mkdir "$path_dir"
fi

common_url="https://github.com/wikibootup"
link_path="\$HOME/.config"

# .config
if [[ ! -d "$link_path" ]]
then
  mkdir "$link_path"
fi

# zsh
if [[ ! -d "$path_dir/zshrc" ]]
then
  git clone "$common_url/zshrc" "$path_dir/zshrc"
  /bin/bash "$path_dir/zshrc/install.sh"
  echo "source $link_path/zsh/zshrc" >> $HOME/.zshrc
else
  echo "Zsh already exsits in $common_url/zshrc"
fi

# nvim
if [[ ! -d "$path_dir/nvimrc" ]]
then
  git clone "$common_url/nvimrc" "$path_dir/nvimrc"
  /bin/bash "$path_dir/nvimrc/install.sh"
else
  echo "Neovim already exsits in $common_url/nvimrc"
fi

# tmux
if [[ ! -d "$path_dir/tmuxrc" ]]
then
  git clone "$common_url/tmuxrc" "$path_dir/tmuxrc"
  /bin/bash "$path_dir/tmuxrc/install.sh"
else
  echo "Tmux already exsits in $common_url/tmuxrc"
fi
