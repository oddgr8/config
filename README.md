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
- Install git, curl and wget. \
  `brew install git curl wget`
- Clone this repo locally. \
  `git clone git@github.com:oddgr8/config.git`

## Terminal emulator

This was written long after actually setting up the environment so in case you find anything missing or incorrect while running this, please update here.

- Install [iterm2](https://iterm2.com/).
- Install [oh-my-zsh](https://ohmyz.sh/). \
  `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Install [powerlevel10k](https://github.com/romkatv/powerlevel10k). \
  `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`.
- Copy `.p10k.zsh` from this repo to `~/.p10k.zsh`
- Install the [Meslo Nerd font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k) and configure it for VSCode: `"terminal.integrated.fontFamily": "MesloLGS NF"`
- Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc` and run `source ~/.zshrc`.
- TODO: Add personal colortheme.
- Add zsh plugins: [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions), [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting).
- _Not tried yet. Verification needed:_ Setup zsh web search, [infinite scrolling](https://curiouslychase.com/posts/setup-iterm2-infinite-scrollback/), persistent history and other plugins given [here](https://safjan.com/top-popular-zsh-plugins-on-github-2023/).
- Set background image for iterm2.

## Tmux

TODO

## Nvim

TODO
