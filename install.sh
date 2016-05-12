path_dir="$HOME/.dotfiles"
mkdir "$path_dir"

common_url="https://github.com/wikibootup"
link_path="\$HOME/.config"

# zsh
git clone "$common_url/zshrc" "$path_dir/zshrc"
cd "$path_dir/zshrc" && sh install.sh
echo "source $link_path/zsh/zshrc" >> $HOME/.zshrc

# nvim
git clone "$common_url/nvimrc" "$path_dir/nvimrc"
cd "$path_dir/nvimrc" && sh install.sh

# tmux
git clone "$common_url/tmuxrc" "$path_dir/tmuxrc"
cd "$path_dir/tmuxrc" && sh install.sh
ln -s $HOME/.config/tmux/tmux.conf $HOME/.tmux.conf
