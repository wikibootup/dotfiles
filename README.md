# wikibootup's dotfiles

![vim-edit-screen-2](https://github.com/wikibootup/dotfiles/assets/6479173/8cb4d267-8abc-4175-9d29-4f91a27da07e)


🙌 This repo is a guide repo for setting up my initial laptop development environment.

1. 🍎 I am a Mac OS X user, and I install the initial required packages using [Homebrew](https://brew.sh/) including `brew cask` commands. For more details, you can read [mac/README.md](https://github.com/wikibootup/dotfiles/blob/master/mac/README.md)
2. 🧰 I use iTerm as a terminal, Zsh as a shell, Neovim as a text editor, and Tmux as a screen multiplexer, editor as [Visual Studio Code](https://code.visualstudio.com/) with some customization.
3. 🤖 I have partially automated processes “1” and “2” in the [dotfiles](https://github.com/wikibootup/dotfiles) repo.

The basic settings of Code Editor are as follows.
- Text editor mode is Vim
- The theme is [Drakula](https://draculatheme.com/)
- Code editor is VS Code. [Here](https://github.com/wikibootup/dotfiles/blob/master/vscode/README.md) is the doc for my custom configurations

***

## Installation

1. Install Brew
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Clone Dotfiles
```sh
$ brew install git
$ git clone git@github.com:wikibootup/dotfiles.git ~/dotfiles
```

3. Install brew packages (including cask packages)
```sh
// From your project root path
$ cd dotfiles_mac && ./install-brew-packages.sh
```

4. Do dotfiles configuration
- It contains zsh, neovim, tmux configs
```sh
// From your project root path
$ ./install-dotfiles.sh
```

5. Follow additional guides from `dotfiles_*/README.md`

