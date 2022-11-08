# lumipixi's dotfiles
These are my dotfiles. They are managed via a bare repo. Thanks to @durdn for the [excellent guide](https://www.atlassian.com/git/tutorials/dotfiles)!

## Suggested packages
Zsh should be installed and set as the default shell. Oh My Zsh! is ideal.
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
**Other recommended software:**
```
kitty neovim slock dmenu ranger urlscan
rustup exa bat
```

## Setup
Run the install script to clone the bare repo to the $HOME/.cfg/. The script will automatically checkout the files. Reload the shell and enjoy!
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/lumipixi/dotfiles/main/scripts/dotfiles/install.sh)"
```
