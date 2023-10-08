# wikibootup's dotfiles

![vim-edit-screen-2](https://github.com/wikibootup/dotfiles/assets/6479173/8cb4d267-8abc-4175-9d29-4f91a27da07e)

🙌 This repo is a guide repo for setting up my initial laptop development environment.

- OS: **MAC OS X**
- Shell: **Zsh**
- Terminal text editor: **NeoVim**
- Mac package manager: **[Homebrew](https://brew.sh/)** (including `brew cask`)
- Text editor mode: **[Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)**
- Code Editor: [VS Code](https://code.visualstudio.com/), **[JetBrains](https://www.jetbrains.com/)**
- Theme: **[Drakula](https://draculatheme.com/)**
- CLI helper: **[Fig](https://fig.io/)**
- Chat AI: **[Vim](https://github.com/features/copilot), [VSCode](https://docs.github.com/en/copilot/getting-started-with-github-copilot?tool=vscode#prerequisites-2)**

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

