path_dir="$HOME/.dotfiles"
mkdir -p "$path_dir"

common_url="https://github.com/wikibootup"
link_path="\$HOME/.config"

# make .config
mkdir -p "$link_path"

# zsh
if [[ ! -d "$path_dir/zshrc" ]]
then
  git clone "$common_url/zshrc" "$path_dir/zshrc"
  cd "$path_dir/zshrc" && sh install.sh
  echo "source $link_path/zsh/zshrc" >> $HOME/.zshrc
else
  echo "Zsh already exsits in $common_url/zshrc"
fi

# nvim
if [[ ! -d "$path_dir/nvimrc" ]]
then
  git clone "$common_url/nvimrc" "$path_dir/nvimrc"
  cd "$path_dir/nvimrc" && sh install.sh
else
  echo "Neovim already exsits in $common_url/nvimrc"
fi

# tmux
if [[ ! -d "$path_dir/tmuxrc" ]]
then
  git clone "$common_url/tmuxrc" "$path_dir/tmuxrc"
  cd "$path_dir/tmuxrc" && sh install.sh
else
  echo "Tmux already exsits in $common_url/tmuxrc"
fi
