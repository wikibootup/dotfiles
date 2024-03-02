# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# @author     wikibootup <http://github.com/wikibootup>
  # @license    http://opensource.org/licenses/gpl-license.php
  # References
  # - https://github.com/seebi/zshrc
  # - https://github.com/dahlia/nvimrc

  # oh-my-zsh settings
  # @NOTE - It should be placed at the top
  export OH_MY_ZSH_PATH=$HOME/.oh-my-zsh
  ZSH_THEME="agnoster"
  source $OH_MY_ZSH_PATH/oh-my-zsh.sh

  # source all the zsh configurations
  zsh_dir="$HOME/dotfiles/dotfiles_zsh"
  # source "$zsh_dir/environment.zsh"  # It causes a lag
  source "$zsh_dir/aliases.zsh"
  source "$zsh_dir/plugins.zsh"

  # Brew packages list (github.com/wikibootup/dotfiles/brew-packages.txt)
  . $HOMEBREW_PREFIX/etc/profile.d/z.sh  # z {name}  // Go to a path that contains name
  . $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  # pyenv
  eval "$(pyenv init -)"

  # @NOTE - It makes zsh init slow. Therefore it was commented.
  # NVM : Node version manager
  # https://github.com/creationix/nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

  # For rabbitmq-server
  export PATH=$PATH:/usr/local/sbin

  # Terminal history by up/down arrow key
  export HISTCONTROL=ignoreboth
  # After each command, save and reload history
  export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# n
 export N_PREFIX=$HOME/.n
 export PATH=$N_PREFIX/bin:$PATH

