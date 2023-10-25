# What?

A repo to store all my config/dot files. Also contains instructions and some reasoning.
Mostly inspired by [this playlist](https://www.youtube.com/watch?v=o4X8GU7CCSU&list=PLnu5gT9QrFg36OehOdECFvxFFeMHhb_07&pp=iAQB)

# Why?

So that I can setup my devices easily.

# How?

I used to use [regolith](https://regolith-linux.org/) based on [i3](https://i3wm.org/). Stopped using that when I shifted to Mac.

## MacOS setup

- Clean up dock. System Settings > Desktop and Dock > Disable "Show recent applications in dock".
- Fix spaces. System Settings > Desktop and Dock > Disable "Automatically rearrange spaces based on most recent use".
- Reconfigre caps lock to control. System Settings > Keyboard > Keyboard shortcuts > Modifier keys > Set Caps lock to control. _Might want to change single tap to escape and hold to control but that's more complicated._
- Install raycast. Set up ⌘Space to open raycast instead of Spotlight. _Don't really see any value here. Might skip this._
- Install [VSCode](https://code.visualstudio.com/).
- Install homebrew. \
  `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- Install [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH), [git](https://git-scm.com), [curl](https://curl.se), [wget](https://www.gnu.org/software/wget/), [fzf](https://github.com/junegunn/fzf), [ripgrep](https://github.com/BurntSushi/ripgrep), [exa](https://the.exa.website),  [bat](https://github.com/sharkdp/bat), [fd](https://github.com/sharkdp/fd), [z](https://github.com/rupa/z), and [bat-extras](https://github.com/eth-p/bat-extras). \
  `brew install git curl wget fzf ripgrep bat fd z bat-extras`
- Set zsh as default shell. \
  `chsh -s $(which zsh)`
- Clone this repo locally. \
  `git clone git@github.com:oddgr8/config.git`

## Terminal emulator

- Install [iterm2](https://iterm2.com/).
- Install [oh-my-zsh](https://ohmyz.sh/). \
  `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Install [powerlevel10k](https://github.com/romkatv/powerlevel10k). \
  `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`.
- Copy `.p10k.zsh` from this repo to `~/.p10k.zsh`
- Install the [Meslo Nerd font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)([Here](https://github.com/ronniedroid/getnf)'s a nicer way) and configure it for VSCode:\
  `"terminal.integrated.fontFamily": "MesloLGS NF"`
- Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc` and run `source ~/.zshrc`.
- Iterm2 > Settings > General > Preferences > Enable "Load preferences from custom URL or folder" > Point it to the iterm2 folder of this repo.
- Iterm2 > Settings > Profiles > Other Actions > Import JSON Profile > select the profile in iterm2 folder of this repo.
- Iterm2 > Settings > Profiles > Window > Change background image to Background.jpg from this repo.
- TODO: Add personal colortheme.
- Install zsh plugins:
  ```
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode
  git clone https://github.com/MefitHp/alias-maker.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-maker
  git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
  ```
- Copy `.zshrc` from this repo to `~/.zshrc`.
- Must-have zsh plugins: [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions), [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), and [zsh-vi-mode](https://github.com/jeffreytse/zsh-vi-mode).
- Considerable zsh plugins: [alias-maker](https://github.com/MefitHp/alias-maker), [alias-tips](https://github.com/djui/alias-tips), [sudo](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo).
- TODO: Add fzf to git, fuzzy autocomplete, etc.

## Tmux

- Install [tmux](https://github.com/tmux/tmux/wiki) \
  `brew install tmux`
- Copy `.tmux.conf` from this repo to `~/.tmux.conf`
- Install [TPM](https://github.com/tmux-plugins/tpm). \
  `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- Install plugins mentioned in `.tmux.conf` automatically by pressing `Ctrl+A I` inside tmux.
- Set Iterm2 font size to a divisor of screen height. This ensures there is no blank space under the status line. iTerm2 > Settings > Profiles > Text.

## LunarVim

- Install [LunarVim](https://www.lunarvim.org). Don't worry if some dependency installation fails. It will still work. \
  `LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)`
- Copy the config file from this repo to your lvim config. \
  `cp lvim/config.lua ~/.config/lvim/config.lua`
- Run `lvim`. It will automatically install and setup everything.

## Nvim

:warning: Not required anymore since we have moved to LunarVim now.

- Install [neovim](https://neovim.io/) \
  `brew install neovim`
- Copy the nvim folder to the config. _Note the TODOs in the nvim folder. Work on them when possible_ \
  `cp nvim ~/.config/`
- Run `nvim`. It will automatically install and setup everything. _Needs verification_
- _TODO: Consider coc instead of mason+mason-lspconfig. You can also see lunarvim coz it has pretty good defaults_:w
