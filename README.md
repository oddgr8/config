# What?

A repo to store all my config/dot files. Also contains instructions and some reasoning.
Mostly inspired by [this playlist](https://www.youtube.com/watch?v=o4X8GU7CCSU&list=PLnu5gT9QrFg36OehOdECFvxFFeMHhb_07&pp=iAQB)

# Why?

So that I can setup my devices easily.

# How?

I started with [regolith](https://regolith-linux.org/) based on [i3](https://i3wm.org/). Stopped using that when I shifted to Mac.

## MacOS setup

- System Settings > Desktop and Dock >
  - Disable "Show recent applications in dock"
  - Enable "Automatically hide and show the Dock"
  - Disable "Automatically rearrange spaces based on most recent use"
- System Settings > Keyboard > Keyboard shortcuts > Modifier keys > Set Caps lock to control. _TODO: Something like [this](https://youtu.be/XuQVbZ0wENE?feature=shared)_
- Install homebrew
  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
- Clone this repo locally in home folder
  ```
  git clone https://github.com/oddgr8/config.git
  ```

## Terminal emulator setup

- Install and run [iterm2](https://iterm2.com/)
- Iterm2 > Settings > General > Settings > Enable "Load preferences from custom URL or folder" > Point it to the iterm2 folder of this repo.
- Quit and restart iterm2. It should set everything up already assuming the absolute path is `/Users/onkardeshpande/config/iterm2`
- If that doesn't work:
  - Iterm2 > Settings > Profiles > Other Actions > Import JSON Profile > select the profile in iterm2 folder of this repo and set it as default.
  - Iterm2 > Settings > Profiles > Window > Change background image to Background.jpg from this repo.
  - Iterm2 > Appearance > Theme > Select "Minimal"
- Iterm2 > "Make iTerm2 Default Term" and "Install Shell Integration"


## Shell setup

- Install [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) if not already present
- Install [oh-my-zsh](https://ohmyz.sh/) but don't change your `.zshrc` file
  ```
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  cp .zshrc.pre-oh-my-zsh .zshrc
  rm .zshrc.pre-oh-my-zsh
  ```
- Install [tmux](https://github.com/tmux/tmux/wiki), [zsh](https://zsh.sourceforge.io), [make](https://www.gnu.org/software/make/manual/make.html), [pip](https://pypi.org/project/pip/) [curl](https://curl.se), [wget](https://www.gnu.org/software/wget/) and [zoxide](https://github.com/ajeetdsouza/zoxide)
  ```
  brew install tmux make curl wget zoxide # macos
  apt install build-essential tmux make curl wget zoxide # ubuntu
  ```
- Install [fzf](https://github.com/junegunn/fzf)
  ```
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
  ```
- Install [rust](https://www.rust-lang.org)
  ```
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  ```
- Install [lsd](https://github.com/lsd-rs/lsd), [ripgrep](https://github.com/BurntSushi/ripgrep) and [fd](https://github.com/sharkdp/fd)
  ```
  cargo install lsd ripgrep fd-find
  ```
- Set up git config. _NOTE: This sets git editor to lvim which may not yet be installed_
  ```
  echo "[include]\n\tpath = config/.gitconfig" >> .gitconfig
  ```
- Install [powerlevel10k](https://github.com/romkatv/powerlevel10k) and zsh plugins.
  ```
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
  git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode
  git clone https://github.com/MefitHp/alias-maker.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-maker
  git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
  git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
  ```
- Add powerlevel10k config
  ```
  rm -f ~/.p10k.zsh
  ln -s $HOME/config/.p10k.zsh ~/.p10k.zsh
  ```
- Copy the following to the TOP of your .zshrc
  ```
  # Set up theme, oh-my-zsh, personal aliases, etc
  source $HOME/config/.zshrc
  ```
- Run `source .zshrc`

## Tmux

- Install [tmux](https://github.com/tmux/tmux/wiki)
  ```
  brew install tmux
  ```
- Setup up tmux configuration
  ```
  rm -f ~/.tmux.conf
  ln -s $HOME/config/.tmux.conf ~/.tmux.conf
  ```
- Install [TPM](https://github.com/tmux-plugins/tpm)
  ```
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ```
- Install plugins mentioned in `.tmux.conf` automatically by pressing `Ctrl+A I` inside tmux
  
## LunarVim

- Go to [LunarVim](https://www.lunarvim.org). Check required [Neovim](https://neovim.io) version in the lunarvim install command and install it
- Make sure `which python` and `which pip` are working
- Install [NVM](https://github.com/nvm-sh/nvm) and then run `nvm install node`
- Install [LunarVim](https://www.lunarvim.org). Don't worry if some dependency installation fails. It will still work
- Create a symbolic so that local config points to the config from the repo
  ```
  rm -f ~/.config/lvim/config.lua
  ln -s $HOME/config/lvim/config.lua ~/.config/lvim/config.lua
  ```
- Run `lvim`. It will automatically install and setup everything
