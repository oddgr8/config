# What?

A repo to store all my config/dot files. Also contains instructions and some reasoning.
Mostly inspired by [this playlist](https://www.youtube.com/watch?v=o4X8GU7CCSU&list=PLnu5gT9QrFg36OehOdECFvxFFeMHhb_07&pp=iAQB)

# Why?

So that I can setup my devices easily.

# How?

I used to use [regolith](https://regolith-linux.org/) based on [i3](https://i3wm.org/). Stopped using that when I shifted to Mac.

## MacOS setup

- Clean up dock. System Settings > Desktop and Dock > Disable "Show recent applications in dock".
- Autohide dock. System Settings > Desktop and Dock > Enable "Automatically hida and show the Dock"
- Fix spaces. System Settings > Desktop and Dock > Disable "Automatically rearrange spaces based on most recent use".
- Reconfigre caps lock to control. System Settings > Keyboard > Keyboard shortcuts > Modifier keys > Set Caps lock to control. _Might want to change single tap to escape and hold to control but that's more complicated._
- Install raycast. Set up ⌘Space to open raycast instead of Spotlight. _Don't really see any value here. Might skip this._
- Install [VSCode](https://code.visualstudio.com/) and login to your github account if you want to save your settings.
- Install homebrew.
  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
- Install [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH), [tmux](https://github.com/tmux/tmux/wiki), [git](https://git-scm.com), [zsh](https://zsh.sourceforge.io), [make](https://www.gnu.org/software/make/manual/make.html), [rust](https://www.rust-lang.org), [pip](https://pypi.org/project/pip/) [curl](https://curl.se), [wget](https://www.gnu.org/software/wget/), [fzf](https://github.com/junegunn/fzf), [zoxide](https://github.com/ajeetdsouza/zoxide), [ripgrep](https://github.com/BurntSushi/ripgrep), [lsd](https://github.com/lsd-rs/lsd), [fd](https://github.com/sharkdp/fd), and [bat](https://github.com/sharkdp/bat), [bat-extras](https://github.com/eth-p/bat-extras).
  ```
  brew install git tmux zsh make rust curl wget fzf zoxide ripgrep lsd fd bat bat-extras
  ```
- Set zsh as default shell.
  ```
  chsh -s $(which zsh)
  ```
- Set up git log pretty.
  ```
  git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
  ```
- Clone this repo locally.
  ```
  git clone git@github.com:oddgr8/config.git
  ```
- Copy the content of `vscode/settings.json` into VSCode User Settings.json.

## Terminal emulator

- Install [iterm2](https://iterm2.com/).
- Install [oh-my-zsh](https://ohmyz.sh/) but don't let it change .zshrc. We will do that later.
  ```
  export KEEP_ZSHRC=yes
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```
- Install [powerlevel10k](https://github.com/romkatv/powerlevel10k).
  ```
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  ```
- Install the [Meslo Nerd font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)([Here](https://github.com/ronniedroid/getnf)'s a nicer way) and configure it for VSCode:\
  `"terminal.integrated.fontFamily": "MesloLGS NF"`
- Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc` and run `source ~/.zshrc`.
- Run `source .zshrc` to configure it.
- Iterm2 > Settings > General > Settings > Enable "Load preferences from custom URL or folder" > Point it to the iterm2 folder of this repo.
- Quit and restart iterm2. It should set everything up already assuming the absolute path is `/Users/onkardeshpande/config/iterm2`
- If that doesn't work, follow the next 3 steps:
- Iterm2 > Settings > Profiles > Other Actions > Import JSON Profile > select the profile in iterm2 folder of this repo and set it as default.
- Iterm2 > Settings > Profiles > Window > Change background image to Background.jpg from this repo.
- Iterm2 > Appearance > Theme > Select "Minimal"
- Iterm2 > "Make iTerm2 Default Term" and "Install Shell Integration"
- Install zsh plugins:
  ```
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
  git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode
  git clone https://github.com/MefitHp/alias-maker.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-maker
  git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
  git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
  ```
- Copy the following to the TOP of your .zshrc
  ```
  # Set up theme, oh-my-zsh, personal aliases, etc
  source $HOME/config/.zshrc
  ```

## Tmux

- Install [tmux](https://github.com/tmux/tmux/wiki)
  ```
  brew install tmux
  ```
- Create a symbolic so that local config points to the config from the repo.
  ```
  rm ~/.tmux.conf
  ln -s $HOME/config/.tmux.conf ~/.tmux.conf
  ```
- Install [TPM](https://github.com/tmux-plugins/tpm).
  ```
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ```
- Install plugins mentioned in `.tmux.conf` automatically by pressing `Ctrl+A I` inside tmux.
- Set Iterm2 font size to a divisor of screen height. This ensures there is no blank space under the status line. iTerm2 > Settings > Profiles > Text.
  
## LunarVim

- Go to [LunarVim](https://www.lunarvim.org). Check required [Neovim](https://neovim.io) version and install it.
- Make sure `which python` and `which pip` are working.
- Install [NVM](https://github.com/nvm-sh/nvm) and then run `nvm install node`.
- Install [LunarVim](https://www.lunarvim.org). Don't worry if some dependency installation fails. It will still work.
- Create a symbolic so that local config points to the config from the repo.
  ```
  rm ~/.config/lvim/config.lua
  ln -s $HOME/config/lvim/config.lua ~/.config/lvim/config.lua
  ```
- Run `lvim`. It will automatically install and setup everything.
